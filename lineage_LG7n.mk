#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LG7n/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_LG7n
PRODUCT_DEVICE := LG7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LG7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LG7n \
    BuildFingerprint=TECNO/LG7n-GL/TECNO-LG7n:12/SP1A.210812.016/240530V1767:user/release-keys

# AxionAOSP Flags
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Shirayuki39
AXION_PROCESSOR := Helio_G99
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue 
PERF_ANIM_OVERRIDE := true

# CPU governor support
PERF_GOV_SUPPORTED := false
PERF_DEFAULT_GOV := reflex

# AxionFX
TARGET_INCLUDE_AXFX := true

# GMS
TARGET_INCLUDE_PARTNER_SETUP := true
TARGET_INCLUDE_GOOGLE_TELECOMM := true
PRODUCT_PACKAGES += \
   CalendarGooglePrebuilt
