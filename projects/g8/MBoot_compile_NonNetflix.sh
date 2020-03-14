#first should have source the project
cd trunk/source/Supernova/projects/
source ./buildsettings/build_Munich_220A_ROM_NAND_DVB_TEE_URSA9_NonNetflix.sh

cd ../../../..

cd trunk/source/MBoot/sboot
cp ./configs/munich/.config.munich.supernova.220a.rom_nand.tee .config 
#make menuconfig # -> open if you need and -> Exit and Save
make clean && make


