#!/bin/bash

cd /mnt/backup/android/builds/lineage/us997/
rm *.*
cd /mnt/backup/android/los18/out/target/product/us997/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/us997/
cd /mnt/backup/android/builds/lineage/us997/
rm lineage_us997-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/Beta/ <<< $'put *.*'

cd /mnt/backup/android/builds/lineage/h872/
rm *.*
cd /mnt/backup/android/los18/out/target/product/h872/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h872/
cd /mnt/backup/android/builds/lineage/h872/
rm lineage_h872-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/Beta/ <<< $'put *.*'

cd /mnt/backup/android/builds/lineage/h870/
rm *.*
cd /mnt/backup/android/los18/out/target/product/h870/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h870/
cd /mnt/backup/android/builds/lineage/h870/
rm lineage_h870-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/Beta/ <<< $'put *.*'

echo -e "\nAndroid builds completed and uploaded\n";
# notify-send Android "Builds uploaded" -i /usr/share/icons/Moka/96x96/apps/android-studio.png

cd /mnt/backup/android/los18
