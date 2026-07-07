/datum/job/bartender
	title = JOB_BARTENDER
	alt_titles = JOB_BARTENDER_ALT_TITLES
	description = "Serve booze, mix drinks, keep the crew drunk."
	department_head = list(JOB_HEAD_OF_PERSONNEL)
	faction = FACTION_SHIP
	total_positions = 1
	spawn_positions = 1
	supervisors = SUPERVISOR_STEWARD
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "BARTENDER"

	outfit = /datum/outfit/job/bartender

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV
	display_order = JOB_DISPLAY_ORDER_BARTENDER
	bounty_types = CIV_JOB_DRINK
	departments_list = list(
		/datum/job_department/service,
		)

	family_heirlooms = list(/obj/item/rag, /obj/item/clothing/head/hats/tophat, /obj/item/reagent_containers/cup/glass/shaker)

	mail_goodies = list(
		/obj/item/storage/box/coffeepack = 10,
		/obj/item/storage/box/coffeepack/robusta = 5,
		/obj/item/reagent_containers/cup/bottle/ethanol = 5,
		/obj/item/reagent_containers/cup/glass/bottle/beer = 10
	)

	job_flags = SHIP_JOB_FLAGS
	rpg_title = "Tavernkeeper"

/datum/job/bartender/award_service(client/winner, award)
	winner.give_award(award, winner.mob)

	var/datum/venue/bar = SSrestaurant.all_venues[/datum/venue/bar]
	var/award_score = bar.total_income
	var/award_status = winner.get_award_status(/datum/award/score/bartender_tourist_score)
	if(award_score - award_status > 0)
		award_score -= award_status
	winner.give_award(/datum/award/score/bartender_tourist_score, winner.mob, award_score)


/datum/outfit/job/bartender
	name = "Bartender"
	jobtype = /datum/job/bartender

	id_trim = /datum/id_trim/job/bartender
	neck = /obj/item/clothing/neck/bowtie
	uniform = /obj/item/clothing/under/costume/buttondown/slacks/service
	belt = /obj/item/modular_computer/pda/bar
	ears = /obj/item/radio/headset/headset_srv
	shoes = /obj/item/clothing/shoes/laceup
	box = /obj/item/storage/box/survival/bartender

/datum/outfit/job/bartender/post_equip(mob/living/carbon/human/equipped, visuals_only = FALSE)
	..()
	ADD_TRAIT(equipped, TRAIT_DRUNKEN_BRAWLER, INNATE_TRAIT)
