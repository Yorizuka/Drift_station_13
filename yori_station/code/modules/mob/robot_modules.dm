/obj/item/robot_module/medical/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Default", "Heavy", "Pod Bot", "Sleek", "Droid", "Eyebot", "Standard", "Gibbs", "Noble-H", "Noble")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "medical"
			has_snowflake_deadsprite = TRUE
		if("Droid")
			cyborg_base_icon = "medical"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = 4
		if("Sleek")
			cyborg_base_icon = "sleekmed"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Eyebot")
			cyborg_base_icon = "eyebotmed"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
		if("Heavy")
			cyborg_base_icon = "heavymed"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Standard")
			cyborg_base_icon = "Standard-Medi"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
			has_snowflake_deadsprite = TRUE
		if("Gibbs")
			cyborg_base_icon = "gibbs"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble-H")
			cyborg_base_icon = "Noble-MED-H"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble")
			cyborg_base_icon = "Noble-MED"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Pod Bot")
			cyborg_base_icon = "podbot"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
	return ..()

/obj/item/robot_module/janitor/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/list/janimodels = list("Default", "Sleek", "Can", "Heavy", "Standard", "Flynn", "Noble-H", "Noble")
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in janimodels
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "janitor"
			has_snowflake_deadsprite = TRUE
		if("Sleek")
			cyborg_base_icon = "sleekjan"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Can")
			cyborg_base_icon = "canjan"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Heavy")
			cyborg_base_icon = "heavyres"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Standard")
			cyborg_base_icon = "Standard-Jani"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
			has_snowflake_deadsprite = TRUE
		if("Flynn")
			cyborg_base_icon = "flynn"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble-H")
			cyborg_base_icon = "Noble-JAN-H"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble")
			cyborg_base_icon = "Noble-JAN"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
	return ..()

/obj/item/robot_module/peacekeeper/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Default", "Spider", "Omoikane", "Xenobot")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "peace"
			has_snowflake_deadsprite = TRUE
		if("Spider")
			cyborg_base_icon = "whitespider"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Omoikane")
			cyborg_base_icon = "omoikane"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Xenobot")
			cyborg_base_icon = "xenobot-peace"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
	return ..()

/obj/item/robot_module/security/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Default", "Default - Treads", "Heavy", "Sleek", "Can", "Marina", "Spider", "Securitron", "Standard", "Noble-H", "Noble", "Eyebot")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "sec"
			has_snowflake_deadsprite = TRUE
		if("Default - Treads")
			cyborg_base_icon = "sec-tread"
			special_light_key = "sec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
		if("Sleek")
			cyborg_base_icon = "sleeksec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Marina")
			cyborg_base_icon = "marinasec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Can")
			cyborg_base_icon = "cansec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Spider")
			cyborg_base_icon = "spidersec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Heavy")
			cyborg_base_icon = "heavysec"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Securitron")
			cyborg_base_icon = "securitron"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Standard")
			cyborg_base_icon = "Standard-Secy"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble-H")
			cyborg_base_icon = "Noble-SEC-H"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble")
			cyborg_base_icon = "Noble-SEC"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Eyebot")
			cyborg_base_icon = "eyebotsec"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
	return ..()

obj/item/robot_module/detective/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Default", "Dark", "Classic", "Dark Classic")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "det"
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
		if("Dark")
			cyborg_base_icon = "peaceborg-noirbw"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
		if("Classic")
			cyborg_base_icon = "detective-old"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
		if("Dark Classic")
			cyborg_base_icon = "detective-old-dark"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
	return ..()

/obj/item/robot_module/butler/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Waitress", "Heavy", "Sleek", "Butler", "Tophat", "Kent", "Bro", "Standard", "Noble")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Waitress")
			cyborg_base_icon = "service_f"
		if("Butler")
			cyborg_base_icon = "service_m"
		if("Bro")
			cyborg_base_icon = "brobot"
		if("Kent")
			cyborg_base_icon = "kent"
			special_light_key = "medical"
			hat_offset = 3
		if("Tophat")
			cyborg_base_icon = "tophat"
			special_light_key = null
			hat_offset = INFINITY //He is already wearing a hat
		if("Sleek")
			cyborg_base_icon = "sleekserv"
			special_light_key = "sleekserv"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
		if("Heavy")
			cyborg_base_icon = "heavyserv"
			special_light_key = "heavyserv"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
		if("Standard")
			cyborg_base_icon = "Standard-Serv"
			special_light_key = "Standard-Serv"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
		if("Noble")
			cyborg_base_icon = "Noble-SRV"
			special_light_key = "Noble-SRV"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
	return ..()

/obj/item/robot_module/engineering/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/list/engymodels = list("Default", "Default - Treads", "Heavy", "Sleek", "Marina", "Can", "Spider", "Loader","Handy", "Standard", "Conagher", "Noble-H", "Noble", "Xenobot")
	if(R.client && R.client.ckey in list("nezuli"))
		engymodels += "Alina"
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in engymodels
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Default")
			cyborg_base_icon = "engineer"
			has_snowflake_deadsprite = TRUE
		if("Default - Treads")
			cyborg_base_icon = "engi-tread"
			special_light_key = "engineer"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
		if("Loader")
			cyborg_base_icon = "loaderborg"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = 5
		if("Handy")
			cyborg_base_icon = "handyeng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = INFINITY
		if("Sleek")
			cyborg_base_icon = "sleekeng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Can")
			cyborg_base_icon = "caneng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Marina")
			cyborg_base_icon = "marinaeng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Spider")
			cyborg_base_icon = "spidereng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Heavy")
			cyborg_base_icon = "heavyeng"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Standard")
			cyborg_base_icon = "Standard-Engi"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
			has_snowflake_deadsprite = TRUE
		if("Conagher")
			cyborg_base_icon = "conagher"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble-H")
			cyborg_base_icon = "Noble-ENG-H"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble")
			cyborg_base_icon = "Noble-ENG"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Xenobot")
			cyborg_base_icon = "xenobot"
			cyborg_icon_override = 'yori_station/icons/mob/robots_misc.dmi'
			has_snowflake_deadsprite = TRUE
	return ..()

/obj/item/robot_module/miner/be_transformed_to(obj/item/robot_module/old_module)
	var/mob/living/silicon/robot/R = loc
	var/borg_icon = input(R, "Select an icon!", "Robot Icon", null) as null|anything in list("Lavaland", "Heavy", "Sleek", "Marina", "Can", "Spider", "Asteroid", "Droid", "Standard", "Ishimura", "Noble-H", "Noble")
	if(!borg_icon)
		return FALSE
	switch(borg_icon)
		if("Lavaland")
			cyborg_base_icon = "miner"
			has_snowflake_deadsprite = TRUE
		if("Asteroid")
			cyborg_base_icon = "minerOLD"
			special_light_key = "miner"
			has_snowflake_deadsprite = TRUE
		if("Droid")
			cyborg_base_icon = "miner"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
			hat_offset = 4
		if("Sleek")
			cyborg_base_icon = "sleekmin"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Can")
			cyborg_base_icon = "canmin"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Marina")
			cyborg_base_icon = "marinamin"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Spider")
			cyborg_base_icon = "spidermin"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Heavy")
			cyborg_base_icon = "heavymin"
			cyborg_icon_override = 'modular_citadel/icons/mob/robots.dmi'
			has_snowflake_deadsprite = TRUE
		if("Standard")
			cyborg_base_icon = "Standard-Mine"
			cyborg_icon_override = 'yori_station/icons/mob/robots_paradise.dmi'
			has_snowflake_deadsprite = TRUE
		if("Ishimura")
			cyborg_base_icon = "ishimura"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble-H")
			cyborg_base_icon = "Noble-SUP-H"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
		if("Noble")
			cyborg_base_icon = "Noble-SUP"
			cyborg_icon_override = 'yori_station/icons/mob/robots_vg.dmi'
			has_snowflake_deadsprite = TRUE
	return ..()
