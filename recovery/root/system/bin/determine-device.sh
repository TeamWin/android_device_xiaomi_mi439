#!/system/bin/sh

source /system/bin/mithorium-utils.sh

set_device_codename "$(cat /sys/xiaomi-sdm439-mach/codename)"

case "$(cat /sys/xiaomi-sdm439-mach/codename)" in
	"pine")
		set_device_model "Redmi 7A"
		for i in x y w h; do
			setprop twrp.gui.offset.${i} 0
		done
		;;
	"olive")
		set_device_model "Redmi 8"
		setprop "persist.vendor.ctm.disallowed" "true"
		;;
	"olivelite")
		set_device_model "Redmi 8A"
		setprop "persist.vendor.ctm.disallowed" "true"
		;;
	"olivewood")
		set_device_model "Redmi 8A Dual"
		setprop "persist.vendor.ctm.disallowed" "true"
		;;
esac

exit 0