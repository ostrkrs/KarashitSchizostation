/datum/station_trait/carp_infestation
	name = "Carp infestation"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 5
	show_in_report = TRUE
	report_message = "Dangerous fauna is present in the area of this station."
	trait_to_give = STATION_TRAIT_CARP_INFESTATION

/datum/station_trait/distant_supply_lines
	name = "Distant supply lines"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 3
	show_in_report = TRUE
	report_message = "Due to the distance to our normal supply lines, cargo orders are more expensive."
	blacklist = list(/datum/station_trait/strong_supply_lines)

/datum/station_trait/distant_supply_lines/on_round_start()
	SSeconomy.pack_price_modifier *= 1.2

/datum/station_trait/hangover
	name = "Hangover"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 2
	show_in_report = TRUE
	report_message = "Ohh....Man....That mandatory office party from last shift...God that was awesome..I woke up in some random toilet 3 sectors away..."
	trait_to_give = STATION_TRAIT_HANGOVER

/datum/station_trait/hangover/New()
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_JOB_AFTER_LATEJOIN_SPAWN, PROC_REF(on_job_after_spawn))

/datum/station_trait/hangover/revert()
	for (var/obj/effect/landmark/start/hangover/hangover_spot in GLOB.start_landmarks_list)
		QDEL_LIST(hangover_spot.hangover_debris)

	return ..()

/datum/station_trait/hangover/proc/on_job_after_spawn(datum/source, datum/job/job, mob/living/spawned_mob)
	SIGNAL_HANDLER

	if(!prob(35))
		return
	var/obj/item/hat = pick(
		/obj/item/clothing/head/costume/sombrero/green,
		/obj/item/clothing/head/fedora,
		/obj/item/clothing/mask/balaclava,
		/obj/item/clothing/head/costume/ushanka,
		/obj/item/clothing/head/costume/cardborg,
		/obj/item/clothing/head/costume/pirate,
		/obj/item/clothing/head/cone,
		)
	hat = new hat(spawned_mob)
	spawned_mob.equip_to_slot_or_del(hat, ITEM_SLOT_HEAD)


/datum/station_trait/blackout
	name = "Blackout"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 3
	show_in_report = TRUE
	report_message = "Ship's lights seem to be damaged, be safe when starting your shift today."

/datum/station_trait/blackout/on_round_start()
	. = ..()
	for(var/obj/machinery/power/apc/apc as anything in SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/power/apc))
		if(is_station_level(apc.z) && prob(60))
			apc.overload_lighting()

/datum/station_trait/empty_maint
	name = "Cleaned out maintenance"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 5
	cost = STATION_TRAIT_COST_LOW //Most of maints is literal trash anyway
	show_in_report = TRUE
	report_message = "Our workers cleaned out most of the junk in the maintenace areas."
	blacklist = list(/datum/station_trait/filled_maint)
	trait_to_give = STATION_TRAIT_EMPTY_MAINT

	// This station trait is checked when loot drops initialize, so it's too late
	can_revert = FALSE

/datum/station_trait/overflow_job_bureaucracy
	name = "Overflow bureaucracy mistake"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 5
	show_in_report = TRUE
	var/chosen_job_name

/datum/station_trait/overflow_job_bureaucracy/New()
	. = ..()
	RegisterSignal(SSjob, COMSIG_SUBSYSTEM_POST_INITIALIZE, PROC_REF(set_overflow_job_override))

/datum/station_trait/overflow_job_bureaucracy/get_report()
	return "[name] - It seems for some reason we put out the wrong job-listing for the overflow role this shift...I hope you like [chosen_job_name]s."

/datum/station_trait/overflow_job_bureaucracy/proc/set_overflow_job_override(datum/source)
	SIGNAL_HANDLER
	var/datum/job/picked_job = pick(SSjob.get_valid_overflow_jobs())
	chosen_job_name = LOWER_TEXT(picked_job.title) // like Chief Engineers vs like chief engineers
	SSjob.set_overflow_role(picked_job.type)

/datum/station_trait/slow_shuttle
	name = "Slow Shuttle"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 5
	show_in_report = TRUE
	report_message = "Due to distance to our supply station, the cargo shuttle will have a slower flight time to your cargo department."
	blacklist = list(/datum/station_trait/quick_shuttle)

/datum/station_trait/slow_shuttle/on_round_start()
	. = ..()
	SSshuttle.supply.callTime *= 1.5

// Abstract station trait used for traits that modify a random event in some way (their weight or max occurrences).
/datum/station_trait/random_event_weight_modifier
	name = "Random Event Modifier"
	report_message = "A random event has been modified this shift! Someone forgot to set this!"
	show_in_report = TRUE
	abstract_type = /datum/station_trait/random_event_weight_modifier
	weight = 0

	/// The path to the round_event_control that we modify.
	var/datum/round_event_control/event_control_path
	/// Multiplier applied to the weight of the event.
	var/weight_multiplier = 1
	/// Flat modifier added to the amount of max occurances the random event can have.
	var/max_occurrences_modifier = 0

/datum/station_trait/random_event_weight_modifier/on_round_start()
	. = ..()
	var/datum/round_event_control/modified_event = locate(event_control_path) in SSevents.control
	if(!modified_event)
		CRASH("[type] could not find a round event controller to modify on round start (likely has an invalid event_control_path set)!")

	modified_event.weight *= weight_multiplier
	modified_event.max_occurrences += max_occurrences_modifier

/datum/station_trait/random_event_weight_modifier/ion_storms
	name = "Ionic Stormfront"
	report_message = "An ionic stormfront is passing over your station's system. Expect an increased likelihood of ion storms afflicting your station's silicon units."
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 3
	event_control_path = /datum/round_event_control/ion_storm
	weight_multiplier = 2

/datum/station_trait/random_event_weight_modifier/ion_storms/get_pulsar_message()
	var/advisory_string = "Advisory Level: <b>ERROR</b></center><BR>"
	advisory_string += scramble_message_replace_chars("Your sector's advisory level is ERROR. An electromagnetic field has stormed through nearby surveillance equipment, causing major data loss. Partial data was recovered and showed no credible threats to Nanotrasen assets within the Spinward Sector; however, the Department of Intelligence advises maintaining high alert against potential threats due to the lack of complete data.", 35)
	return advisory_string

/datum/station_trait/random_event_weight_modifier/rad_storms
	name = "Radiation Stormfront"
	report_message = "A radioactive stormfront is passing through your station's system. Expect an increased likelihood of radiation storms passing over your station, as well the potential for multiple radiation storms to occur during your shift."
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 2
	event_control_path = /datum/round_event_control/radiation_storm
	weight_multiplier = 1.5
	max_occurrences_modifier = 2

/datum/station_trait/random_event_weight_modifier/dust_storms
	name = "Dust Stormfront"
	report_message = "The space around your station is clouded by heavy pockets of space dust. Expect an increased likelihood of space dust storms damaging the station hull."
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 2
	cost = STATION_TRAIT_COST_LOW
	event_control_path = /datum/round_event_control/meteor_wave/dust_storm
	weight_multiplier = 2
	max_occurrences_modifier = 3

/datum/station_trait/cramped_escape_pods
	name = "Cramped Escape Pods"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 5
	show_in_report = TRUE
	report_message = "Due to budget cuts, we have downsized your escape pods."
	trait_to_give = STATION_TRAIT_SMALLER_PODS
	blacklist = list(/datum/station_trait/luxury_escape_pods)

/datum/station_trait/spiked_drinks
	name = "Spiked Drinks"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 3
	cost = STATION_TRAIT_COST_LOW
	show_in_report = TRUE
	report_message = "Due to a mishap at the Robust Softdrinks Megafactory, some drinks may contain traces of ethanol or psychoactive chemicals."
	trait_to_give = STATION_TRAIT_SPIKED_DRINKS

#undef GLOW_NEBULA
