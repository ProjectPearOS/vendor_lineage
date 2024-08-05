# Inherit common Pear stuff
$(call inherit-product, vendor/pear/config/common.mk)

# Inherit Pear atv device tree
$(call inherit-product, device/pear/atv/pear_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Pear packages
PRODUCT_PACKAGES += \
    PearCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/pear/overlay/tv
