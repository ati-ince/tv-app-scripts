#cd trunk/source/Supernova/projects/
#source board/macan/buildsettings/build_Macan_253A_ROM_EMMC_DVB.sh

#make image_all 

cd trunk/source/Supernova/target
./build_sw_upgrade_image.sh


#and carry for usb
cp europe_dtv.macan/images/ubifs/O3_SWImage.bin ../../../Target_O3/image/
