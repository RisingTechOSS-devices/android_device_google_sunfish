#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# RisingOS Flags.
RISING_MAINTAINER := xioyo
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Extra Flags.
RISING_BATTERY := 3140mah
RISING_STORAGE := 128gb
RISING_RAM := 6gb

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon730G" \
    RisingMaintainer="xioyo" \
    BuildDesc="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys" \
    BuildFingerprint=google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys \
    DeviceProduct=sunfish

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
