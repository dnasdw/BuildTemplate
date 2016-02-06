# TARGET #

TARGET := 3DS
LIBRARY := 0

ifeq ($(TARGET),3DS)
	ifeq ($(strip $(DEVKITPRO)),)
		$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
	endif

	ifeq ($(strip $(DEVKITARM)),)
		$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
	endif
endif

# COMMON CONFIGURATION #

NAME := 3DSHomebrewTemplate

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source

EXTRA_OUTPUT_FILES :=

LIBRARY_DIRS := $(DEVKITPRO)/citrus $(DEVKITPRO)/libctru
LIBRARIES := citrus ctru m

BUILD_FLAGS :=
RUN_FLAGS :=

# 3DS CONFIGURATION #

TITLE := $(NAME)
DESCRIPTION := 3DS homebrew template.
AUTHOR := Steveice10
PRODUCT_CODE := CTR-P-TEMP
UNIQUE_ID := 0xF8000

SYSTEM_MODE := 64MB
SYSTEM_MODE_EXT := Legacy

ICON_FLAGS :=

ROMFS_DIR :=
BANNER_AUDIO := meta/audio.wav
BANNER_IMAGE := meta/banner.png
ICON := meta/icon.png

# INTERNAL #

include buildtools/make_base
