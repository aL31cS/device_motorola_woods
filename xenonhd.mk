## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := woods

# Inherit some common xenonhd stuff
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/woods/device_woods.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1280

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := woods
PRODUCT_NAME := xenonhd_woods
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E4
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/woods/woods:7.1.1/NMA26.42-113/133:user/release-keys \
    PRIVATE_BUILD_DESC="woods_retail-user 7.1.1 NMA26.42-11-3 release-keys" 

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Available languages
PRODUCT_LOCALES := en_US en_GB ru_RU uk_UA tr_TR sk_SK vi_VN fr_FR ar_EG pt_BR 

# XenonHD stuff
ROOT_METHOD=magisk
PRODUCT_PROPERTY_OVERRIDES += \
ro.xenonhd.maintainer=🅸ᴢᴀϙ🅺ᴜʟʟ

# Extra prebuilt apps
PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    MiXplorer
