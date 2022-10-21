#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
   echo "Please use this bash script with root privilage"
   exit 1
fi

backup_files="/home/akgun/data /etc /boot /usr"

dest="/mnt/backup"

time=$(date +"%Y_%m_%d_%I_%M_%p")
hostname=$(HOSTNAME -s)
archive_file="${HOSTNAME}-${time}.tgz"


echo "We will back up ${backup_files} to ${dest}/${archive_file} "
date
echo

tar czf ${dest}/${archive_file} ${backup_files} 


echo
echo "Congrulations! Your Backup is ready"
date

ls -lh $dest

crontab -e

*/1 * * * * sudo /home/akgun/backup.sh

crontab -l


