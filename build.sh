#!/bin/bash
source scripts/sync.sh
make clean
brunch h872
brunch h870
brunch us997
# notify-send Android "Building process finished" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
source scripts/upload.sh
