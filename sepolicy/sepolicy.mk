#
# This policy configuration will be used by all products that
# inherit from psx (credits to Omni)
#

BOARD_SEPOLICY_DIRS += \
    vendor/psx/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    mac_permissions.xml 
