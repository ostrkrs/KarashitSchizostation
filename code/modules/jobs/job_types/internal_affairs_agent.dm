/datum/job/iaa
	title = JOB_INTERNAL_AFFAIRS_AGENT
	alt_titles = JOB_INTERNAL_AFFAIRS_AGENT_ALT_TITLES
	description = "Advocate for prisoners, create law-binding contracts, \
		ensure Security is following protocol and Space Law."
	department_head = list(JOB_CENTCOM_COMMANDER)
	faction = FACTION_SHIP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Solstice Reach Headquarters and Space Law"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "INTERNAL_AFFAIRS_AGENT"

	outfit = /datum/outfit/job/iaa

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_IAA
	departments_list = list(
		/datum/job_department/command,
		)
	rpg_title = "Magistrate"
	family_heirlooms = list(/obj/item/gavelhammer, /obj/item/book/manual/wiki/security_corp_law)

	mail_goodies = list(
		/obj/item/reagent_containers/cup/fish_feed = 20,
		/obj/item/aquarium_prop/rocks = 15,
		/obj/item/aquarium_prop/seaweed = 15,
		/obj/item/aquarium_prop/seaweed/top = 15,
		/obj/item/aquarium_prop/sand = 15,
		/obj/item/aquarium_prop/treasure = 5,
	)

	job_flags = SHIP_JOB_FLAGS

	job_tone = "objection"


/datum/outfit/job/iaa
	name = "Internal Affairs Agent"
	jobtype = /datum/job/iaa

	id = /obj/item/card/id/advanced/platinum
	id_trim = /datum/id_trim/job/iaa
	uniform = /obj/item/clothing/under/rank/civilian/iaa/red
	suit = /obj/item/clothing/suit/toggle/iaa/red
	belt = /obj/item/modular_computer/pda/heads/iaa
	ears = /obj/item/radio/headset/headset_comsec
	shoes = /obj/item/clothing/shoes/laceup
	neck = /obj/item/clothing/neck/tie/red/tied
	r_pocket = /obj/item/clothing/accessory/iaa_badge

	chameleon_extras = /obj/item/stamp/law
	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/iaa/pre_equip(mob/living/carbon/human/H, visuals_only = FALSE)
	if(visuals_only)
		return ..()

	var/static/use_purple_suit = FALSE //If there is one internal affairs agent, they get the default blue suit. If another internal affairs agent joins the round, they start with a purple suit.
	if(use_purple_suit)
		uniform = /obj/item/clothing/under/rank/civilian/iaa/purpsuit
		suit = /obj/item/clothing/suit/toggle/iaa/purple
	else
		use_purple_suit = TRUE
	..()

/datum/outfit/job/iaa/get_types_to_preload()
	. = ..()
	. += /obj/item/clothing/under/rank/civilian/iaa/purpsuit
	. += /obj/item/clothing/suit/toggle/iaa/purple
