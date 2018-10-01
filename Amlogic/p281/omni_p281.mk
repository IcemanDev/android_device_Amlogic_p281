LOCAL_PATH := device/Amlogic/p281

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p281
PRODUCT_NAME := omni_p281
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := X96mini
PRODUCT_MANUFACTURER := Amlogic