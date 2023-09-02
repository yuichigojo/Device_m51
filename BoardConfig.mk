#
# Copyright (C) 2023 The LineageOS Project
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

# rules
BOARD_VENDOR := samsung
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Path
DEVICE_PATH := device/samsung/m51

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
AUDIOSERVER_MULTILIB := 32

AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := m51

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_USES_COMMON_BLUETOOTH_HAL := true

# Board
BOARD_NAME := sm7150

# GPU
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_m51
TARGET_RECOVERY_DEVICE_MODULES := libinit_m51

# Camera
USE_CAMERA_STUB := false
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# CnE
BOARD_USES_QCNE := true

# Dexpreopt
BOARD_USES_SYSTEM_OTHER_ODEX := true

# DPM
BOARD_USES_DPM := true

# Display
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_DISABLED_UBWC := true

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# GPS
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true
USE_DEVICE_SPECIFIC_GPS := true

# HIDL
DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/configs/manifest.xml

DEVICE_MATRIX_FILE := \
    $(DEVICE_PATH)/configs/compatibility_matrix.xml

# Kernel config
TARGET_KERNEL_SOURCE        := kernel/samsung/m51
TARGET_KERNEL_CONFIG        := m51_defconfig
TARGET_KERNEL_ARCH          := arm64
TARGET_KERNEL_HEADER_ARCH   := arm64
TARGET_LINUX_KERNEL_VERSION := 4.14

# Kernel flags
BOARD_KERNEL_CMDLINE += console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 printk.devkmsg=on firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_BOOTIMG_HEADER_VERSION := 2

BOARD_KERNEL_BASE            := 0x00000000
BOARD_KERNEL_PAGESIZE        := 4096
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_KERNEL_OFFSET          := 0x00008000
BOARD_KERNEL_TAGS_OFFSET     := 0x01e00000
BOARD_KERNEL_IMAGE_NAME      := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO  := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Kernel: mkbootimgs args
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)

# Keymaster
TARGET_KEYMASTER_VARIANT := samsung

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4

BOARD_USES_METADATA_PARTITION        := true
TARGET_USERIMAGES_USE_F2FS           := true
TARGET_USERIMAGES_USE_EXT4           := true

# Partition sizes, obtained with blockdev --getsize64
BOARD_DTBOIMG_PARTITION_SIZE       := 10485760
BOARD_BOOTIMAGE_PARTITION_SIZE     := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE    := 419430400

# Super partition sizes, obtained with fdisk -l /dev/block/dm-[0,1,2,3]
BOARD_SUPER_PARTITION_SIZE                      := 8053063680
BOARD_SUPER_PARTITION_GROUPS                    := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE           := 8048869376
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE       := 3000000000
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE       := 400000000
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE      := 500000000
BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE     	  := 50000000
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT             := -1
BOARD_VENDORIMAGE_EXTFS_INODE_COUNT             := -1
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT            := -1
BOARD_ODMIMAGE_EXTFS_INODE_COUNT           	  := -1

BOARD_FLASH_BLOCK_SIZE := 131072

# Out dirs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext

# Platform
BOARD_USES_QCOM_HARDWARE := true
QCOM_BOARD_PLATFORMS += sm6150
TARGET_BOARD_PLATFORM := sm6150

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/configs/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/vendor.prop

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_MKE2FS := true
BOARD_USES_FULL_RECOVERY_IMAGE := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/vendor/etc/fstab.default

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# RIL
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true
SIM_COUNT := 2

# Rootfs
BOARD_ROOT_EXTRA_FOLDERS := \
    efs \
    metadata

TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/configs/config.fs

# SEPolicy
TARGET_SEPOLICY_DIR := msmsteppe
include device/qcom/sepolicy_vndr/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public

# Security Patch Level
VENDOR_SECURITY_PATCH := 2023-05-01

# Treble
BOARD_VNDK_VERSION := current

# USB
TARGET_USES_USB_GADGET_HAL := true

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := $(BOARD_HOSTAPD_DRIVER)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := $(BOARD_HOSTAPD_PRIVATE_LIB)
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := $(HOSTAPD_VERSION)

# Get non-open-source specific aspects
include vendor/samsung/m51/BoardConfigVendor.mk
