# Set Pear specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Pear stuff
$(call inherit-product, vendor/pear/config/common_full_phone.mk)
