echo "################# START ###################"

now_start=$(date +"%T")
echo "Current time  start: $now_start"

#use add necessary path before compile... no necessary but... why not... 

export PATH=/home/toolchain/ToolChain/arm-2014.05/bin/:$PATH #for beko_all compile...

# only option is use MMC not use NAND in O2 project
cd trunk/source/Supernova/projects/
source board/macan/buildsettings/build_Macan_253A_ROM_NAND_DVB_MMAP1G_NONCONNECTED.sh

make beko_all

echo "################# STOP ###################"

now_finito=$(date +"%T")
echo "start time : $now_start"
echo "Current time finito : $now_finito"
#if you want just run >>>> make beko
#make beko
