## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := w3ds

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lg/w3ds/device_w3ds.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := w3ds
PRODUCT_NAME := cm_w3ds
PRODUCT_BRAND := lg
PRODUCT_MODEL := w3ds
PRODUCT_MANUFACTURER := lg
