#
# Copyright (C) 2020-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := momenabdulrazekali

# Device config
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build package
TARGET_BUILD_PACKAGE := 3
WITH_GMS := true

# Stock Launcher
TARGET_LAUNCHER := 1

# GAPPS
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Debugging
TARGET_INCLUDE_MATLOG := true

PRODUCT_NAME := lineage_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.3.0.TJUMIXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
