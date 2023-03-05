#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := redwood
DEVICE_PATH := device/xiaomi/redwood

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/redwood/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := redwood
PRODUCT_NAME := twrp_redwood
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22101320C
PRODUCT_MANUFACTURER := Xiaomi
