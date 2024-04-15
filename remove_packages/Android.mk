LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackagesVayu
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Accord \
    Chrome-Stub \
    Drive \
    FilesPrebuilt  \
    Gramophone \
    Maps \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
    Symphonica \
    YouTube

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
