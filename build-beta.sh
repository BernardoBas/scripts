#!/bin/bash
source scripts/sync.sh
make clean
export ALLOW_MISSING_DEPENDENCIES=true
rm -rf packages/apps/Updater/
brunch h872
brunch h870
# brunch h870ds
# brunch us997
# notify-send Android "Building process finished" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
source scripts/upload-beta.sh
