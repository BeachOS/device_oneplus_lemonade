#
# Copyright (C) 2021-2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

PRODUCT_NAME := beach_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2113

PRODUCT_SYSTEM_NAME := OnePlus9_EEA
PRODUCT_SYSTEM_DEVICE := OnePlus9

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus9 \
    TARGET_PRODUCT=OnePlus9_EEA \
    PRIVATE_BUILD_DESC="OnePlus9-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus9_EEA/OnePlus9:11/RKQ1.201105.002/2111112053:user/release-keys
