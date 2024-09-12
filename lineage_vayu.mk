#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common AOSP configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Matrixx
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := momenabdulrazekali
MATRIXX_CHIPSET := SM8150
MATRIXX_BATTERY := 5160mah
MATRIXX_DISPLAY := 1080x2400

# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_vayu

PRODUCT_SYSTEM_NAME := vayu_global
PRODUCT_SYSTEM_DEVICE := vayu

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64

#Bootanim
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
WITH_GMS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Exclude Redundants 
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_VIA := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.3.0.TJUMIXM release-keys" \
    PRODUCT_MODEL=M2102J20SG

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys
