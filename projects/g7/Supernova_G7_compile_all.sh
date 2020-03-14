echo "################# START ###################"

now_start=$(date +"%T")
echo "Current time  start: $now_start"

cd trunk/source/Supernova/projects/
source ./buildsettings/build_Munich_220A_ROM_NAND_DVB_TEE_URSA9_NonNetflix.sh

make beko_all

echo "################# STOP ###################"

now_finito=$(date +"%T")
echo "Current time finito : $now_finito"
#if you want just run >>>> make beko
#make beko