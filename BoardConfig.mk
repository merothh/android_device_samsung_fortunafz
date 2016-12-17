# Inherit from common samsung fortuna
-include device/samsung/fortunaxx-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/fortunafz

# Assert
TARGET_OTA_ASSERT_DEVICE := fortunave3g,SM-G530FZ,fortuna3g,samsung_sm_g530h,gprimeltexx

# Kernel
TARGET_KERNEL_CONFIG := msm8916_fortunafz_eur_defconfig

# Vendor Init
TARGET_UNIFIED_DEVICE                := true
TARGET_INIT_VENDOR_LIB               := libinit_fortunafz
TARGET_RECOVERY_DEVICE_MODULES       := libinit_fortunafz

# inherit from the proprietary version
-include vendor/samsung/fortunafz/BoardConfigVendor.mk

