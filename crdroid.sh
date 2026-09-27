git clone git@github.com:CinnaButterscotchOSS/android_device_xiaomi_tanzanite.git device/xiaomi/tanzanite
git clone git@github.com:CinnaButterscotchOSS/android_device_xiaomi_tanzanite-kernel.git device/xiaomi/tanzanite-kernel
git clone https://codeberg.org/nathannxx/proprietary_vendor_xiaomi_tanzanite.git vendor/xiaomi/tanzanite
git clone git@github.com:halcyonproject/hardware_mediatek.git hardware/mediatek
git clone git@github.com:halcyonproject/device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr
git clone git@github.com:halcyonproject/hardware_xiaomi.git hardware/xiaomi
git clone git@github.com:CinnaButterscotchOSS/lineage-signing-keys.git vendor/lineage-priv/keys
git clone git@github.com/MillenniumOSS/android_device_millennium_common-kernel device/millennium/common-kernel
cd build/soong
curl -S https://github.com/halcyonproject/build_soong/commit/592363152191a911961ded314a928c725c283a36.patch | git am
curl -S https://github.com/halcyonproject/build_soong/commit/71f789d704424ee736393add39deb8d6d5bf8e10.patch | git am
cd ../..
curl -S https://github.com/halcyonproject/system_core/commit/0aedfbfe8e06493e8884efa900ee2925467630f4.patch | git am
curl -S https://github.com/halcyonproject/system_core/commit/41b2e6a9cb7351faee20bd71ea703de303bd5dd0.patch | git am
cd ../..
cd packages/apps/Aperture
curl -S https://raw.githubusercontent.com/MillenniumOSS/patches/refs/heads/sixteen/packages/apps/Aperture/0001-Aperture-Enable-MediaTek-HFPS-Mode-for-60-FPS-video-.patch | git am
curl -S https://raw.githubusercontent.com/MillenniumOSS/patches/refs/heads/sixteen/packages/apps/Aperture/0002-Aperture-Enable-MediaTek-EIS-and-EIS-preview-mode-fo.patch | git am
cd ../../..
cd external/wpa_supplicant_8
curl -s https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/do_not_set_NL80211_WPA_VERSION_3.patch | git am
cd ../..
echo "You see a light no one else can see, shining."
echo "By second nature, you reach out and.."
echo "Finished cloning repos and patching!"
