git clone git@github.com:DeterminationPeak/android_device_xiaomi_tanzanite.git device/xiaomi/tanzanite -b circle-16.2
git clone git@github.com:CharaROMAndroid/android_device_xiaomi_tanzanite-kernel.git device/xiaomi/tanzanite-kernel
git clone https://codeberg.org/nathannxx/proprietary_vendor_xiaomi_tanzanite.git vendor/xiaomi/tanzanite
git clone git@github.com:halcyonproject/hardware_mediatek.git hardware/mediatek
git clone git@github.com:halcyonproject/device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr
git clone git@github.com:halcyonproject/hardware_xiaomi.git hardware/xiaomi
git clone git@github.com:theTrueClover/circle-signing-keys.git vendor/circle-priv/keys
git clone git@github.com:MillenniumOSS/android_device_millennium_common-kernel.git device/millennium/common-kernel
cd packages/apps/Aperture
wget https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/01-aperture-mtk-hfps-mode.patch
git am 01-aperture-mtk-hfps-mode.patch
rm 01-aperture-mtk-hfps-mode.patch
cd ../../..
cd external/wpa_supplicant_8
wget https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/do_not_set_NL80211_WPA_VERSION_3.patch
git am do_not_set_NL80211_WPA_VERSION_3.patch
rm do_not_set_NL80211_WPA_VERSION_3.patch
cd ../..
cd system/core
wget https://raw.githubusercontent.com/MillenniumOSS/patches/refs/heads/sixteen/system/core/0001-libfs_avb-Allow-LKs-patched-with-fenrir-to-boot-on-A.patch
git am 0001-libfs_avb-Allow-LKs-patched-with-fenrir-to-boot-on-A.patch
rm 0001-libfs_avb-Allow-LKs-patched-with-fenrir-to-boot-on-A.patch
wget https://raw.githubusercontent.com/MillenniumOSS/patches/refs/heads/sixteen/system/core/0002-fastbootd-Always-return-false-for-GetDeviceLockStatu.patch
git am 0002-fastbootd-Always-return-false-for-GetDeviceLockStatu.patch
rm 0002-fastbootd-Always-return-false-for-GetDeviceLockStatu.patch
cd ../..
cd build/soong
wget https://github.com/halcyonproject/build_soong/commit/592363152191a911961ded314a928c725c283a36.patch
git am 592363152191a911961ded314a928c725c283a36.patch
rm 592363152191a911961ded314a928c725c283a36.patch
wget https://github.com/halcyonproject/build_soong/commit/71f789d704424ee736393add39deb8d6d5bf8e10.patch
git am 71f789d704424ee736393add39deb8d6d5bf8e10.patch
rm 71f789d704424ee736393add39deb8d6d5bf8e10.patch
cd ../..
