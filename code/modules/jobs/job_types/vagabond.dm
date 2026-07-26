/datum/job/vagabond
	title = JOB_VAGABOND
	description = "Lurk in the maintenance tunnels, avoid security team, and survive until the shift ends."
	faction = FACTION_SHIP
	total_positions = 0
	spawn_positions = 2
	minimal_player_age = 7
	exp_requirements = 120
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	paycheck = PAYCHECK_ZERO
	config_tag = "VAGABOND"

	outfit = /datum/outfit/job/vagabond

	display_order = JOB_DISPLAY_ORDER_PRISONER
	department_for_prefs = /datum/job_department/assistant

	family_heirlooms = list(/obj/item/flashlight)
	rpg_title = "Rogue"
	job_flags = JOB_NEW_PLAYER_JOINABLE | JOB_EQUIP_RANK | JOB_ASSIGN_QUIRKS | JOB_CANNOT_OPEN_SLOTS | JOB_ANTAG_PROTECTED

/datum/outfit/job/vagabond
	name = JOB_VAGABOND
	jobtype = /datum/job/vagabond

	id = null
	id_trim = null
	uniform = /obj/item/clothing/under/color/black
	backpack_contents = list(/obj/item/card/id/vagabond)
	belt = null
	ears = /obj/item/radio/headset/no_mic
	l_hand = /obj/item/storage/toolbox/emergency
