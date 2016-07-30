# Copyright 2016 halogenOS
# OnePlus OxygenOS Camera
# All credits go to OnePlus for this camera!


# Find where we are
LOCAL_PATH := $(call my-dir)

# Check if the device is oneplus2
ifeq ($(TARGET_DEVICE),oneplus2)

### LIB and LIB64

# libfilter-sdk.so
include $(CLEAR_VARS)
LOCAL_MODULE := libfilter-sdk
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_SRC_FILES_64 := proprietary/lib64/libfilter-sdk.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_SRC_FILES_32 := proprietary/lib/libfilter-sdk.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_SRC_FILES := proprietary/lib/libfilter-sdk.so
endif

include $(BUILD_PREBUILT)

# libopbaselib.so
include $(CLEAR_VARS)
LOCAL_MODULE := libopbaselib
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_SRC_FILES_64 := proprietary/lib64/libopbaselib.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_SRC_FILES_32 := proprietary/lib/libopbaselib.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_SRC_FILES := proprietary/lib/libopbaselib.so
endif

include $(BUILD_PREBUILT)

# libopcameralib.so

include $(CLEAR_VARS)
LOCAL_MODULE := libopcameralib
LOCAL_SRC_FILES := proprietary/lib/libopcameralib.so
include $(PREBUILT_SHARED_LIBRARY)

# libopcamera.so

include $(CLEAR_VARS)
LOCAL_MODULE := libopcamera
LOCAL_SRC_FILES := proprietary/lib/libopcamera.so
include $(PREBUILT_SHARED_LIBRARY)

### BIN

# secure_camera_sample_client
include $(CLEAR_VARS)

LOCAL_SRC_FILES := securecamerasampleclient
LOCAL_MODULE := proprietary/bin/secure_camera_sample_client
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)


### PRIV-APP

# OnePlusCamera.apk
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := OnePlusCamera
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := proprietary/priv-app/OnePlusCamera/OnePlusCamera.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)

### VENDOR

# lib-imscamera.so
include $(CLEAR_VARS)
LOCAL_MODULE := lib-imscamera
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/lib-imscamera.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/lib-imscamera.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_SRC_FILES := proprietary/vendor/lib/lib-imscamera.so
endif

include $(BUILD_PREBUILT)

# libimscamera_jni.so
include $(CLEAR_VARS)
LOCAL_MODULE := libimscamera_jni
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libimscamera_jni.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libimscamera_jni.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_SRC_FILES := proprietary/vendor/lib/libimscamera_jni.so
endif

include $(BUILD_PREBUILT)

# libimsmedia_jni.so
include $(CLEAR_VARS)
LOCAL_MODULE := libimsmedia_jni
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libimsmedia_jni.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libimsmedia_jni.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_SRC_FILES := proprietary/vendor/lib/libimsmedia_jni.so
endif

include $(BUILD_PREBUILT)
endif