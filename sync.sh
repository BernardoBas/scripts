#!/bin/bash

rm -rf vendor/lineage

repo sync --force-sync -j32 -q
source build/envsetup.sh
source scripts/repopick.sh

sed -i 's/LINEAGE_BUILDTYPE := UNOFFICIAL/LINEAGE_BUILDTYPE := nightly/g' vendor/lineage/config/common.mk

# notify-send Android "Source code updated" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
