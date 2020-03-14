echo "################# START ###################"

now_start=$(date +"%T")
echo "Current time  start: $now_start"

cd trunk/source/Supernova/projects/
source ./buildsettings/build_Manhattan_232A_ROM_EMMC_DVB_ursa_8v4o.sh

make beko_all

echo "################# STOP ###################"

now_finito=$(date +"%T")
echo "start time : $now_start"
echo "Current time finito : $now_finito"
#if you want just run >>>> make beko
#make beko
