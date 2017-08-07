# Copyright 2014 The Android Open Source Project
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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit device parts
$(call inherit-product, device/sony/tulip/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# kernel
TARGET_KERNEL_CONFIG := aosp_kanuti_tulip_defconfig

# Override Product Name for Choose-A
PRODUCT_DEVICE := tulip
PRODUCT_NAME := choose_tulip
PRODUCT_MODEL := Xperia M4
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Assert
TARGET_OTA_ASSERT_DEVICE := E2303,E2333,tulip

# Inherit Choose-A parts
$(call inherit-product, vendor/choose-a/config/gsm.mk)
