# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/psx/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := psx_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="fingerprint: google/hammerhead/hammerhead:4.4/KRT16M/893803:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4 KRT16M 893803 release-keys"
