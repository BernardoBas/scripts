#!/bin/bash

rm -rf vendor/lineage
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
git cherry-pick 5bc16b3a988865cd8ce94d433fa8b5c51842a191 9bf0707c3f60042c4833fd83cec6c5ac1da9cbc3
cd ../../

cd frameworks/base/
# git remote add fixes https://github.com/BernardoBas/android_frameworks_base.git
git fetch fixes
git cherry-pick a904a84ad485d8768c7a523ec380696d573c9a9e 5a02ae0abfb2a341055aecbb46fb6ce3b24070cf cb0d5c44a9bb07485dff896ed1ca0a0c5899920c
cd ../../

cd device/lge/h870/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h870.git
git fetch fingerprint
git cherry-pick d8c91efb1b7359f42c6aaa6aa8e3a274a064dd7c 5b5b2b8aaf167e6ccfc13573ecd27cb9ac5662a3 b4f54c2c368799193f176dffa4a3e765bb0ccf8d
cd ../../../

cd device/lge/h872/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_h872.git
git fetch fingerprint
git cherry-pick 197c25f7c0d87092f7cee70b70f3c5c5c88538c3 4c9f1e7311de29f5154309aeee6e58c2599d685e f67009da3902ba6b046ec9c8a800252eca325a5c
cd ../../../

cd device/lge/us997/
# git remote add fingerprint https://github.com/BernardoBas/android_device_lge_us997.git
git fetch fingerprint
git cherry-pick 7608922b20fbe18c424702172f64eef6054e7102 a5068f7dee20e64848ac6d42250437978804e020 ff0344212c680185cdbb44d46d279065cca8a857
cd ../../../

# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
