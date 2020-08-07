#!/bin/bash

cd /mnt/backup/android/builds/lineage/h872/
rm *.*
cd /mnt/backup/android/los17/out/target/product/h872/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h872/
cd /mnt/backup/android/builds/lineage/h872/
rm lineage_h872-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lineageos-h872/Lineage\ 17.1/ <<< $'put *.*'

echo -e "\nAndroid builds completed and uploaded\n";
# notify-send Android "Builds uploaded" -i /usr/share/icons/Moka/96x96/apps/android-studio.png

cd /mnt/backup/android/los17
