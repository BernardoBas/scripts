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

repo sync --force-sync -j32 -q
source build/envsetup.sh
source scripts/repopick.sh

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
# BUILD FINGERPRINT
git cherry-pick 5aa98a2fa0ee28168f4151409327a6139fb653a0
cd ../../../

cd device/lge/h872/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h872.git
git fetch fingerprint
# BUILD FINGERPRINT
git cherry-pick 96505a8604a902c6563d6e7633849b94662f49a9
cd ../../../

cd device/lge/us997/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_us997.git
git fetch fingerprint
# BUILD FINGERPRINT
git cherry-pick 7d3662dc4c2e9c79b24a5d4e5970c5698b1c5135
cd ../../../

cd device/lge/msm8996-common/
# git remote add brightness https://github.com/BernardoBas/android_device_lge_msm8996-common.git
git fetch brightness
# git cherry-pick 182167280f089d6cd4f29707b36bbb37f20f5ee9
# ROUNDED CORNERS
git cherry-pick 5c490db56b5d2431bc21a35f865511a3ea86ca4a
# MIC LEVEL
git cherry-pick 9123565f56262e73dc6d613a0efc4bfb5867f5e6
cd ../../../

# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
