$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Pear stuff
$(call inherit-product, vendor/pear/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Pear LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pear/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pear/overlay/dictionaries

$(call inherit-product, vendor/pear/config/wifionly.mk)
