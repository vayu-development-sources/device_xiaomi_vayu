#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

EVO_BUILD_TYPE := Unofficial
TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    BuildDesc="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys" \
    BuildFingerprint=Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

