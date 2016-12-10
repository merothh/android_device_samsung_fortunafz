$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/fortuna3gfz/fortuna3gfz-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS +=  device/samsung/fortuna3gfz/overlay

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

#NFC
PRODUCT_PACKAGES += \
    Tag \
    com.android.nfc_extras \
    com.android.nfc.helper \
    NfcNci \
    libnfc-nci

# NFC prebuilt files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# NFC workaround
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/setNFCperms:system/etc/init.d/setNFCperms

# common fortuna
$(call inherit-product, device/samsung/fortunaxx-common/fortunaxx.mk)
