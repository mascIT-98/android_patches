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

echo -e "Patching build.."
cd build
git fetch https://github.com/t4n017/android_build.git kitkat
git cherry-pick 4d22c4e62bf23ec5b10c5891dffd5232cb2190df
git cherry-pick 6fcc49f9b0978022a1fe56f422beef36bcc6c525
git cherry-pick a3636ccc05645189236d035f5b73764f19a25dff

echo -e "Patching vendor/pa.."
cd $top_build
cd vendor/pa
git fetch https://github.com/hastalafiesta-/android_vendor_pa.git kitkat
git cherry-pick 0c3769d0582f73785e7e3185afb3c8ebbdf24071
git cherry-pick 4a33942b3f50658282264a50e90df176a5d736ff

echo -e "Patching device/samsung/janice.."
cd $top_build
cd device/samsung/janice
git fetch https://github.com/t4n017/android_device_samsung_janice.git pa
git cherry-pick 9d048e654cedc98025c59f47cf0b24612b75dd92

echo -e "Patching device/samsung/u8500-common.."
cd $top_build
cd device/samsung/u8500-common
git fetch https://github.com/t4n017/android_device_samsung_u8500-common.git pa
git cherry-pick d1ea13cc2bc5ed6976eb5df00e168e80b51a4f4f


echo -e "Patching Settings.."
cd $top_build
cd packages/apps/Settings
git fetch https://github.com/t4n017/android_packages_apps_Settings.git kitkat
git cherry-pick aa50446b0c966412b627a9fbb3de2d58613507b7
git cherry-pick 300c80230c4746b09d6e2b2af7154f12e472432a
git cherry-pick 92dabcbe9898a59d4311550ee4bf1661058dea57

echo -e "Patching frameworks/av.."
cd $top_build
cd frameworks/av
git fetch https://github.com/t4n017/android_frameworks_av.git kitkat
git cherry-pick c360847102cdaf5090ba8a2a82d29601b5f3096d
git cherry-pick 967ecc079e6a41285a4aa7dc924fa45be8325dbf

echo -e "Patching frameworks/base.."
cd $top_build
cd frameworks/base
git fetch https://github.com/t4n017/android_frameworks_base.git kitkat
git cherry-pick a0fd584f462e4bd674a4d6a8b6d141759d0acc01
git cherry-pick f5694f470a5a3e35a0a5592d9cbbad3ba00077bf
git cherry-pick 26b41fa949b4710f81b9eb4d242142ba35e19144

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
