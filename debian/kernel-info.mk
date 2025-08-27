# Info obtained from: https://gitlab.com/ubports/community-ports/android9/fxtec-pro1/fxtec-pro1/-/blob/master/deviceinfo

VARIANT = android
KERNEL_BASE_VERSION = 4.4-0+kabouik
KERNEL_BOOTIMAGE_CMDLINE = console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 console=tty0 systemd.unified_cgroup_hierarchy=0 droidian.lvm.prefer
DEVICE_VENDOR = fxtec
DEVICE_MODEL = pro1
DEVICE_FULL_NAME = F(x)tec Pro1
KERNEL_DEFCONFIG = lineage-pro1_defconfig
KERNEL_IMAGE_WITH_DTB = 1
KERNEL_IMAGE_DTB = arch/arm64/boot/dts/qcom/msm8998-v2-qrd-skuk-t5.dtb
KERNEL_IMAGE_WITH_DTB_OVERLAY = 1
KERNEL_IMAGE_DTB_OVERLAY = arch/arm64/boot/dts/qcom/msm8998-v2-qrd-skuk-t5-overlay.dtbo
KERNEL_BOOTIMAGE_PAGE_SIZE = 4096
KERNEL_BOOTIMAGE_BASE_OFFSET = 0x00000000
KERNEL_BOOTIMAGE_KERNEL_OFFSET = 0x00008000
KERNEL_BOOTIMAGE_INITRAMFS_OFFSET = 0x01000000
KERNEL_BOOTIMAGE_SECONDIMAGE_OFFSET = 0x00f00000
KERNEL_BOOTIMAGE_TAGS_OFFSET = 0x00000100
BUILD_CROSS = 1
BUILD_TRIPLET = aarch64-linux-android-
BUILD_CLANG_TRIPLET = aarch64-linux-gnu-
BUILD_CC = clang
BUILD_PATH = /usr/lib/llvm-android-6.0-4691093/bin
DEB_TOOLCHAIN = linux-initramfs-halium-generic:arm64, binutils-aarch64-linux-gnu, clang-android-6.0-4691093, gcc-4.9-aarch64-linux-android, g++-4.9-aarch64-linux-android, libgcc-4.9-dev-aarch64-linux-android-cross
DEB_BUILD_ON = amd64
DEB_BUILD_FOR = arm64
KERNEL_ARCH = arm64
KERNEL_BUILD_TARGET = Image.gz
KERNEL_IMAGE_WITH_DTB_OVERLAY_IN_KERNEL = 1

# Disable vbmeta
DEVICE_VBMETA_REQUIRED = 0

# Flashing
FLASH_ENABLED = 1
FLASH_INFO_MANUFACTURER = Fxtec
FLASH_INFO_MODEL = QX1000
FLASH_INFO_CPU = Qualcomm Technologies, Inc MSM8998
FLASH_INFO_DEVICE_IDS = msm8998
