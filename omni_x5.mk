$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/qcom/common/Android.mk)
# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG Volt
PRODUCT_NAME := omni_x5
PRODUCT_MODEL := x5
PRODUCT_DEVICE := x5
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
