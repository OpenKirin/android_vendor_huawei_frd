# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter frd,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := HWJNIFLPLocation
LOCAL_MODULE_OWNER := huawei
LOCAL_SRC_FILES := system/framework/HWJNIFLPLocation.jar
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1 && popd > /dev/null)
$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libGLES_mali.so libOpenCL.so.1.1 && popd > /dev/null)

endif
