# Inherit common Pear stuff
$(call inherit-product, vendor/pear/config/common.mk)

# Inherit Pear car device tree
$(call inherit-product, device/pear/car/pear_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
