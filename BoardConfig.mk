# dunno why i'm doing this, procodoi(ciao italiani)

LOCAL_PATH := device/Xiaomi/merlin

TARGET_BOARD_PLATFORM := mt6768
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := merlin

# These two are for MTK Chipset only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2F2 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x4000000
# BOARD_USES_FULL_RECOVERY_IMAGE := true	# Uncomment this line if you want  to remove size restrictions
BOARD_FLASH_BLOCK_SIZE := 0 			# Might be different(?)
# BOARD_HAS_NO_REAL_SD_CARD := true		# Depricated
# BOARD_HAS_NO_SELECT_BUTTON := true		# Depricated
BOARD_SUPPRESS_SECURE_ERASE := true
# BOARD_HAS_NO_MISC_PARTITION := true		# Uncomment this line if your partition table has no /misc;I think merlin has it
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true			# Optional: If /sdcard partition is emulated on /data partition

# TWRP stuff
TW_EXCLUDE_SUPERSU := true			# true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true			# true/false: Add Data Encryption Support or not
TW_IMPUT_BLACKLIST := "hbtp_vm"			# Optional: Disables virtual mouse
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi			# Set the exact theme you wanna use. If resolution doesn't match, define the height/width
DEVICE_RESOLUTION := 1080x2340
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
# Set the Brightness Control File Path below (as per your chip/device)
# TW_BRIGHTNESS_PATH := 			# I have no idea about this
# TW_SECONDARY_BRIGHTNESS_PATH :=		# As above
# Set the Path of Logical Units (LUNs) for Storage below (as per your chip/device)
# TARGET_USE_CUSTOM_LUN_FILE_PATH := 		# I have no idea about this
# TARGET_USE_CUSTOM_LUN_FILE_PATH := 		# As above
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80

TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TWRP_INCLUDE_LOGCAT := true
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := false

# Kernels
TARGET_IS_64_BIT := true
# TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage # I believe the zImage file is wrong
# TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/zImage # As above
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.usbconfigfs=true
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x07c08000 --tags_offset 0x0bc08000

# Set FSTAB
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Architecture
# According to the deviceś architecture (64-bit or 32-bit)
ifeq ($(TARGET_IS_64_BIT),true)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := arm64-v8a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_ARCH := arm
# TARGET_2ND_ARCH_VARIANT :=				# I have no idea about this
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BTI := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
else 							# I think this part until endif is useless
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
endif


