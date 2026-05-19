/datum/job/detective
	title = JOB_CRIMINALIST
	alt_titles = JOB_CRIMINALIST_ALT_TITLES
	description = "Investigate crimes, gather evidence, perform interrogations, \
		look badass, smoke cigarettes."
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list(JOB_HEAD_OF_SECURITY)
	faction = FACTION_SHIP
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_HOS
	minimal_player_age = 7
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "DETECTIVE"

	outfit = /datum/outfit/job/detective
	plasmaman_outfit = /datum/outfit/plasmaman/detective
	departments_list = list(
		/datum/job_department/security,
		)

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	mind_traits = list(SECURITY_MIND_TRAITS)
	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_DETECTIVE

	mail_goodies = list(
		/obj/item/storage/fancy/cigarettes = 25,
		/obj/item/ammo_box/speedloader/c38 = 20,
		/obj/item/ammo_box/speedloader/c38/dumdum = 5,
		/obj/item/ammo_box/speedloader/c38/hotshot = 5,
		/obj/item/ammo_box/speedloader/c38/iceblox = 5,
		/obj/item/ammo_box/speedloader/c38/match = 5,
		/obj/item/ammo_box/speedloader/c38/trac = 5,
		/obj/item/card/id/advanced/plainclothes = 5,
		/obj/item/storage/belt/holster/detective/full = 1,
	)

	family_heirlooms = list(/obj/item/reagent_containers/cup/glass/bottle/whiskey)
	rpg_title = "Thiefcatcher" //I guess they caught them all rip thief...
	job_flags = SHIP_JOB_FLAGS | JOB_ANTAG_PROTECTED

	job_tone = "objection"


/datum/outfit/job/detective
	name = "Criminalist"
	jobtype = /datum/job/detective

	id = /obj/item/card/id/advanced/plainclothes

	id_trim = /datum/id_trim/job/detective
	uniform = /obj/item/clothing/under/rank/security/detective
	suit = /obj/item/clothing/suit/toggle/jacket/det_trench
	backpack_contents = list(
		/obj/item/detective_scanner = 1,
		/obj/item/melee/baton = 1,
		/obj/item/storage/box/evidence = 1,
		)
	belt = /obj/item/modular_computer/pda/detective
	ears = /obj/item/radio/headset/headset_sec/alt
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/fedora/det_hat
	neck = /obj/item/clothing/neck/tie/detective
	shoes = /obj/item/clothing/shoes/sneakers/brown
	l_pocket = /obj/item/toy/crayon/white

	chameleon_extras = list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/gun/ballistic/revolver/c38/detective,
		)
	implants = list(/obj/item/implant/mindshield)

	skillchips = list(/obj/item/skillchip/job/detectives_taste)
