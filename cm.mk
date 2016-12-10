# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/fortuna3gfz/full_fortuna3gfz.mk)

# Setup device configuration
PRODUCT_DEVICE := fortuna3gfz
PRODUCT_NAME := cm_fortuna3gfz