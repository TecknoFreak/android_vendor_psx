# Generic product
PRODUCT_NAME := psx
PRODUCT_BRAND := psx
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    ro.ril.def.preferred.network=9 \
    ro.ril.hsxpa=5 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=24 \
    ro.ril.hsupa.category=8 \
    dalvik.vm.dexopt-flags=m=y

# Needed packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk

# Google latinime
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/system/app/GoogleLatinIme.apk:system/app/GoogleLatinIme.apk \
    vendor/psx/proprietary/system/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# Common overlays
PRODUCT_PACKAGE_OVERLAYS :=  vendor/psx/overlay $(PRODUCT_PACKAGE_OVERLAYS)

# Use custom apns-conf.xml
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation support
ifneq ($(filter psx_mako psx_grouper,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/system/media/768x1280-bootanimation.zip:system/media/bootanimation.zip
endif

ifneq ($(filter psx_hammerhead psx_flo psx_manta,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/psx/proprietary/system/media/1080x1920-bootanimation.zip:system/media/bootanimation.zip
endif

# Bootanimation enhancements
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Motox dalvik patch
ifneq ($(filter psx_flo psx_hammerhead psx_mako,$(TARGET_PRODUCT)),)
$(call inherit-product, vendor/psx/products/motoxdalvikpatch.mk)
endif

# Inherit kitkat audio package.
$(call inherit-product, vendor/psx/products/kitkataudio.mk)
