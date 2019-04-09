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

TARGET_OTA_ASSERT_DEVICE := j7xelte,j7xeltexx

# Inherit from Exynos7870-common
include device/samsung/exynos7870-common/BoardConfigCommon.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_j7xelte

# Path
LOCAL_PATH := device/samsung/j7xelte
TARGET_COPY_OUT_VENDOR := system/vendor

# inherit the splitted configs
-include $(LOCAL_PATH)/configs/board/*.mk

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/j7xelte/sepolicy

# Hidl
#DEVICE_MANIFEST_FILE := device/samsung/j7xelte/configs/manifest/manifest.xml

# Properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/system.prop

# Inherit from the proprietary version
-include vendor/samsung/j7xelte/BoardConfigVendor.mk



