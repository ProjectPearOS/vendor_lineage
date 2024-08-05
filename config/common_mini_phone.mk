# Inherit mini common Pear stuff
$(call inherit-product, vendor/pear/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/pear/config/telephony.mk)
