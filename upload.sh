#!/bin/bash

cd /mnt/backup/android/builds/lineage/h830/
rm *.*
cd /mnt/backup/android/los15/out/target/product/h830/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h830/
cd /mnt/backup/android/builds/lineage/h830/
rm lineage_h830-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g5/LineageOS\ 15.1/H830/ <<< $'put *.*'

echo -e "\nAndroid builds completed and uploaded\n";
# notify-send Android "Builds uploaded" -i /usr/share/icons/Moka/96x96/apps/android-studio.png

cd /mnt/backup/android/los15
