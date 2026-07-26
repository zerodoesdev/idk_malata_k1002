#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from k1002 device
$(call inherit-product, device/malata/k1002/device.mk)

# Inherit some common Lineage stuff (using tablet wifi-only variant to match your AOSP setup)
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Lineage-specific overrides
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_k1002
PRODUCT_DEVICE := k1002
PRODUCT_BRAND := UNOWHY
PRODUCT_MODEL := Y10G001S4M_EEA
PRODUCT_MANUFACTURER := malata

PRODUCT_GMS_CLIENTID_BASE := android-malata

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=k1002
