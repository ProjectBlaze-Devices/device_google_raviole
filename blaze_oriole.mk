#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common blaze stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := blaze_oriole

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

#Blaze Stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
TARGET_UDFPS_ANIMATIONS := true
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := CYB3R0ID694
WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240605.024 11860263 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240605.024/11860263:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
