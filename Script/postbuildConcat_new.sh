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

echo "bin files path seleected:"
BinDirM7=$projectdir"/leds/CM7/Debug"
BinDirM4=$projectdir"/leds/CM4/Debug"
echo $BinDirM7
echo $BinDirM4


execname=UserApp
echo "choosen elf"
elfM7=$projectdir/leds/CM7/Debug/leds_CM7.elf
elfM4=$projectdir/leds/CM4/Debug/leds_CM4.elf
echo $elfM7
echo $elfM4

echo "choosen bin"
binM7=$BinDirM7/leds_CM7.bin
binM4=$BinDirM4/leds_CM4.bin
echo $binM7
echo $binM4

 
fwid=1
version=1
echo "firmware id: $fwid, version: $version"

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

echo "Padding M4 binary to be multiple of 16 bytes"
# ----Padding M4 binary to be multiple of 16 bytes----
BIN_M4=./leds/CM4/Debug/leds_CM4.bin

SIZE=$(stat -c%s "$BIN_M4")
REM=$((SIZE % 16))

if [ $REM -ne 0 ]; then
    PAD=$((16 - REM))
    echo "Padding M4 BIN with $PAD bytes"
    dd if=/dev/zero bs=1 count=$PAD >> "$BIN_M4"
fi
# ----END Padding M4 binary to be multiple of 16 bytes----

echo "Padding M4 binary to be multiple of 16 bytes"
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
