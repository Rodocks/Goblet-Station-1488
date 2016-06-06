//if this works I'm going to fucking nut
//what do you think jack?
obj
	/var/goonwarp = 1

/turf/space/transit/warp/goon
	icon = 'icons/custom/spaceph.dmi'
	icon_state = "tplaceholder"
	desc = "If you can see this rodocks is bad"
	dir = SOUTH
	baseturf = /turf/space/transit
	layer = 0.1
	if (src in view(usr.client))
	set /var/goonwarp = 1,
	else
		return 0


/obj/screen/shuttleoverlay
	icon = 'icons/custom/warp.dmi'
	icon_state = "warp"
	layer = 0.2

	if(/var/goonwarp = 1)
		var/image/I = image("icon" = 'icons/custom/warp.dmi', "icon_state" = "warp")




