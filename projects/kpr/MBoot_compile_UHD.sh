#first should have source the project
cd trunk/source/Supernova/projects/
source ./buildsettings/build_Monaco_205A_ROM_EMMC_DVB_4K2K_TEE_Arcelik_3MIU_8v4o.sh

cd ../../../..

cd trunk/source/MBoot/sboot
cp configs/monaco/.config.monaco.supernova.205a.rom_emmc_3MIU_8v4o.security.tee .config
#make menuconfig # -> open if you need and -> Exit and Save
make clean && make


