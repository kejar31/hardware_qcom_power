ifneq ($(filter msm8960 msm8974,$(TARGET_BOARD_PLATFORM)),)
ifneq ($(TARGET_USES_TG_POWERHAL),true)
ifneq ($(TARGET_USES_CM_POWERHAL),true)
ifneq ($(TARGET_PROVIDES_POWERHAL),true)

LOCAL_PATH := $(call my-dir)

# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)


LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl

LOCAL_SRC_FILES := power.c

LOCAL_MODULE:= power.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
endif
endif
endif
endif
