# Recovery
BOARD_USES_FULL_RECOVERY_IMAGE ?= true

include vendor/pear/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/pear/config/BoardConfigQcom.mk
endif

include vendor/pear/config/BoardConfigSoong.mk
