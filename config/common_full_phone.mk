# Inherit full common Pear stuff
$(call inherit-product, vendor/pear/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Pear LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pear/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pear/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/pear/config/telephony.mk)
