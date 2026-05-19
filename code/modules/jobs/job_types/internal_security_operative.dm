/datum/job/iso
	title = JOB_INTERNAL_SECURITY_OPERATIVE
	alt_titles = JOB_INTERNAL_SECURITY_OPERATIVE_ALT_TITLES
	description = "Protect Internal Affairs Agent you're assigned to, \
		enforce the crew to follow directives when fine papers alone isn't enough."
	department_head = list(JOB_CENTCOM_COMMANDER)
	faction = FACTION_SHIP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Internal Affairs Agent and the Solstice Reach Headquarters"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "INTERNAL_SECURITY_OPERATIVE"

	outfit = /datum/outfit/job/iso
	plasmaman_outfit = /datum/outfit/plasmaman/bar

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_ISO
	departments_list = list(
		/datum/job_department/command,
		)
	rpg_title = "Bodyguard"
	family_heirlooms = list(/obj/item/book/manual/wiki/security_corp_law,
		/obj/item/lighter
	)

	mail_goodies = list(
		/obj/item/cigarette/cigar = 20,
		/obj/item/storage/fancy/cigarettes/cigars = 15,
	)

	job_flags = SHIP_JOB_FLAGS

/datum/outfit/job/iso
	name = "Internal Security Operative"
	jobtype = /datum/job/iso

	id = /obj/item/card/id/advanced/platinum
	id_trim = /datum/id_trim/job/iso
	head = /obj/item/clothing/head/soft/iso
	uniform = /obj/item/clothing/under/rank/security/iso
	suit = /obj/item/clothing/suit/armor/vest/alt/iso
	belt = /obj/item/modular_computer/pda/iso
	ears = /obj/item/radio/headset/headset_comsec/alt
	gloves = /obj/item/clothing/gloves/color/black/iso
	shoes = /obj/item/clothing/shoes/jackboots/iso

	box = /obj/item/storage/box/survival/security
	implants = list(/obj/item/implant/mindshield)
