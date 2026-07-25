git clone git@github.com:DeterminationPeak/android_device_xiaomi_tanzanite.git device/xiaomi/tanzanite -b yaap-16.2
git clone git@github.com:CharaROMAndroid/android_device_xiaomi_tanzanite-kernel.git device/xiaomi/tanzanite-kernel
git clone https://codeberg.org/nathannxx/proprietary_vendor_xiaomi_tanzanite.git vendor/xiaomi/tanzanite
git clone https://git.hlcyn.org/halcyonlv/vendor_mediatek_ims.git vendor/mediatek/ims
git clone git@github.com:halcyonproject/hardware_mediatek.git hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
git clone git@github.com:halcyonproject/device_mediatek_sepolicy_vndr.git device/mediatek/sepolicy_vndr
git clone git@github.com:theTrueClover/hardware_xiaomi.git hardware/xiaomi
git clone git@github.com:theTrueClover/yaap-signing-keys.git vendor/yaap/signing/keys
cd external/wpa_supplicant_8
wget https://raw.githubusercontent.com/nathanzerogarage/patches/refs/heads/main/do_not_set_NL80211_WPA_VERSION_3.patch
git am do_not_set_NL80211_WPA_VERSION_3.patch
rm do_not_set_NL80211_WPA_VERSION_3.patch
cd ../..
