/datum/round_event_control/vent_clog
	name = "Clogged Vents: Normal"
	typepath = /datum/round_event/vent_clog
	weight = 10
	max_occurrences = 3
	min_players = 25

/datum/round_event/vent_clog
	announceWhen	= 1
	startWhen		= 5
	endWhen			= 35
	var/interval 	= 2
	var/list/vents  = list()
	var/randomProbability = 1
	var/reagentsAmount = 100
	var/list/saferChems = list(
		"water",
		"carbon",
		"flour",
		"cleaner",
		"nutriment",
		"condensedcapsaicin",
		"mushroomhallucinogen",
		"lube",
		"pink_glitter",
		"cryptobiolin",
		"plantbgone",
		"blood",
		"charcoal",
		"space_drugs",
		"morphine",
		"holywater",
		"ethanol",
		"hot_coco",
		"sacid",
		"mindbreaker",
		"rotatium",
		"bluespace",
		"pax",
		"laughter",
		"concentrated_barbers_aid",
		"colorful_reagent",
		"dizzysolution",
		"tiresolution",
		"sodiumchloride",
		"beer",
		"hair_dye",
		"sugar",
		"white_glitter",
		"growthserum",
		"cornoil",
		"uranium",
		"carpet",
		"firefighting_foam",
		"semen",
		"femcum",
		"tearjuice",
		"strange_reagent"

	)
	//needs to be chemid unit checked at some point

/datum/round_event/vent_clog/announce()
	priority_announce("The scrubbers network is experiencing a backpressure surge. Some ejection of contents may occur.", "Atmospherics alert")

/datum/round_event/vent_clog/setup()
	endWhen = rand(120, 180)
	for(var/obj/machinery/atmospherics/components/unary/vent_scrubber/temp_vent in GLOB.machines)
		var/turf/T = get_turf(temp_vent)
		var/area/A = T.loc
		if(T && is_station_level(T.z) && !temp_vent.welded && !A.safe)
			vents += temp_vent

	if(!vents.len)
		return kill()

/datum/round_event/vent_clog/tick()

	if(!vents.len)
		return kill()

	CHECK_TICK

	var/obj/machinery/atmospherics/components/unary/vent = pick(vents)
	vents -= vent

	if(!vent || vent.welded)
		return

	var/turf/T = get_turf(vent)
	if(!T)
		return

	var/datum/reagents/R = new/datum/reagents(1000)
	R.my_atom = vent
	if (prob(randomProbability))
		R.add_reagent(get_random_reagent_id(), reagentsAmount)
	else
		R.add_reagent(pick(saferChems), reagentsAmount)

	var/datum/effect_system/smoke_spread/chem/smoke_machine/C = new
	C.set_up(R,16,1,T)
	C.start()
	playsound(T, 'sound/effects/smoke.ogg', 50, 1, -3)

/datum/round_event_control/vent_clog/threatening
	name = "Clogged Vents: Threatening"
	typepath = /datum/round_event/vent_clog/threatening
	weight = 4
	min_players = 35
	max_occurrences = 1
	earliest_start = 35 MINUTES

/datum/round_event/vent_clog/threatening
	randomProbability = 10
	reagentsAmount = 200

/datum/round_event_control/vent_clog/catastrophic
	name = "Clogged Vents: Catastrophic"
	typepath = /datum/round_event/vent_clog/catastrophic
	weight = 2
	min_players = 45
	max_occurrences = 1
	earliest_start = 45 MINUTES

/datum/round_event/vent_clog/catastrophic
	randomProbability = 30
	reagentsAmount = 250

/datum/round_event_control/vent_clog/beer
	name = "Clogged Vents: Beer"
	typepath = /datum/round_event/vent_clog/beer
	max_occurrences = 0

/datum/round_event/vent_clog/beer
	reagentsAmount = 100

/datum/round_event_control/vent_clog/plasma_decon
	name = "Anti-Plasma Flood"
	typepath = /datum/round_event/vent_clog/plasma_decon
	max_occurrences = 0

/datum/round_event_control/vent_clog/female
	name = "Clogged Vents; Girlcum"
	typepath = /datum/round_event/vent_clog/female
	max_occurrences = 0

/datum/round_event/vent_clog/female
	reagentsAmount = 100

/datum/round_event_control/vent_clog/male
	name = "Clogged Vents: Semen"
	typepath = /datum/round_event/vent_clog/male
	max_occurrences = 0

/datum/round_event/vent_clog/male
	reagentsAmount = 100

/datum/round_event/vent_clog/beer/announce()
	priority_announce("The scrubbers network is experiencing an unexpected surge of pressurized beer. Some ejection of contents may occur.", "Atmospherics alert")

/datum/round_event/vent_clog/beer/start()
	for(var/obj/machinery/atmospherics/components/unary/vent in vents)
		if(vent && vent.loc && !vent.welded)
			var/datum/reagents/R = new/datum/reagents(1000)
			R.my_atom = vent
			R.add_reagent("beer", reagentsAmount)

			var/datum/effect_system/foam_spread/foam = new
			foam.set_up(200, get_turf(vent), R)
			foam.start()
		CHECK_TICK

/datum/round_event/vent_clog/male/announce()
	priority_announce("The scrubbers network is experiencing a backpressure surge. Some ejaculation of contents may occur.", "Atmospherics alert")

/datum/round_event/vent_clog/male/start()
	for(var/obj/machinery/atmospherics/components/unary/vent in vents)
		if(vent && vent.loc && !vent.welded)
			var/datum/reagents/R = new/datum/reagents(1000)
			R.my_atom = vent
			R.add_reagent("semen", reagentsAmount)

			var/datum/effect_system/foam_spread/foam = new
			foam.set_up(200, get_turf(vent), R)
			foam.start()
		CHECK_TICK

/datum/round_event/vent_clog/female/announce()
	priority_announce("The scrubbers network is experiencing a backpressure squirt. Some ejection of contents may occur.", "Atmospherics alert")

/datum/round_event/vent_clog/female/start()
	for(var/obj/machinery/atmospherics/components/unary/vent in vents)
		if(vent && vent.loc && !vent.welded)
			var/datum/reagents/R = new/datum/reagents(1000)
			R.my_atom = vent
			R.add_reagent("femcum", reagentsAmount)

			var/datum/effect_system/foam_spread/foam = new
			foam.set_up(200, get_turf(vent), R)
			foam.start()
		CHECK_TICK

/datum/round_event/vent_clog/plasma_decon/announce()
	priority_announce("We are deploying an experimental plasma decontamination system. Please stand away from the vents and do not breathe the smoke that comes out.", "Central Command Update")

/datum/round_event/vent_clog/plasma_decon/start()
	for(var/obj/machinery/atmospherics/components/unary/vent in vents)
		if(vent && vent.loc && !vent.welded)
			var/datum/effect_system/smoke_spread/freezing/decon/smoke = new
			smoke.set_up(7, get_turf(vent), 7)
			smoke.start()
		CHECK_TICK
