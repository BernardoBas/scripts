#!/bin/bash

rm -rf vendor/lineage/
rm -rf vendor/lge/
rm -rf device/lge/msm8996-common/
rm -rf kernel/lge/msm8996/
rm -rf frameworks/base/
rm -rf device/lge/h870/
rm -rf device/lge/h870ds/
rm -rf device/lge/h872/
rm -rf device/lge/us997/

repo sync --force-sync -j32
source build/envsetup.sh
source scripts/repopick.sh

cd vendor/lineage/
# git remote add customizations https://github.com/BernardoBas/android_vendor_lineage.git
git fetch customizations
# NIGHTLY AND BOOTANIMATION
git cherry-pick 5bc16b3a988865cd8ce94d433fa8b5c51842a191 9bf0707c3f60042c4833fd83cec6c5ac1da9cbc3
cd ../../

cd frameworks/base/
# git remote add fixes https://github.com/BernardoBas/android_frameworks_base.git
git fetch fixes
# CAM FIXES
git cherry-pick a904a84ad485d8768c7a523ec380696d573c9a9e 5a02ae0abfb2a341055aecbb46fb6ce3b24070cf
# TWILIGHT
git cherry-pick 2c9baf509fef40586cc07a8b3aed91bb3cc741b3
cd ../../

cd device/lge/h870/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h870.git
git fetch fingerprint
# MISSING DEPENDENCIES
git cherry-pick 8d5acaa7181b47827613f57f82c8ad0e3c78ef8c
# BUILD FINGERPRINT
git cherry-pick 049d4d9ca7009a88eab88e26a34d146f8eb3438c
cd ../../../

cd device/lge/h872/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h872.git
git fetch fingerprint
# MISSING DEPENDENCIES
git cherry-pick 813ef7017839b10a2678ee414bbe791900aa0c16
# BUILD FINGERPRINT
git cherry-pick bc82ebec5caaef9fbf4689d5de1717b40085afdb
cd ../../../

cd device/lge/us997/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_us997.git
git fetch fingerprint
# MISSING DEPENDENCIES
git cherry-pick 7d348c0004014ea52f777cf8ab2a25114c830605
# BUILD FINGERPRINT
git cherry-pick 003f074e6472f59f780e93973d617fc4ee7c470d
cd ../../../

cd device/lge/msm8996-common/
# git remote add brightness https://github.com/BernardoBas/android_device_lge_msm8996-common.git
git fetch brightness
git cherry-pick 182167280f089d6cd4f29707b36bbb37f20f5ee9
cd ../../../

# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
