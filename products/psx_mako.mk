# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/psx/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := psx_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/system/media/768x1280-bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.4/KRT16O/893803:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.4 KRT16O 893803 release-keys"

