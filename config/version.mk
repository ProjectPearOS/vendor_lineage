PRODUCT_VERSION_MAJOR = 20
PRODUCT_VERSION_MINOR = 0

ifeq ($(PEAR_VERSION_APPEND_TIME_OF_DAY),true)
    PEAR_BUILD_DATE := $(shell date -u +%Y%m%d_%H%M%S)
else
    PEAR_BUILD_DATE := $(shell date -u +%Y%m%d)
endif

# Set PEAR_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat

ifndef PEAR_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "PEAR_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^PEAR_||g')
        PEAR_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(PEAR_BUILDTYPE)),)
    PEAR_BUILDTYPE := UNOFFICIAL
    PEAR_EXTRAVERSION :=
endif

ifeq ($(PEAR_BUILDTYPE), UNOFFICIAL)
    ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
        PEAR_EXTRAVERSION := -$(TARGET_UNOFFICIAL_BUILD_ID)
    endif
endif

PEAR_VERSION_SUFFIX := $(PEAR_BUILD_DATE)-$(PEAR_BUILDTYPE)$(PEAR_EXTRAVERSION)-$(PEAR_BUILD)

# Internal version
PEAR_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(PEAR_VERSION_SUFFIX)

# Display version
PEAR_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(PEAR_VERSION_SUFFIX)
