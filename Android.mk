LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libguess

LOCAL_CFLAGS := \
  -Wno-multichar \
  -DANDROID \
  -DLIBGUESS_CORE

LOCAL_SRC_FILES := \
  $(LOCAL_PATH)/src/libguess/dfa.c \
  $(LOCAL_PATH)/src/libguess/guess_impl.c \
  $(LOCAL_PATH)/src/libguess/guess.c
  

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/src/libguess

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src/libguess

include $(BUILD_STATIC_LIBRARY)
