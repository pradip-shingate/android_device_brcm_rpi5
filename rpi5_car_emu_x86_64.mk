#
# SPDX-License-Identifier: Apache-2.0
#

# Emulator test product: sdk_car_x86_64 plus the hardware-independent rpi5
# car customisations from car/car_common.mk. Use it to test UI, app and
# product-config changes in the x86_64 emulator before building for the Pi.
#
#   lunch rpi5_car_emu_x86_64-bp1a-userdebug && m && emulator
#
# It shares PRODUCT_DEVICE (and so out/target/product/emulator_car64_x86_64/)
# with sdk_car_x86_64; run `m installclean` when switching between the two.

# Must come first so its PRODUCT_COPY_FILES entries win.
$(call inherit-product, device/brcm/rpi5/car/car_common.mk)

$(call inherit-product, device/generic/car/sdk_car_x86_64.mk)

PRODUCT_NAME := rpi5_car_emu_x86_64
PRODUCT_MODEL := rpi5 car on x86_64 emulator
