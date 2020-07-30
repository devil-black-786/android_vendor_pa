#
# Copyright (C) 2020 Paranoid Android
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

# Check for target product
ifeq (pa_CPH1859,$(TARGET_PRODUCT))

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from begonia device makefile
$(call inherit-product, device/oppo/CPH1859/device.mk)

# Inherit some common Paranoid Android stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := pa_CPH1859
PRODUCT_DEVICE := CPH1859
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := Realme 1
PRODUCT_MANUFACTURER := Oppo
PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := CPH1859
TARGET_VENDOR_DEVICE_NAME := CPH1859

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="CPH1859" \
    PRODUCT_NAME="CPH1859" \
    PRIVATE_BUILD_DESC="full_oppo6771_17065-user 9 PPR1.180610.011 eng.root.20200509.060522 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"

endif
