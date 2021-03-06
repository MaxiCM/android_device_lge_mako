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

# Board
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := mako
TARGET_BOARD_INFO_FILE := device/lge/mako/board-info.txt
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAL_STATIC_LIBRARIES := libdumpstate.mako

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
HAVE_ADRENO_SOURCE:= false

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_CACHEIMAGE_PARTITION_SIZE := 738197504 # 704 MByte
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=mako lpj=67677 user_debug=31
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000
TARGET_KERNEL_SOURCE := kernel/google/msm
TARGET_KERNEL_CONFIG := maxi_mako_defconfig

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := false
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/mako/bluetooth

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"

# Graphics
BOARD_EGL_CFG := device/lge/mako/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := false
EXTENDED_FONT_FOOTPRINT := true
MALLOC_IMPL := dlmalloc
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# GPS
TARGET_NO_RPC := true
TARGET_PROVIDES_GPS_LOC_API := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Camera
USE_DEVICE_SPECIFIC_CAMERA:= true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true
BOARD_USES_EXTRA_THERMAL_SENSOR := true
BOARD_USES_SECURE_SERVICES := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/mako/rootdir/fstab.mako
RECOVERY_FSTAB_VERSION := 2

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/mako

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Hardware tunables
BOARD_HARDWARE_CLASS := device/lge/mako/cmhw/

# CM PowerHAL
TARGET_USES_CM_POWERHAL := true

# Touch Boost
TARGET_MPDECISION_BOOST_SOCKET := /dev/socket/mpdecision/touchboost

# SELinux
BOARD_SEPOLICY_DIRS += \
       device/lge/mako/sepolicy

BOARD_SEPOLICY_UNION += \
       bluetooth_loader.te \
       bridge.te \
       camera.te \
       conn_init.te \
       device.te \
       domain.te \
       file.te \
       file_contexts \
       hostapd.te \
       kickstart.te \
       mediaserver.te \
       mpdecision.te \
       netmgrd.te \
       property.te \
       property_contexts \
       qmux.te \
       rild.te \
       rmt.te \
       sensors.te \
       surfaceflinger.te \
       system_server.te \
       tee.te \
       te_macros \
       thermald.te \
       ueventd.te

-include vendor/lge/mako/BoardConfigVendor.mk
