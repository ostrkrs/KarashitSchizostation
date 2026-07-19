/datum/station_trait/spider_infestation
	name = "Spider Infestation"
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 5
	report_message = "We have introduced a natural countermeasure to reduce the number of rodents on board your station."
	trait_to_give = STATION_TRAIT_SPIDER_INFESTATION

/datum/station_trait/unique_ai
	name = "Unique AI"
	trait_type = STATION_TRAIT_NEUTRAL
	trait_flags = parent_type::trait_flags | STATION_TRAIT_REQUIRES_AI
	weight = 5
	show_in_report = TRUE
	report_message = "For experimental purposes, this station AI might show divergence from default lawset. Do not meddle with this experiment, we've removed \
		access to your set of alternative upload modules because we know you're already thinking about meddling with this experiment."
	trait_to_give = STATION_TRAIT_UNIQUE_AI

/datum/station_trait/unique_ai/on_round_start()
	. = ..()
	for(var/mob/living/silicon/ai/ai as anything in GLOB.ai_list)
		ai.show_laws()

/datum/station_trait/ian_adventure
	name = "Ian's Adventure"
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 5
	show_in_report = FALSE
	cost = STATION_TRAIT_COST_LOW
	report_message = "Ian has gone exploring somewhere on the deck."

/datum/station_trait/ian_adventure/on_round_start()
	for(var/mob/living/basic/pet/dog/corgi/dog in GLOB.mob_list)
		if(!(istype(dog, /mob/living/basic/pet/dog/corgi/ian) || istype(dog, /mob/living/basic/pet/dog/corgi/puppy/ian)))
			continue

		// Makes this station trait more interesting. Ian probably won't go anywhere without a little external help.
		// Also gives him a couple extra lives to survive eventual tiders.
		dog.deadchat_plays(DEMOCRACY_MODE|MUTE_DEMOCRACY_MESSAGES, 3 SECONDS)
		dog.AddComponent(/datum/component/multiple_lives, 2)
		RegisterSignal(dog, COMSIG_ON_MULTIPLE_LIVES_RESPAWN, PROC_REF(do_corgi_respawn))

		// The extended safety checks at time of writing are about chasms and lava
		// if there are any chasms and lava on stations in the future, woah
		var/turf/current_turf = get_turf(dog)
		var/turf/adventure_turf = find_safe_turf(extended_safety_checks = TRUE, dense_atoms = FALSE)

		// Poof!
		do_smoke(location=current_turf)
		dog.forceMove(adventure_turf)
		do_smoke(location=adventure_turf)

/// Moves the new dog somewhere safe, equips it with the old one's inventory and makes it deadchat_playable.
/datum/station_trait/ian_adventure/proc/do_corgi_respawn(mob/living/basic/pet/dog/corgi/old_dog, mob/living/basic/pet/dog/corgi/new_dog, gibbed, lives_left)
	SIGNAL_HANDLER

	var/turf/current_turf = get_turf(new_dog)
	var/turf/adventure_turf = find_safe_turf(extended_safety_checks = TRUE, dense_atoms = FALSE)

	do_smoke(location=current_turf)
	new_dog.forceMove(adventure_turf)
	do_smoke(location=adventure_turf)

	if(old_dog.inventory_back)
		var/obj/item/old_dog_back = old_dog.inventory_back
		old_dog.inventory_back = null
		old_dog_back.forceMove(new_dog)
		new_dog.inventory_back = old_dog_back

	if(old_dog.inventory_head)
		var/obj/item/old_dog_hat = old_dog.inventory_head
		old_dog.inventory_head = null
		new_dog.place_on_head(old_dog_hat)

	new_dog.update_corgi_fluff()
	new_dog.regenerate_icons()
	new_dog.deadchat_plays(DEMOCRACY_MODE|MUTE_DEMOCRACY_MESSAGES, 3 SECONDS)
	if(lives_left)
		RegisterSignal(new_dog, COMSIG_ON_MULTIPLE_LIVES_RESPAWN, PROC_REF(do_corgi_respawn))

	if(!gibbed) //The old dog will now disappear so we won't have more than one Ian at a time.
		qdel(old_dog)

/datum/station_trait/glitched_pdas
	name = "PDA glitch"
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 5
	show_in_report = TRUE
	cost = STATION_TRAIT_COST_MINIMAL
	report_message = "Something seems to be wrong with the PDAs issued to you all this shift. Nothing too bad though."
	trait_to_give = STATION_TRAIT_PDA_GLITCHED

/datum/station_trait/announcement_intern
	name = "Announcement Intern"
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 1
	show_in_report = TRUE
	report_message = "Please be nice to him."
	blacklist = list(/datum/station_trait/announcement_medbot)

/datum/station_trait/announcement_intern/New()
	. = ..()
	SSstation.announcer = /datum/centcom_announcer/intern

/datum/station_trait/announcement_intern/get_pulsar_message()
	var/advisory_string = "Advisory Level: <b>(TITLE HERE)</b></center><BR>"
	advisory_string += "(Copy/Paste the summary provided by the Threat Intelligence Office in this field. You shouldn't have any trouble with this just make sure to replace this message before hitting the send button. Also, make sure there's coffee ready for the meeting at 06:00 when you're done.)"
	return advisory_string

/datum/station_trait/announcement_medbot
	name = "Announcement \"System\""
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 1
	show_in_report = TRUE
	report_message = "Our announcement system is under scheduled maintanance at the moment. Thankfully, we have a backup."
	blacklist = list(/datum/station_trait/announcement_intern)

/datum/station_trait/announcement_medbot/New()
	. = ..()
	SSstation.announcer = /datum/centcom_announcer/medbot

/datum/station_trait/scryers
	name = "Scryers"
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 2
	cost = STATION_TRAIT_COST_LOW
	show_in_report = TRUE
	report_message = "Corporation has chosen your crew for an experiment - everyone has free scryers! Use these to talk to other people easily and privately."

/datum/station_trait/scryers/New()
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_JOB_AFTER_SPAWN, PROC_REF(on_job_after_spawn))

/datum/station_trait/scryers/proc/on_job_after_spawn(datum/source, datum/job/job, mob/living/spawned, client/player_client)
	SIGNAL_HANDLER
	if(!ishuman(spawned))
		return
	var/mob/living/carbon/human/humanspawned = spawned
	// Put their silly little scarf or necktie somewhere else
	var/obj/item/silly_little_scarf = humanspawned.wear_neck
	if(silly_little_scarf)
		var/list/backup_slots = list(LOCATION_LPOCKET, LOCATION_RPOCKET, LOCATION_BACKPACK)
		humanspawned.temporarilyRemoveItemFromInventory(silly_little_scarf)
		silly_little_scarf.forceMove(get_turf(humanspawned))
		humanspawned.equip_in_one_of_slots(silly_little_scarf, backup_slots, qdel_on_fail = FALSE)

	var/obj/item/clothing/neck/link_scryer/loaded/new_scryer = new(spawned)
	new_scryer.label = spawned.name
	new_scryer.update_name()

	spawned.equip_to_slot_or_del(new_scryer, ITEM_SLOT_NECK, initial = FALSE)

/// Crew don't ever spawn as enemies of the station. Obsesseds, blob infection, space changelings etc can still happen though
/datum/station_trait/background_checks
	name = "Station-Wide Background Checks"
	report_message = "We replaced the intern doing your crew's background checks with a trained screener for this shift! \
		That said, our enemies may just find another way to infiltrate the station, so be careful."
	trait_type = STATION_TRAIT_NEUTRAL
	weight = 1
	show_in_report = TRUE
	can_revert = FALSE

	dynamic_threat_id = "Background Checks"

/datum/station_trait/background_checks/New()
	. = ..()
	RegisterSignal(SSdynamic, COMSIG_DYNAMIC_PRE_ROUNDSTART, PROC_REF(modify_config))

/datum/station_trait/background_checks/proc/modify_config(datum/source, list/dynamic_config)
	SIGNAL_HANDLER

	for(var/datum/dynamic_ruleset/ruleset as anything in subtypesof(/datum/dynamic_ruleset))
		if(ruleset.ruleset_flags & RULESET_INVADER)
			continue
		dynamic_config[initial(ruleset.config_tag)] ||= list()
		dynamic_config[initial(ruleset.config_tag)][NAMEOF(ruleset, weight)] = 0

/datum/station_trait/pet_day
	name = "Bring Your Pet To Work Day"
	trait_type = STATION_TRAIT_NEUTRAL
	show_in_report = FALSE
	weight = 2
	sign_up_button = TRUE

/datum/station_trait/pet_day/New()
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_JOB_AFTER_SPAWN, PROC_REF(on_job_after_spawn))

/datum/station_trait/pet_day/setup_lobby_button(atom/movable/screen/lobby/button/sign_up/lobby_button)
	lobby_button.desc = "Want to bring your innocent pet to a giant metal deathtrap? Click here to customize it!"
	RegisterSignal(lobby_button, COMSIG_ATOM_UPDATE_OVERLAYS, PROC_REF(on_lobby_button_update_overlays))
	return ..()

/datum/station_trait/pet_day/can_display_lobby_button(client/player)
	return sign_up_button

/datum/station_trait/pet_day/on_round_start()
	return

/datum/station_trait/pet_day/on_lobby_button_click(atom/movable/screen/lobby/button/sign_up/lobby_button, updates)
	var/mob/our_player = lobby_button.get_mob()
	var/client/player_client = our_player.client
	if(isnull(player_client))
		return
	var/datum/pet_customization/customization = GLOB.customized_pets[REF(player_client)]
	if(isnull(customization))
		customization = new(player_client)
	INVOKE_ASYNC(customization, TYPE_PROC_REF(/datum, ui_interact), our_player)

/datum/station_trait/pet_day/proc/on_job_after_spawn(datum/source, datum/job/job, mob/living/spawned, client/player_client)
	SIGNAL_HANDLER

	var/datum/pet_customization/customization = GLOB.customized_pets[REF(player_client)]
	if(isnull(customization))
		return
	INVOKE_ASYNC(customization, TYPE_PROC_REF(/datum/pet_customization, create_pet), spawned, player_client)

/datum/station_trait/pet_day/proc/on_lobby_button_update_overlays(atom/movable/screen/lobby/button/sign_up/lobby_button, list/overlays)
	overlays += "select_pet"

/// We're pulling a Jim Kramer with this one boys
/datum/station_trait/gmm_spotlight
	name = "GMM Economic Spotlight"
	report_message = "This shift, the Galactic Mineral Market is doing a showcase on your crew's affulence! Every paycheck, the station newscasters will alert the crew who has the most credits."
	trait_type = STATION_TRAIT_NEUTRAL
	trait_to_give = STATION_TRAIT_ECONOMY_ALERTS
	weight = 2
	cost = STATION_TRAIT_COST_LOW
	show_in_report = TRUE

	dynamic_threat_id = "GMM Econ Spotlight"
