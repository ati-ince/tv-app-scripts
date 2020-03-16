#export PATH="/tools/arm/arm-2012.09//bin/:/tools/arm_eabi-2011.03/bin:$PATH"

#first should have source the project
cd trunk/source/Supernova/projects/
source board/macan/buildsettings/build_Macan_253A_ROM_NAND_DVB_MMAP1G_NONCONNECTED.sh


cd ../../../..

cd trunk/source/MBoot/sboot
cp ./configs/macan/.config.macan.supernova.253a.rom_nand.32bit.kernel.tee .config
 
make menuconfig # -> open if you need and -> Exit and Save
make clean && make

# Get mboot.bin in /MBoot/sboot/out
# For update boot from service menu, use RomBoot.bin
