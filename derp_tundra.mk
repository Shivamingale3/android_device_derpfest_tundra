#
# Copyright (C) 2024 DerpfestAOSP
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common Derpfest configurations
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := derp_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_g-user 13 T1SJ33.117-30-4 6a9b48 release-keys" \
    PRODUCT_NAME=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:11/T1SJ33.117-30-4/6a9b48:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola

#Derpfest Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
EXTRA_UDFPS_ICONS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
DERP_BUILDTYPE := Unofficial
TARGET_USES_PICO_GAPPS := true
TARGET_GAPPS_ARCH := arm64
