$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/fortuna3gfz/fortuna3gfz-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS +=  device/samsung/fortuna3gfz/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

#NFC
PRODUCT_PACKAGES += \
    libnfc_nci \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFC prebuilt files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# NFC workaround
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/setNFCperms:system/etc/init.d/setNFCperms

# common fortuna
$(call inherit-product, device/samsung/fortunaxx-common/fortunaxx.mk)
