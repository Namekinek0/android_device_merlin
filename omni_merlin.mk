$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk

PRODUCT_COPY_FILES += device/Redmi/merlin/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := merlin
PRODUCT_NAME := omni_merlin
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := merlin
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist,sys,usb,config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="Redmi/merlin_global/merlin:10/QP1A.190711.020/V12.0.3.0.QJOMIXM:user/release-keys" \
	PRIVATE_BUILD_DESC="merlin-user 10 QP1A.190711.020 V12.0.3.0.QJOMIXM release-keys"
