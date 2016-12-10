# Inherit from common samsung fortuna
-include device/samsung/fortunaxx-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/fortuna3gfz

# Assert
TARGET_OTA_ASSERT_DEVICE := fortunave3g,SM-G530FZ,fortuna3g

# Kernel
TARGET_KERNEL_CONFIG := msm8916_fortuna3g_fz_eur_defconfig

# Vendor Init
TARGET_UNIFIED_DEVICE                := true
TARGET_INIT_VENDOR_LIB               := libinit_fortuna3gfz
TARGET_RECOVERY_DEVICE_MODULES       := libinit_fortuna3gfz

# inherit from the proprietary version
-include vendor/samsung/fortuna3gfz/BoardConfigVendor.mk

