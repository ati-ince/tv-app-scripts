cd trunk/source/MBoot/sboot

#carry to Boot image for usb
cp out/mboot.bin ../../../tools/MBOT-1106.0.1MUNICH/
cd ../../../tools/MBOT-1106.0.1MUNICH/

sh buildROMCodeBin.sh
mv RomBoot.bin G7_Boot.bin #rename 

cp G7_Boot.bin ../../../Target_G7/image/

cd ../../../Target_G7/image/
ls -la #le me everythings cool