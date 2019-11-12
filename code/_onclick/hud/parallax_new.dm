/client
	var/list/parallax_layers
	var/turf/previous_turf

	var/atom/movable/movingmob

	var/parallax_last_x = 0
	var/parallax_last_y = 0

/datum/hud/proc/create_parallax(mob/viewmob)
	var/mob/screenmob = viewmob || mymob
	var/client/C = screenmob.client

	var/turf/posobj = get_turf(C.eye)
	C.parallax_last_x = posobj.x
	C.parallax_last_y = posobj.y

	if(C.prefs.parallax == PARALLAX_DISABLE)
		return

	C.parallax_layers = list()
	var/obj/B = new /obj/ys_screen/parallax_layer/layer_1(null, C.view)
	B.transform *= 1
	C.parallax_layers += B
	C.screen |= (C.parallax_layers) // adds any parallax_layers to screen that are not already in screen

	var/obj/screen/plane_master/PM = screenmob.hud_used.plane_masters["[PLANE_SPACE]"]
	if(screenmob != mymob)
		C.screen -= locate(/obj/screen/plane_master/parallax_white) in C.screen
		C.screen += PM
	PM.color = list(
		0, 0, 0, 0,
		0, 0, 0, 0,
		0, 0, 0, 0,
		1, 1, 1, 1,
		0, 0, 0, 0
		)

/datum/hud/proc/remove_parallax(mob/viewmob)
	var/mob/screenmob = viewmob || mymob
	var/client/C = screenmob.client

	C.screen -= (C.parallax_layers)
	C.parallax_layers = null

	var/obj/screen/plane_master/PM = screenmob.hud_used.plane_masters["[PLANE_SPACE]"]
	if(screenmob != mymob)
		C.screen -= locate(/obj/screen/plane_master/parallax_white) in C.screen
		C.screen += PM
	PM.color = initial(PM.color)





/datum/hud/proc/update_parallax()
	var/client/C = mymob.client
	var/turf/posobj = get_turf(C.eye)
	if(!posobj)
		return

	var/diff_x = C.parallax_last_x - posobj.x
	var/diff_y = C.parallax_last_y - posobj.y

	for(var/obj/ys_screen/parallax_layer/L in C.parallax_layers)

		L.offset_x += diff_x
		L.offset_y += diff_y

		if(L.offset_x>0)
			L.offset_x = L.img_overflow_x * -1
		if(L.offset_x<(L.img_overflow_x * -1))
			L.offset_x = 0

		if(L.offset_y>0)
			L.offset_y = L.img_overflow_y * -1
		if(L.offset_y<(L.img_overflow_y * -1))
			L.offset_y = 0


		L.screen_loc = "CENTER-10:[L.offset_x],CENTER-7:[L.offset_y]"

	C.parallax_last_x = posobj.x
	C.parallax_last_y = posobj.y
	return





//!TODO: look into simplfying this? (or figureing it out)
/atom/movable/proc/update_parallax_contents()
	if(length(client_mobs_in_contents))
		for(var/thing in client_mobs_in_contents)
			var/mob/M = thing
			if(M && M.client && M.hud_used && length(M.client.parallax_layers))
				M.hud_used.update_parallax()

/atom/movable/proc/update_parallax_teleport()
	warning("update_parallax_teleport was called!")
	return

/datum/hud/proc/update_parallax_pref(mob/viewmob)
	remove_parallax(viewmob)
	create_parallax(viewmob)
	update_parallax()


/obj/ys_screen/parallax_layer
	icon = 'icons/effects/parallax.dmi'
	blend_mode = BLEND_OVERLAY//BLEND_ADD
	plane = PLANE_SPACE_PARALLAX
	screen_loc = "CENTER-10,CENTER-7"
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	alpha = 255

	var/offset_x = 0
	var/offset_y = 0
	var/img_overflow_x = 675
	var/img_overflow_y = 480

/obj/ys_screen/parallax_layer/layer_1
	//icon_state = "debug"
	icon = 'yori_station/icons/parallax/nebula.png'