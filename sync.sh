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

cd frameworks/base/
# git remote add fixes https://github.com/BernardoBas/android_frameworks_base.git
git fetch fixes
git cherry-pick a904a84ad485d8768c7a523ec380696d573c9a9e 5a02ae0abfb2a341055aecbb46fb6ce3b24070cf cb0d5c44a9bb07485dff896ed1ca0a0c5899920c
cd ../../

cd device/lge/h870/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h870.git
git fetch fingerprint
git cherry-pick d8c91efb1b7359f42c6aaa6aa8e3a274a064dd7c b4f54c2c368799193f176dffa4a3e765bb0ccf8d
cd ../../../

cd device/lge/h872/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h872.git
git fetch fingerprint
git cherry-pick 197c25f7c0d87092f7cee70b70f3c5c5c88538c3 f67009da3902ba6b046ec9c8a800252eca325a5c
cd ../../../

cd device/lge/us997/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_us997.git
git fetch fingerprint
git cherry-pick 7608922b20fbe18c424702172f64eef6054e7102 ff0344212c680185cdbb44d46d279065cca8a857
cd ../../../

# cd device/lge/msm8996-common/
# git remote add brightness https://github.com/BernardoBas/android_device_lge_msm8996-common.git
# git fetch brightness
# USE OLD AUDIO BLOBS
# git cherry-pick 99b446a55af42fd300d70f05b04bb9b0958d98f1
# cd ../../../

# USE OLD AUDIO BLOBS
# cd vendor/lge/
# git remote add audio https://github.com/BernardoBas/proprietary_vendor_lge.git
# git fetch audio
# git cherry-pick 68aae46edf5f58a3be7469e7fc2e2e4dfcfed3f5
# cd ../../


# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
