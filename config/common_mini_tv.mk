# Inherit common MaxiCM stuff
$(call inherit-product, vendor/maxi/config/common.mk)

# Include MaxiCM audio files
include vendor/maxi/config/maxi_sounds.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/maxi/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
