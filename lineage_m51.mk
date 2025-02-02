#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Vendor fingerprint
BUILD_FINGERPRINT := "samsung/m51nsxx/qssi:12/SP1A.210812.016/M515FXXS6DXE3:user/release-keys"
PRIVATE_BUILD_DESC := "m51nsxx-user 12 SP1A.210812.016 M515FXXS6DXE3 release-keys"

# EXtra Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true