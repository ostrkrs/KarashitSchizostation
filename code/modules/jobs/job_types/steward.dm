/datum/job/steward
	title = JOB_STEWARD
	description = "Manage the service department, \
		ensure your staff will keep station clean and fed, \
		and the clown does not access the deep fryer unsupervised."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list(JOB_CAPTAIN)
	head_announce = list(RADIO_CHANNEL_SERVICE)
	faction = FACTION_SHIP
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_CAPTAIN
	required_character_age = 25
	minimal_player_age = 7
	exp_required_type_department = EXP_TYPE_SERVICE
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "STEWARD"

	outfit = /datum/outfit/job/steward
	plasmaman_outfit = /datum/outfit/plasmaman/head_of_personnel // PLACEHOLDER, will delete plasmaman outfit later
	departments_list = list(
		/datum/job_department/service,
		/datum/job_department/command,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV
	bounty_types = CIV_JOB_RANDOM

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_STEWARD

	mail_goodies = list(
		/obj/item/storage/box/coffeepack = 5,
		/obj/item/clothing/glasses/monocle = 1
	)

	family_heirlooms = list(/obj/item/reagent_containers/cup/glass/trophy/silver_cup)
	rpg_title = "Guild Questgiver"
	job_flags = SHIP_JOB_FLAGS | HEAD_OF_STAFF_JOB_FLAGS

	human_authority = JOB_AUTHORITY_NON_HUMANS_ALLOWED

	voice_of_god_power = 1.4 //Command staff has authority

/datum/outfit/job/steward
	name = "Steward"
	jobtype = /datum/job/steward
	backpack_contents = list(
		/obj/item/melee/baton/telescopic/bronze = 1,
	)
	id_trim = /datum/id_trim/job/steward
	id = /obj/item/card/id/advanced/silver
	uniform = /obj/item/clothing/under/rank/civilian/steward
	belt = /obj/item/modular_computer/pda/heads/steward
	ears = /obj/item/radio/headset/heads/steward
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/clipboard

	chameleon_extras = /obj/item/stamp/head/steward
