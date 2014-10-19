#!/bin/bash

#Inizialize variables
top_patches="$(cd `dirname $0`; pwd)"
top_build="$(dirname $top_patches)"

echo -e "Deleting old repos"
rm -rf $top_build/build
rm -rf $top_build/device/samsung/janice
rm -rf $top_build/packages/apps/Settings
rm -rf $top_build/vendor/pa

echo -e "Repo sync"
cd $top_build
repo sync

repo="build"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_build.git kitkat
git cherry-pick e7e37aaa4c3545ea7b59efe7bfac44e48e6a8d1a
git cherry-pick 7b22bba3009d6b4ae34db645db290829bf887b61
git cherry-pick a3636ccc05645189236d035f5b73764f19a25dff

echo ""
echo ""

repo="device/samsung/janice"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_device_samsung_janice.git pa
git cherry-pick 9d048e654cedc98025c59f47cf0b24612b75dd92

echo ""
echo ""

repo="device/samsung/u8500-common"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_device_samsung_u8500-common.git pa
git cherry-pick d1ea13cc2bc5ed6976eb5df00e168e80b51a4f4f

echo ""
echo ""

repo="frameworks/av"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_frameworks_av.git kitkat
git cherry-pick c360847102cdaf5090ba8a2a82d29601b5f3096d
git cherry-pick 967ecc079e6a41285a4aa7dc924fa45be8325dbf

echo ""
echo ""

repo="frameworks/base"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_frameworks_base.git kitkat
git cherry-pick 8c5558637e3b2d8b8516ba7c84154e05bb9bf9b4
git cherry-pick 8ad9220c2ae4b8f49d4e71c461e7d1edf5d1fe9f

echo ""
echo ""

repo="frameworks/native"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_frameworks_native.git kitkat
git cherry-pick 87a8c8ad15129e648757e487c45beecc70b553da

echo ""
echo ""

repo="packages/apps/DeskClock"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_packages_apps_DeskClock.git kitkat
git cherry-pick f92e1c592b4580cb206f2c60312dcb94c0f2810b

echo ""
echo ""

repo="packages/apps/Settings"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_packages_apps_Settings.git kitkat
git cherry-pick 3c343576292b82507feaaed10ea10aa317d2ee40
git cherry-pick b484b6746abeca93c7e0601c9d24e3595dfdc25c
git cherry-pick 8186eb6e823cd52af8c5650a402e2ad4a46dcad6

echo ""
echo ""

repo="packages/services/Telephony"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_packages_services_Telephony.git kitkat
git cherry-pick d501828f2a9d16b05a46c124d1f83aeb5cf05ff5
git cherry-pick 3b0f24f8668ed8a1ab87e7e0e6bd071dac48ebd1

echo ""
echo ""

repo="system/core"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_system_core.git kitkat
git cherry-pick 4478c4a03f3195aa2fc4c634831651dfa65845b7
git cherry-pick 2ef56c91b0acc24ea009c41303446a661ecdb546

echo ""
echo ""

repo="system/vold"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_system_vold.git kitkat
git cherry-pick 61b66e643a1577c12abba880c4cf020d13cce741

echo ""
echo ""

repo="vendor/pa"
echo -e "Patching $repo .."
cd $top_build/$repo

git fetch https://github.com/t4n017/android_vendor_pa.git kitkat
git cherry-pick 46aba5834dac7201f2c5f5027f0046353ee813b5
