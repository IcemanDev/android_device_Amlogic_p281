LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),p281)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif