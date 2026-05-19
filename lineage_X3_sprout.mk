#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from X3-KC_sprout device
$(call inherit-product, device/kyocera/X3-KC_sprout/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# 2by2 stuff
CUSTOM_PROCESSOR_INFO := Qualcomm Snapdragon 630

PRODUCT_DEVICE := X3-KC_sprout
PRODUCT_NAME := lineage_X3_sprout
PRODUCT_BRAND := KYOCERA
PRODUCT_MODEL := X3-KC
PRODUCT_MANUFACTURER := kyocera

PRODUCT_GMS_CLIENTID_BASE := android-kyocera

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="X3-KC-user 10 3.350MI.0334.a 3.350MI.0334.a release-keys" \
    BuildFingerprint=KYOCERA/X3-KC/X3-KC_sprout:10/3.350MI.0334.a/3.350MI.0334.a:user/release-keys
