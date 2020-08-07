#!/bin/bash
source scripts/sync-lite.sh
rm -rf packages/apps/AudioFX
rm -rf packages/apps/Camera2/
rm -rf packages/apps/Contacts/
rm -rf packages/apps/DeskClock/
rm -rf packages/apps/Dialer/
# rm -rf packages/apps/DocumentsUI/
rm -rf packages/apps/Eleven/
rm -rf packages/apps/Email/
rm -rf packages/apps/Etar/
rm -rf packages/apps/ExactCalculator/
rm -rf packages/apps/Exchange/
rm -rf packages/apps/Gallery2/
rm -rf packages/apps/Jelly/
rm -rf packages/apps/Messaging/
rm -rf packages/apps/Snap/
rm -rf packages/apps/Updater/
make clean
# rm -rf out/target/product/h872/
# brunch lineage_h872-eng
brunch h872
# notify-send Android "Building process finished" -i /usr/share/icons/Moka/96x96/apps/android-studio.png
source scripts/upload-lite.sh
