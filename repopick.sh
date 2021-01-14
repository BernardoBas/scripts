#!/bin/bash

# ASB 2021-01

cd android && git fetch "https://github.com/LineageOS/android" refs/changes/65/300165/1 && git cherry-pick FETCH_HEAD && cd ..

cd frameworks && rm -rf minikin && cd .. && repo sync --force-sync frameworks/minikin && cd frameworks/minikin && git fetch "https://github.com/LineageOS/android_frameworks_minikin" refs/changes/81/300181/1 && git cherry-pick FETCH_HEAD && cd ../..

cd system && rm -rf security && cd .. && repo sync --force-sync system/security && cd system/security && git fetch "https://github.com/LineageOS/android_system_security" refs/changes/86/300186/1 && git cherry-pick FETCH_HEAD && cd ../..

repopick 300169  300168 300167 300166 300184 300185 300183 300182 300170 300171 300172 300173 300174 300175 300176 300177 300178 300179 300180 300251 300252 300774
