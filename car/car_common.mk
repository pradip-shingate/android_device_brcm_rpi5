#
# SPDX-License-Identifier: Apache-2.0
#

# Hardware-independent car customisations, shared by aosp_rpi5_car (the Pi)
# and rpi5_car_emu_x86_64 (the emulator test product). Anything that depends
# on Pi hardware (audio routing, display config, HALs, sepolicy) belongs in
# aosp_rpi5_car.mk instead.
#
# Inherit this file *before* car.mk / sdk_car_x86_64.mk: for duplicate
# PRODUCT_COPY_FILES destinations the first entry wins, and the car product
# makefiles install their own versions of some of these files.

RPI5_CAR_COMMON_PATH := device/brcm/rpi5/car

# Boot animation (car_generic_system.mk installs bootanimation-832.zip here).
PRODUCT_COPY_FILES += \
    $(RPI5_CAR_COMMON_PATH)/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
