#
# Copyright (C) 2023 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_SYSTEM_NAME := vayu_global
PRODUCT_SYSTEM_DEVICE := vayu

# Ship GApps

WITH_GMS := true

# RisingOS flags
PRODUCT_NO_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_ENABLE_PIXEL_FEATURES := true
RISING_MAINTAINER := momenabdulrazekali
RISING_BUILDTYPE := UNOFFICIAL
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="momenabdulrazekali"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    BuildDesc="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys" \
    BuildFingerprint=Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

