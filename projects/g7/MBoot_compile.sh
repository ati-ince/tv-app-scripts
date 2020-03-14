cd trunk/source/MBoot/sboot
cp ./configs/munich/.config.munich.supernova.220a.rom_nand.tee .config 
#make menuconfig # -> open if you need and -> Exit and Save
make clean && make
