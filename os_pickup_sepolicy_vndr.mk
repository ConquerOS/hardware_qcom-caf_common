include hardware/qcom-caf/common/qcom_defs.mk

ifneq ($(filter $(UM_4_9_FAMILY) $(UM_4_14_FAMILY) $(UM_4_19_KONA_FAMILY) $(UM_4_19_BENGAL_FAMILY) $(UM_5_4_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/legacy-um/SEPolicy.mk
else ifneq ($(filter $(UM_5_10_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8450/SEPolicy.mk
else ifneq ($(filter $(UM_5_15_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8550/SEPolicy.mk
endif

-include device/conquer/sepolicy/qcom/sepolicy.mk
