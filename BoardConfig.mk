#
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PATH := device/lge/vs995

# inherit from common v20
-include device/lge/v20-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := vs995,us996,elsa

# Kernel
TARGET_KERNEL_CONFIG := lineageos_vs995_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/lge/vs995/BoardConfigVendor.mk

#TWRP Flags
RECOVERY_VARIANT := twrp
PRODUCT_COPY_FILES += device/lge/vs995/twrp.fstab:recovery/root/etc/twrp.fstab
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/Image.lz4-dtb
TW_THEME := portrait_hdpi
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
RECOVERY_SDCARD_ON_DATA := true
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_CRYPTO := true

#Shift the screen down to avoid the camera (psudo-second screen)
TW_Y_OFFSET := 160
TW_H_OFFSET := -160


