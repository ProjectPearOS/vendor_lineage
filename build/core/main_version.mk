# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# PearOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pear.version=$(PEAR_VERSION) \
    ro.pear.releasetype=$(PEAR_BUILDTYPE) \
    ro.pear.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(PEAR_VERSION) \

# PearOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pear.display.version=$(PEAR_DISPLAY_VERSION)
