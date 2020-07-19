#!/bin/bash

cd /mnt/backup/android/builds/lineage/us997/
rm *.*
cd /mnt/backup/android/los17/out/target/product/us997/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/us997/
cd /mnt/backup/android/builds/lineage/us997/
rm lineage_us997-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/LineageOS\ 17.1/US997/ <<< $'put *.*'

cd /mnt/backup/android/builds/lineage/h872/
rm *.*
cd /mnt/backup/android/los17/out/target/product/h872/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h872/
cd /mnt/backup/android/builds/lineage/h872/
rm lineage_h872-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/LineageOS\ 17.1/H872/ <<< $'put *.*'

cd /mnt/backup/android/builds/lineage/h870ds/
rm *.*
cd /mnt/backup/android/los17/out/target/product/h870ds/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h870ds/
cd /mnt/backup/android/builds/lineage/h870ds/
rm lineage_h870ds-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/LineageOS\ 17.1/H870DS/ <<< $'put *.*'

cd /mnt/backup/android/builds/lineage/h870/
rm *.*
cd /mnt/backup/android/los17/out/target/product/h870/
mv *.zip *.md5sum /mnt/backup/android/builds/lineage/h870/
cd /mnt/backup/android/builds/lineage/h870/
rm lineage_h870-ota*.zip *.md5sum
sftp bernardobas@frs.sourceforge.net:/home/pfs/project/lg-g6/LineageOS\ 17.1/H870/ <<< $'put *.*'

echo -e "\nAndroid builds completed and uploaded\n";
notify-send Android "Builds uploaded" -i /usr/share/icons/Moka/96x96/apps/android-studio.png

cd /mnt/backup/android/los17
