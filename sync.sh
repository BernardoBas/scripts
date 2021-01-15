#!/bin/bash

rm -rf vendor/lineage/
rm -rf vendor/lge/
rm -rf frameworks/base/
rm -rf kernel/lge/msm8996/
rm -rf device/lge/msm8996-common/
rm -rf device/lge/h870/
rm -rf device/lge/h870ds/
rm -rf device/lge/h872/
rm -rf device/lge/us997/

repo sync --force-sync -j32 -q
source build/envsetup.sh
source scripts/repopick.sh

cd device/lge/h870/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h870.git
git fetch fingerprint
# BUILD FINGERPRINT
git cherry-pick 2ab1d63493f68235dc8c65929f5be63dbd884d76
cd ../../../

cd device/lge/h872/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h872.git
git fetch fingerprint
# BUILD FINGERPRINT
git cherry-pick fbbddc255e02956918cdd03430b8bf065a9f9821
cd ../../../

cd device/lge/us997/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_us997.git
git fetch fingerprint
# BUILD FINGERPRINT
git cherry-pick 6db634cd1ed8265fa4a71411e8b3ddf8e427bf9b
cd ../../../

cd frameworks/base/
# git remote add camera https://github.com/BernardoBas/android_frameworks_base.git
git fetch camera
# CAM FIXES
git cherry-pick ae63d669a09fd6aa329c52f12915b34a8d372d68 382163573c199308ebc8d3706e4b9405a3455d05
cd ../../

# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
