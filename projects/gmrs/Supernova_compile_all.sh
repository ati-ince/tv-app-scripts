echo "################# START ###################"

now_start=$(date +"%T")
echo "Current time  start: $now_start"

cd trunk/source/Supernova/projects/
source ./buildsettings/build_Marlon_120B_ROM_NAND_DVB.sh

make beko_all

echo "################# STOP ###################"

now_finito=$(date +"%T")
echo "start time : $now_start"
echo "Current time finito : $now_finito"
#if you want just run >>>> make beko
#make beko
