#!/bin/bash

#Inizialize variables
top_patches="$(cd `dirname $0`; pwd)"
top_build="$(dirname $top_patches)"

echo -e "Deleting old repos"
rm -rf $top_build/build
rm -rf $top_build/device/samsung/janice
rm -rf $top_build/packages/services/Telephony
rm -rf $top_build/packages/apps/Settings

echo -e "Repo sync"
cd $top_build
repo sync

echo -e "Patching build.."
cd build
git fetch https://github.com/hastalafiesta-/android_build.git kitkat
git cherry-pick 3c71484c3efa476e66c05c7fe953d0948d779083
git cherry-pick 84a1d1672995a51bd7c6130b0cf7e6e6e2f5511d

echo -e "Patching device/samsung/janice.."
cd $top_build
cd device/samsung/janice
git fetch https://github.com/hastalafiesta-/android_device_samsung_janice.git pa
git cherry-pick 9d048e654cedc98025c59f47cf0b24612b75dd92

echo -e "Patching device/samsung/u8500-common.."
cd $top_build
cd device/samsung/u8500-common
git fetch https://github.com/hastalafiesta-/android_device_samsung_u8500-common.git pa
git cherry-pick 05897d17faa6af5ce0ebc50b64670f1b84c9eb46
git cherry-pick d1ea13cc2bc5ed6976eb5df00e168e80b51a4f4f

echo -e "Patching telephony.."
cd $top_build
cd packages/services/Telephony
git fetch https://github.com/hastalafiesta-/android_packages_services_Telephony.git kitkat
git cherry-pick 247248d955cff22a968c0f0133a47da9381e55fd

echo -e "Patching Settings.."
cd $top_build
cd packages/apps/Settings
git fetch https://github.com/hastalafiesta-/android_packages_apps_Settings.git kitkat
git cherry-pick 496cb6d27eb9e0662f78f559fc802f13bc536c9e

echo -e "Patching frameworks/av.."
cd $top_build
cd frameworks/av
git fetch https://github.com/t4n017/android_frameworks_av.git kitkat
git cherry-pick 14ff212688a8407d9a27b7be7638a25a3e2958a9

echo -e "Patching frameworks/base.."
cd $top_build
cd frameworks/base
git fetch https://github.com/t4n017/android_frameworks_base.git kitkat
git cherry-pick 8c5558637e3b2d8b8516ba7c84154e05bb9bf9b4
git cherry-pick 8ad9220c2ae4b8f49d4e71c461e7d1edf5d1fe9f

echo -e "Patching frameworks/native.."
cd $top_build
cd frameworks/native
git fetch https://github.com/t4n017/android_frameworks_native.git kitkat
git cherry-pick 87a8c8ad15129e648757e487c45beecc70b553da

echo -e "Patching packages/apps/DeskClock.."
cd $top_build
cd packages/apps/DeskClock
git fetch https://github.com/t4n017/android_packages_apps_DeskClock.git kitkat
git cherry-pick f92e1c592b4580cb206f2c60312dcb94c0f2810b

echo -e "Patching system/core.."
cd $top_build
cd system/core
git fetch https://github.com/t4n017/android_system_core.git kitkat
git cherry-pick 4478c4a03f3195aa2fc4c634831651dfa65845b7
git cherry-pick 2ef56c91b0acc24ea009c41303446a661ecdb546

echo -e "Patching system/vold.."
cd $top_build
cd system/vold
git fetch https://github.com/t4n017/android_system_vold.git kitkat
git cherry-pick 61b66e643a1577c12abba880c4cf020d13cce741
