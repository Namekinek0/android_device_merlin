ifneq ($(filter merlin,$(TARGET_DEVICE)),)

LOCAL_PATH := device/Xiaomi/merlin

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
