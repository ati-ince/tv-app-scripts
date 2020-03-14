#first should have source the project
cd trunk/source/Supernova/projects/
source ./buildsettings/build_Marlon_120B_ROM_NAND_DVB.sh

cd ../../../..

cd trunk/source/MBoot/sboot
cp ./configs/marlon/.config.marlon.supernova.120b.rom.nand.str scripts/defconfig
#make menuconfig # -> open if you need and -> Exit and Save
make clean && make


