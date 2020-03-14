#first should have source the project
cd trunk/source/Supernova/projects/
source ./buildsettings/build_Manhattan_232A_ROM_EMMC_DVB_ursa_8v4o.sh

cd ../../../..

cd trunk/source/MBoot/sboot
cp configs/manhattan/.config.manhattan.supernova.232a.rom_emmc.32bit.kernel.tee_8v4o_Arcelik .config
#make menuconfig # -> open if you need and -> Exit and Save
make clean && make


