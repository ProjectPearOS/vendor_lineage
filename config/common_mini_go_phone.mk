# Set Pear specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Pear stuff
$(call inherit-product, vendor/pear/config/common_mini_phone.mk)
