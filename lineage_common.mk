#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_USE_SCUDO := true

# Extras for ROM
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
#BLISS_BUILDTYPE := OFFICIAL

-include vendor/gms/products/gms.mk

PRODUCT_USE_SCUDO := true

# Maintainer Overlay
DEVICE_PACKAGE_OVERLAYS += \
	device/google/gs101/overlay_bliss

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

include packages/apps/PixelParts/device.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs101/overlay-lineage

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs101/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Lineage Health
#include hardware/google/pixel/lineage_health/device.mk

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Touch
#include hardware/google/pixel/touch/device.mk
