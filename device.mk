#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL mako devices, and
# are also specific to mako devices
#
# Everything in this directory will become public

# Overlay
DEVICE_PACKAGE_OVERLAYS := device/lge/mako/overlay

# This device is xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Wi-Fi
PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd_default.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_COPY_FILES += \
    device/lge/mako/configs/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/mako/configs/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/mako/configs/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# http://b/15193147
# Todo (danalbert): Remove this once stlport is dead and gone.
PRODUCT_PACKAGES +=  libstlport

# Media
PRODUCT_COPY_FILES += \
    device/lge/mako/configs/thermald-mako.conf:system/etc/thermald.conf \
    device/lge/mako/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/mako/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/mako/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/mako/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# Init
PRODUCT_COPY_FILES += \
    device/lge/mako/rootdir/init.mako.rc:root/init.mako.rc \
    device/lge/mako/rootdir/init.mako.usb.rc:root/init.mako.usb.rc \
    device/lge/mako/rootdir/ueventd.mako.rc:root/ueventd.mako.rc \
    device/lge/mako/rootdir/fstab.mako:root/fstab.mako \
    device/lge/mako/rootdir/init.mako.wifi.sh:system/bin/init.mako.wifi.sh \
    device/lge/mako/rootdir/init.mako.bt.sh:system/bin/init.mako.bt.sh

# Keys
PRODUCT_PACKAGES += \
    keystore.msm8960

PRODUCT_COPY_FILES += \
    device/lge/mako/configs/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
    device/lge/mako/configs/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/mako/configs/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    device/lge/mako/configs/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
    device/lge/mako/configs/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
    device/lge/mako/configs/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
    device/lge/mako/configs/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
    device/lge/mako/configs/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Sensors
PRODUCT_COPY_FILES += \
    device/lge/mako/configs/touch_dev.idc:system/usr/idc/touch_dev.idc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true \
    ro.qualcomm.sensors.smd=true

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    device/lge/mako/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

# OTA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.manifest=http://maxicm.com/mako/ota.xml

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608 \
    debug.egl.recordable.rgba8888=1

# Density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
    device/lge/mako/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/mako/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic.type=digital \
    persist.audio.dualmic.config=endfire \
    persist.audio.fluence.voicecall=true \
    persist.audio.handset.mic=dmic \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false \
    media.aac_51_output_enabled=true \

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0 \
    telephony.lteOnCdmaDevice=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    e2fsck

# Hardware
PRODUCT_PACKAGES += \
    lights.mako \
    power.mako \
    libgenlock \
    liboverlay \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

# HCI
PRODUCT_PACKAGES += \
    hci_qcomm_init

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Camera && OMX
PRODUCT_PACKAGES += \
    camera.mako \
    camera.msm8960 \
    libmmcamera_interface2 \
    libmmcamera_interface \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert \

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_ds_api \
    libloc_core \
    libizat_core \
    libgeofence \
    libgps.utils \
    gps.msm8960 \
    flp.msm8960

PRODUCT_COPY_FILES += \
    device/lge/mako/configs/gps.conf:system/etc/gps.conf

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Misc Packages
PRODUCT_PACKAGES += \
    bdAddrLoader \
    libwfcu \
    conn_init

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable=true
PRODUCT_CHARACTERISTICS := nosdcard
