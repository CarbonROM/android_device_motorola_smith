#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The CarbonROM Projects
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specfic first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from smith device
$(call inherit-product, device/motorola/smith/device.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/motorola/smith/smith-vendor.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := smith
PRODUCT_NAME := carbon_smith
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Razr 5G
PRODUCT_MANUFACTURER := Motorola Mobility
PRODUCT_RELEASE_NAME := razr

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=smith
