# Release name
PRODUCT_RELEASE_NAME := htc x9u

# Inherit from our custom product configuration
$(call inherit-product, vendor/mk/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_e56ml
PRODUCT_DEVICE := e56ml
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC_X9
PRODUCT_MANUFACTURER := HTC
