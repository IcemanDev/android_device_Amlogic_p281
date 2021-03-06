#BoardConfig.mk by IceMan

LOCAL_PATH := device/Amlogic/p281
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := meson8m2
TARGET_BOARD_HARDWARE := amlogic

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

TARGET_USES_64_BIT_BINDER := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := p281

##########################################################################################################
# Partitions & Kernel

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_KERNEL_CMDLINE := buildvariant=userdebug
BOARD_KERNEL_BASE := 0x01078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0xfff88000
BOARD_TAGS_OFFSET := 0xfef88100
##########################################################################################################

BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --base $(BOARD_KERNEL_BASE) --cmdline "$(BOARD_KERNEL_CMDLINE)"

BOARD_USES_HWCOMPOSER := true
TARGET_USES_ION := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_USES_MMCUTILS := true

# Recovery
RECOVERY_VARIANT := twrp
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/fstab.amlogic
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/root/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FORCE_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_SUPPRESS_SECURE_ERASE := true
USE_E2FSPROGS := true

#twrp
TW_BRIGHTNESS_PATH := "/brightness"
TW_THEME := landscape_hdpi
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TWHAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Sdcard External
BOARD_HAS_NO_REAL_SDCARD := false
TW_DEFAULT_EXTERNAL_STORAGE := true

# View button download/bootloader mode
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := false

# Encryption
TW_INCLUDE_CRYPTO := true

# Use ro.product.model
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# NTFS support
TW_INCLUDE_NTFS_3G := true

# Exfat support
TW_NO_EXFAT := false
TW_NO_EXFAT_FUSE := false

# Set language default
TW_DEFAULT_LANGUAGE := en
