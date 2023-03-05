#!/system/bin/sh
# This script is needed to automatically set device props.

load_redwood()
{
    resetprop "ro.product.model" "22101320G"
    resetprop "ro.product.vendor.model" "22101320G"
    resetprop "ro.product.name" "redwood"
    resetprop "ro.build.product" "redwood"
    resetprop "ro.product.device" "redwood"
    resetprop "ro.product.system.device" "redwood"
    resetprop "ro.product.vendor.device" "redwood"
    resetprop "ro.vendor.product.device" "redwood"
}

load_redwoodin()
{
    resetprop "ro.product.model" "22101320I"
    resetprop "ro.product.vendor.model" "22101320I"
    resetprop "ro.product.name" "redwoodin"
    resetprop "ro.build.product" "redwoodin"
    resetprop "ro.product.device" "redwoodin"
    resetprop "ro.product.system.device" "redwoodin"
    resetprop "ro.product.vendor.device" "redwoodin"
    resetprop "ro.vendor.product.device" "redwoodin"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_redwood
        ;;
    "INDIA")
        load_redwoodin
        ;;
    *)
        load_redwood
        ;;
esac

exit 0

