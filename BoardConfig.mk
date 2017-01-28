#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#


# Common specific options in device_x5.mk
-include device/lge/msm8226-common/BoardConfigCommon.mk

# Vendor Init
TARGET_INIT_VENDOR_LIB := libinit_msm
LIBINIT_USE_MSM_DEFAULT := true
TARGET_OTA_ASSERT_DEVICE := x5
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/x5

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := x5

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/lge/x5/mkbootimg.mk
TARGET_KERNEL_CONFIG := x5_cyanogenmod_defconfig
TARGET_REQUIRES_BUMP := true

# Kernel image
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000

BOARD_HAS_NFC := true
BOARD_NFC_CHIPSET := pn544
BOARD_NFC_DEVICE := "/dev/pn544"

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# RIL
#BOARD_RIL_CLASS += ../../../device/lge/x5/ril/
#TARGET_RELEASE_CPPFLAGS += -DNEEDS_LGE_RIL_SYMBOLS
BOARD_GLOBAL_CFLAGS += -DUSE_RIL_VERSION_10
BOARD_GLOBAL_CPPFLAGS += -DUSE_RIL_VERSION_10
TARGET_RIL_VARIANT := caf


# Filesystem,
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 23068672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE    := 884000000
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432

BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# TWRP Recovery
RECOVERY_VARIANT := twrp
#TW_USE_TOOLBOX := true
#TARGET_RECOVERY_FSTAB := device/lge/x5/rootdir/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_TARGET_USES_QCOM_BSP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_SDCARD_ON_DATA := true
HAVE_SELINUX := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_mdpi
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
TW_NO_REBOOT_BOOTLOADER := true
