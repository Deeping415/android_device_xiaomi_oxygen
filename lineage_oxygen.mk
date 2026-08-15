#
# Copyright (C) 2018-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oxygen device.
$(call inherit-product, device/xiaomi/oxygen/device.mk)

# Disable Virtual A/B (retrofit non-A/B device)
PRODUCT_VIRTUAL_AB_OTA := false
PRODUCT_VIRTUAL_AB :=
PRODUCT_VIRTUAL_AB_COW_VERSION :=

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oxygen
PRODUCT_NAME := lineage_oxygen
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Max 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="oxygen-user 7.1.1 NMF26F V11.0.2.0.NDDMIXM release-keys" \
    BuildFingerprint=Xiaomi/oxygen/oxygen:7.1.1/NMF26F/V9.5.5.0.NDDMIFA:user/release-keys