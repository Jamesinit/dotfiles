#!/bin/bash
#The script target is that collect all installed software for new machine install
#
#
#

cd '/home/vvw/my_config/apt'
installed_list=()
autoremove_list=()
echo ${logfile}
for logfile in /var/log/apt/history.log*; do
	installed_list+=$(grep -E 'apt(-get)? install' ${logfile} | sed 's/-y//g' | awk '{for(i=4;i<=NF;i++) print $i}')
	autoremove_list+=$(grep -E 'autoremove ' ${logfile} | sed 's/-y//g' | awk '{for(i=4;i<=NF;i++) print $i}')
	# echo $installed_list
	echo "=========="
	# echo ${autoremove_list}
done
echo "All installed nums by commdline:"
echo $installed_list | tee /dev/tty | wc -w
echo "All autoremoved nums by commdline:"
echo $autoremove_list | tee /dev/tty | wc -w
for b in ${autoremove_list[@]}; do
	installed_list=("${installed_list[@]/${b}/}")
done

echo "=========="
echo "Remove repeat nums:"
echo $installed_list >>installed_record.txt
echo $installed_list | tee /dev/tty | wc -w
sort installed_record.txt | uniq >uniq.txt && mv uniq.txt installed_record.txt
