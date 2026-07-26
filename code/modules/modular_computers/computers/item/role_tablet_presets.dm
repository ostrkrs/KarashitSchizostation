/**
 * Command
 */

/obj/item/modular_computer/pda/heads
	icon_state = "/obj/item/modular_computer/pda/heads"
	greyscale_colors = "#67A364"
	max_capacity = parent_type::max_capacity * 2
	var/static/list/datum/computer_file/head_programs = list(
		/datum/computer_file/program/status,
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/budgetorders,
	)

/obj/item/modular_computer/pda/heads/Initialize(mapload)
	. = ..()
	for(var/programs in head_programs)
		var/datum/computer_file/program/program_type = new programs
		store_file(program_type)

/obj/item/modular_computer/pda/heads/captain
	name = "captain PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/captain"
	greyscale_config = /datum/greyscale_config/tablet/captain
	greyscale_colors = "#2C7CB2#FFFFFF#FFD55B"
	inserted_item = /obj/item/pen/fountain/captain

/obj/item/modular_computer/pda/heads/captain/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_TABLET_CHECK_DETONATE, PROC_REF(tab_no_detonate))
	for(var/datum/computer_file/program/messenger/messenger_app in stored_files)
		messenger_app.spam_mode = TRUE

/obj/item/modular_computer/pda/heads/captain/proc/tab_no_detonate()
	SIGNAL_HANDLER
	return COMPONENT_TABLET_NO_DETONATE

/obj/item/modular_computer/pda/heads/hop
	name = "head of personnel PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/hop"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#374f7e#a52f29"
	inserted_item = /obj/item/pen/fountain/hop
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/job_management,
	)

/obj/item/modular_computer/pda/heads/hos
	name = "head of security PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/hos"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#4586af#D99A2E"
	inserted_item = /obj/item/pen/fountain/hos
	starting_programs = list(
		/datum/computer_file/program/records/security,
	)

/obj/item/modular_computer/pda/heads/ce
	name = "chief engineer PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/ce"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#D99A2E#FAFAFA"
	inserted_item = /obj/item/pen/fountain/ce
	starting_programs = list(
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/supermatter_monitor,
	)

/obj/item/modular_computer/pda/heads/cmo
	name = "chief medical officer PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/cmo"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#05887d"
	inserted_item = /obj/item/pen/fountain/cmo
	starting_programs = list(
		/datum/computer_file/program/maintenance/phys_scanner,
		/datum/computer_file/program/records/medical,
	)

/obj/item/modular_computer/pda/heads/rd
	name = "research director PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/rd"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#B347BC"
	inserted_item = /obj/item/pen/fountain/rd
	starting_programs = list(
		/datum/computer_file/program/borg_monitor,
		/datum/computer_file/program/scipaper_program,
		/datum/computer_file/program/signal_commander,
	)

/obj/item/modular_computer/pda/heads/quartermaster
	name = "quartermaster PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/quartermaster"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#c4b787#8b4c31"
	inserted_item = /obj/item/pen/fountain/qm
	stored_paper = 20
	starting_programs = list(
		/datum/computer_file/program/shipping,
		/datum/computer_file/program/restock_tracker,
	)

/obj/item/modular_computer/pda/heads/steward
	name = "steward PDA"
	icon_state = "/obj/item/modular_computer/pda/heads/steward"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#67A364#8b4c31"
	inserted_item = /obj/item/pen/fountain/steward
	stored_paper = 20
	starting_programs = list(
		/datum/computer_file/program/restock_tracker,
	)

/obj/item/modular_computer/pda/heads/iaa
	name = "internal affairs agent PDA"
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#EA3232#FFF5ED"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/records/security,
	)

/obj/item/modular_computer/pda/heads/iaa/Initialize(mapload)
	. = ..()
	for(var/datum/computer_file/program/messenger/messenger_app in stored_files)
		messenger_app.spam_mode = TRUE

/obj/item/modular_computer/pda/iso
	name = "internal security operative PDA"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#EA3232#FFF5ED"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/records/security,
	)

/**
 * Security
 */

/obj/item/modular_computer/pda/security
	name = "security PDA"
	greyscale_colors = "#4586af"
	inserted_item = /obj/item/pen/red/security
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/criminalist
	name = "criminalist PDA"
	greyscale_colors = "#805A2F#990202"
	inserted_item = /obj/item/pen/red/security
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/robocontrol,
	)

/obj/item/modular_computer/pda/warden
	name = "warden PDA"
	icon_state = "/obj/item/modular_computer/pda/warden"
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#4586af#FFF5ED"
	inserted_item = /obj/item/pen/red/security
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/robocontrol,
	)

/**
 * Engineering
 */

/obj/item/modular_computer/pda/engineering
	name = "engineering PDA"
	icon_state = "/obj/item/modular_computer/pda/engineering"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#D99A2E#E3DF3D"
	starting_programs = list(
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/supermatter_monitor,
	)

/obj/item/modular_computer/pda/atmos
	name = "atmospherics PDA"
	icon_state = "/obj/item/modular_computer/pda/atmos"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#EEDC43#727272"
	starting_programs = list(
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/supermatter_monitor,
	)

/**
 * Science
 */

/obj/item/modular_computer/pda/science
	name = "scientist PDA"
	icon_state = "/obj/item/modular_computer/pda/science"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#B347BC"
	starting_programs = list(
		/datum/computer_file/program/atmosscan,
		/datum/computer_file/program/science,
		/datum/computer_file/program/scipaper_program,
		/datum/computer_file/program/signal_commander,
	)

/obj/item/modular_computer/pda/roboticist
	name = "roboticist PDA"
	icon_state = "/obj/item/modular_computer/pda/roboticist"
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#484848#D94927"
	starting_programs = list(
		/datum/computer_file/program/science,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/borg_monitor,
	)

/obj/item/modular_computer/pda/geneticist
	name = "geneticist PDA"
	icon_state = "/obj/item/modular_computer/pda/geneticist"
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#FAFAFA#0097CA"
	starting_programs = list(
		/datum/computer_file/program/records/medical,
	)

/**
 * Medical
 */

/obj/item/modular_computer/pda/medical
	name = "medical PDA"
	icon_state = "/obj/item/modular_computer/pda/medical"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#05887d"
	starting_programs = list(
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/robocontrol,
	)
	inserted_item = /obj/item/flashlight/pen

/obj/item/modular_computer/pda/medical/paramedic
	name = "paramedic PDA"
	icon_state = "/obj/item/modular_computer/pda/medical/paramedic"
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#073f3a#05887d"
	starting_programs = list(
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/radar/lifeline,
	)
	inserted_item = /obj/item/flashlight/pen/paramedic

/obj/item/modular_computer/pda/chemist
	name = "chemist PDA"
	icon_state = "/obj/item/modular_computer/pda/chemist"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#EA6400"

/obj/item/modular_computer/pda/coroner
	name = "coroner PDA"
	icon_state = "/obj/item/modular_computer/pda/coroner"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#FAFAFA#1f2626"
	starting_programs = list(
		/datum/computer_file/program/records/medical,
	)

/obj/item/modular_computer/pda/psychologist
	name = "psychologist PDA"
	icon_state = "/obj/item/modular_computer/pda/psychologist"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#333333#05887d"
	starting_programs = list(
		/datum/computer_file/program/records/medical,
		/datum/computer_file/program/robocontrol,
	)

/**
 * Supply
 */

/obj/item/modular_computer/pda/cargo
	name = "cargo technician PDA"
	icon_state = "/obj/item/modular_computer/pda/cargo"
	greyscale_colors = "#8b4c31"
	stored_paper = 20
	starting_programs = list(
		/datum/computer_file/program/shipping,
		/datum/computer_file/program/budgetorders,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/restock_tracker,
	)

/obj/item/modular_computer/pda/shaftminer
	name = "shaft miner PDA"
	icon_state = "/obj/item/modular_computer/pda/shaftminer"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#927444#4c202d"
	starting_programs = list(
		/datum/computer_file/program/skill_tracker,
	)

/**
 * Service
 */

/obj/item/modular_computer/pda/janitor
	name = "janitor PDA"
	icon_state = "/obj/item/modular_computer/pda/janitor"
	greyscale_colors = "#933ea8"
	starting_programs = list(
		/datum/computer_file/program/skill_tracker,
		/datum/computer_file/program/radar/custodial_locator,
	)

/obj/item/modular_computer/pda/chaplain
	name = "chaplain PDA"
	icon_state = "/obj/item/modular_computer/pda/chaplain"
	greyscale_config = /datum/greyscale_config/tablet/chaplain
	greyscale_colors = "#333333"

/obj/item/modular_computer/pda/botanist
	name = "botanist PDA"
	icon_state = "/obj/item/modular_computer/pda/botanist"
	greyscale_config = /datum/greyscale_config/tablet/stripe_thick_vertical
	greyscale_colors = "#50E193#71A7CA"

/obj/item/modular_computer/pda/cook
	name = "cook PDA"
	icon_state = "/obj/item/modular_computer/pda/botanist"
	greyscale_colors = "#FAFAFA"

/obj/item/modular_computer/pda/bar
	name = "bartender PDA"
	icon_state = "/obj/item/modular_computer/pda/bar"
	greyscale_colors = "#333333"
	inserted_item = /obj/item/pen/fountain

/obj/item/modular_computer/pda/clown
	name = "clown PDA"
	icon_state = "/obj/item/modular_computer/pda/clown"
	inserted_disk = /obj/item/computer_disk/virus/clown
	greyscale_config = /datum/greyscale_config/tablet/stripe_double_horizontal
	greyscale_colors = "#ee77b8#eec34b"
	inserted_item = /obj/item/toy/crayon/rainbow

/obj/item/modular_computer/pda/clown/Initialize(mapload)
	. = ..()
	AddComponent(\
		/datum/component/slippery,\
		knockdown = 12 SECONDS,\
		lube_flags = NO_SLIP_WHEN_WALKING,\
		on_slip_callback = CALLBACK(src, PROC_REF(AfterSlip)),\
		can_slip_callback = CALLBACK(src, PROC_REF(try_slip)),\
		slot_whitelist = ITEM_SLOT_ID | ITEM_SLOT_BELT,\
	)
	AddComponent(/datum/component/wearertargeting/sitcomlaughter, CALLBACK(src, PROC_REF(after_sitcom_laugh)))

/// Returns whether the PDA can slip or not, if we have a wearer then check if they are in a position to slip someone.
/obj/item/modular_computer/pda/clown/proc/try_slip(mob/living/slipper, mob/living/slippee)
	if(isnull(slipper))
		return TRUE
	if(!istype(slipper.get_item_by_slot(ITEM_SLOT_FEET), /obj/item/clothing/shoes/clown_shoes))
		to_chat(slipper,span_warning("[src] failed to slip anyone. Perhaps I shouldn't have abandoned my legacy..."))
		return FALSE
	return TRUE

/obj/item/modular_computer/pda/clown/update_overlays()
	. = ..()
	. += mutable_appearance(icon, "pda_stripe_clown") // clowns have eyes that go over their screen, so it needs to be compiled last

/obj/item/modular_computer/pda/clown/proc/AfterSlip(mob/living/carbon/human/M)
	if (istype(M) && (M.real_name != saved_identification))
		var/obj/item/computer_disk/virus/clown/cart = inserted_disk
		if(istype(cart) && cart.charges < 5)
			cart.charges++
			playsound(src,'sound/machines/ping.ogg',30,TRUE)

/obj/item/modular_computer/pda/clown/proc/after_sitcom_laugh(mob/victim)
	victim.visible_message("[src] lets out a burst of laughter!")

/obj/item/modular_computer/pda/mime
	name = "mime PDA"
	inserted_disk = /obj/item/computer_disk/virus/mime
	icon_state = "/obj/item/modular_computer/pda/mime"
	greyscale_config = /datum/greyscale_config/tablet/mime
	greyscale_colors = "#FAFAFA"
	inserted_item = /obj/item/toy/crayon/mime
	starting_programs = list(
		/datum/computer_file/program/emojipedia,
	)

/obj/item/modular_computer/pda/mime/Initialize(mapload)
	. = ..()
	for(var/datum/computer_file/program/messenger/msg in stored_files)
		msg.mime_mode = TRUE
		msg.alert_silenced = TRUE

/obj/item/modular_computer/pda/curator
	name = "curator PDA"
	icon_state = "/obj/item/modular_computer/pda/curator"
	greyscale_colors = "#805A2F"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/emojipedia,
		/datum/computer_file/program/newscaster,
		/datum/computer_file/program/portrait_printer,
	)

/obj/item/modular_computer/pda/curator/Initialize(mapload)
	. = ..()
	for(var/datum/computer_file/program/messenger/msg in stored_files)
		msg.alert_silenced = TRUE

/**
 * No Department/Station Trait
 */
/obj/item/modular_computer/pda/assistant
	name = "assistant PDA"
	flags_1 = parent_type::flags_1 | NO_NEW_GAGS_PREVIEW_1
	starting_programs = list(
		/datum/computer_file/program/bounty_board,
	)

/obj/item/modular_computer/pda/bridge_assistant
	name = "bridge assistant PDA"
	greyscale_colors = "#374f7e"
	starting_programs = list(
		/datum/computer_file/program/status,
	)

/obj/item/modular_computer/pda/veteran_advisor
	name = "security advisor PDA"
	greyscale_colors = "#EA3232"
	inserted_item = /obj/item/pen/fountain
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/coupon, //veteran discount
		/datum/computer_file/program/skill_tracker,
	)

/obj/item/modular_computer/pda/human_ai
	name = "modular interface"
	icon_state = "/obj/item/modular_computer/pda/human_ai"
	greyscale_colors = "#385697"

	has_light = FALSE //parity with borg PDAs
	comp_light_luminosity = 0
	inserted_item = null
	has_pda_programs = FALSE
	starting_programs = list(
		/datum/computer_file/program/messenger,
		/datum/computer_file/program/secureye/human_ai,
		/datum/computer_file/program/alarm_monitor,
		/datum/computer_file/program/status,
		/datum/computer_file/program/robocontrol,
		/datum/computer_file/program/borg_monitor,
	)

/obj/item/modular_computer/pda/pun_pun
	name = "monkey PDA"
	greyscale_colors = "#ffcc66"
	starting_programs = list(
		/datum/computer_file/program/bounty_board,
		/datum/computer_file/program/emojipedia,
	)

/**
 * Non-roles
 */
/obj/item/modular_computer/pda/syndicate
	name = "military PDA"
	greyscale_colors = "#891417"
	saved_identification = "John Doe"
	saved_job = "Citizen"
	device_theme = PDA_THEME_SYNDICATE

/obj/item/modular_computer/pda/syndicate/Initialize(mapload)
	. = ..()
	var/datum/computer_file/program/messenger/msg = locate() in stored_files
	if(msg)
		msg.invisible = TRUE
