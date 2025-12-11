#!/bin/bash - 
#Post build for SECBOOT_ECCDSA_WITH_AES128_CBC_SHA256
# arg1 is the build directory
# arg2 is the elf file path+name
# arg3 is the bin file path+name
# arg4 is the firmware Id (1/2/3)
# arg5 is the version
# arg6 when present forces "bigelf" generation
#projectdir=$1
# set -x  
SCRIPT=$(readlink -f $0)
project_dir=`dirname $SCRIPT`
cd $project_dir/..
pwd
projectdir=.

PATH=$PATH:/usr/bin

BinDirM7=$projectdir"/1_Image_UserApp/Binary"
BinDirM4=$projectdir"/1_Images_UserAppM4/Binary"

FileNameM7=UserApp
FileNameM4=UserAppM4

execname=UserApp
elfM7=$projectdir/1_Image_UserApp/STM32CubeIDE/Debug/$FileNameM7.elf
elfM4=$projectdir/1_Images_UserAppM4/STM32CubeIDE/Debug/$FileNameM4.elf

binM7=$BinDirM7/$FileNameM7.bin
binM4=$BinDirM4/$FileNameM4.bin

fwid=1
version=1

SecureEngine=${project_dir}/../1_Image_SECoreBin

userAppBinary=$projectdir"/Binary"

binConcat=$userAppBinary"/"concat.bin

sfu=$userAppBinary"/"$execname".sfu"
sfb=$userAppBinary"/"$execname".sfb"
sign=$userAppBinary"/"$execname".sign"
headerbin=$userAppBinary"/"$execname"sfuh.bin"
bigbinary=$userAppBinary"/SBSFU_"$execname".bin"

iv=$SecureEngine"/Binary/iv.bin"
magic="SFU"$fwid
oemkey=$SecureEngine"/Binary/OEM_KEY_COMPANY"$fwid"_key_AES_CBC.bin"
ecckey=$SecureEngine"/Binary/ECCKEY"$fwid".txt"


offset=1024
alignment=32
# current_directory=`pwd`
# cd "$SecureEngine/../../"
# SecureDir=`pwd`
#cd "$current_directory"
sbsfuelf="$projectdir/1_Image_SBSFU/STM32CubeIDE/Debug/SBSFU.elf"
sbsfubin="$projectdir/1_Image_SBSFU/Binary/SBSFU.bin"

current_directory=`pwd`
cd "../../../../Middlewares/ST/STM32_Secure_Engine/Utilities/KeysAndImages"
basedir=`pwd`
cd "$current_directory"
# test if window executable usable
#prepareimage=$basedir"/win/prepareimage/prepareimage.exe"
prepareimage=$basedir"/win/prepareimage/prepareimage.not"
uname | grep -i -e windows -e mingw > /dev/null 2>&1

if [ $? -eq 0 ] && [   -e "$prepareimage" ]; then
  echo "prepareimage with windows executable"
  export PATH=$basedir"\win\prepareimage":$PATH > /dev/null 2>&1
  cmd=""
  prepareimage="prepareimage.exe"
else
  # line for python
  echo "prepareimage with python script"
  prepareimage=$basedir/prepareimage.py
  cmd="python"
fi

echo "$cmd $prepareimage" >> $1/output.txt
# Make sure we have a Binary sub-folder in UserApp folder
if [ ! -e $userAppBinary ]; then
mkdir $userAppBinary
fi

# Concatenation of M7 and M4 binaries
# -v 0 -b "$headerbin"@"$header";"$bin"@"$offset_bin" "$header_userapp

command=$cmd" "$prepareimage" mergev2 -b "$binM7"@"0x400";"$binM4"@"0xe0000" "$binConcat
$command
# > "$projectdir"/output.txt
ret=$?
if [ $ret -eq 0 ]; then
    command=$cmd" "$prepareimage" enc -k "$oemkey" -i "$iv" "$binConcat" "$sfu
    $command >> "$projectdir"/output.txt
    ret=$?
    if [ $ret -eq 0 ]; then 
      command=$cmd" "$prepareimage" sha256 "$binConcat" "$sign
      $command >> $projectdir"/output.txt"
      ret=$?
      if [ $ret -eq 0 ]; then 
        command=$cmd" "$prepareimage" pack -m "$magic" -k "$ecckey" -r 28 -v "$version" -i "$iv" -f "$sfu" -t "$sign" "$sfb" -o "$offset
        $command >> $projectdir"/output.txt"
        ret=$?
        if [ $ret -eq 0 ]; then
          command=$cmd" "$prepareimage" header -m "$magic" -k  "$ecckey" -r 28 -v "$version"  -i "$iv" -f "$sfu" -t "$sign" -o "$offset" "$headerbin
          $command >> $projectdir"/output.txt"
          ret=$?
          if [ $ret -eq 0 ]; then
            command=$cmd" "$prepareimage" mergev2  -b "$sbsfubin"@"0x0";"$headerbin"@"0x20000";"$binConcat"@"0x20400" "$bigbinary
            $command >> $projectdir"/output.txt"
            ret=$?
          fi
        fi
      fi
    fi
fi

if [ $ret -eq 0 ]; then
  rm $sign
  rm $sfu
  rm $headerbin
  rm $userAppBinary/*.baseadd
  rm $binConcat
  if [ -e "$ref_userapp" ]; then
    rm $partialbin
    rm $partialsfu
    rm $partialsign
    rm $partialoffset
  fi  
  exit 0
else 
  echo "$command : failed" >> $projectdir"/output.txt"
  if [ -e  "$elf" ]; then
    rm  $elf
  fi
  if [ -e "$elfbackup" ]; then 
    rm  $elfbackup
  fi
  echo $command : failed
  read -n 1 -s
  exit 1
fi
