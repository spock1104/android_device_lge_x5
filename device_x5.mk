#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/x5/overlay

# Radio
PRODUCT_PACKAGES += \
    librmnetctl

# Configs
PRODUCT_COPY_FILES += \
    device/lge/x5/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/x5/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/x5/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/x5/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/x5/prebuilt/etc/init.d/10lightfixer:system/etc/init.d/10lightfixer

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# GPS for volt
PRODUCT_COPY_FILES += \
    device/lge/x5/gps/etc/gps.conf:system/etc/gps.conf

# We are decommonizing the lights hal to support our unique setup
PRODUCT_PACKAGES += \
    lights.x5

# NFC packages for volt
PRODUCT_PACKAGES += \
    nfc.default \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/prebuilt/etc/sensor/sensord_cfg_axis:system/etc/sensor/sensord_cfg_axis \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

NFCEE_ACCESS_PATH := $(LOCAL_PATH)/prebuilt/etc/nfcee_access.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common specific options
BOARD_HAS_QCOM_WCNSS := true

# Inherit from msm8226-common
$(call inherit-product, device/lge/msm8226-common/msm8226.mk)
$(call inherit-product, vendor/lge/x5/x5-vendor.mk)

# Recovery
PRODUCT_COPY_FILES += device/lge/x5/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab


