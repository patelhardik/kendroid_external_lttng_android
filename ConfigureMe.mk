# Add your configurable paths here. these paths are used by Makefile.
#LOCAL_PATH = $(call my-dir)

$(info @HPatel - ConfigureMe.mk ->> Local path is $(LOCAL_PATH))

ANDROID_ROOT := $(shell pwd)
$(info @HPatel - ConfigureMe.mk ->> Android root is $(ANDROID_ROOT))

KERNELDIR := $(ANDROID_ROOT)/kernel/samsung/exynos5422
LTTNG_KERNELDIR := $(KERNELDIR)
$(info @HPatel - ConfigureMe.mk ->> KERNEL DIR is $(KERNELDIR))


LTTNG_OUT_INSTALL_DIR := $(ANDROID_ROOT)/$(TARGET_OUT)/lttng

HOST_ARCH :=$(shell uname -i)
CONFIGURE_OPTIONS := --host=$(HOST_ARCH) --target=$(TARGET_ARCH) --prefix=$(LTTNG_OUT_INSTALL_DIR)
