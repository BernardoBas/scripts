#!/bin/bash
source scripts/sync.sh
make clean
# brunch lineage_h830-eng
brunch h830
# notify-send Android "Building process finished" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
source scripts/upload.sh
