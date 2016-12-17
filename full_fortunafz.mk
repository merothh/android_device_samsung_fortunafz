# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fortunave3g device
$(call inherit-product, device/samsung/fortunafz/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_fortunafz
PRODUCT_DEVICE := fortunafz
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G530FZ
