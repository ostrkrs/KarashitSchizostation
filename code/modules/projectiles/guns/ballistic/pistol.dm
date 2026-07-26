/obj/item/gun/ballistic/automatic/pistol
	name = "pistol"
	desc = "A weird 10mm handgun."
	icon_state = "pistol"
	w_class = WEIGHT_CLASS_SMALL
	abstract_type = /obj/item/gun/ballistic/automatic/pistol
	recoil = RECOIL_PISTOL
	recoil_backtime_multiplier = 1
	accepted_magazine_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = TRUE
	burst_size = 1
	fire_delay = 2
	actions_types = list()
	bolt_type = BOLT_TYPE_LOCKING
	fire_sound = 'sound/items/weapons/gun/pistol/shot.ogg'
	dry_fire_sound = 'sound/items/weapons/gun/pistol/dry_fire.ogg'
	suppressed_sound = 'sound/items/weapons/gun/pistol/shot_suppressed.ogg'
	load_sound = 'sound/items/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/items/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/items/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/items/weapons/gun/pistol/mag_release.ogg'
	rack_sound = 'sound/items/weapons/gun/pistol/rack_small.ogg'
	lock_back_sound = 'sound/items/weapons/gun/pistol/lock_small.ogg'
	bolt_drop_sound = 'sound/items/weapons/gun/pistol/drop_small.ogg'
	drop_sound = 'sound/items/handling/gun/ballistics/pistol/pistol_drop1.ogg'
	pickup_sound = 'sound/items/handling/gun/ballistics/pistol/pistol_pickup1.ogg'
	fire_sound_volume = 90
	bolt_wording = "slide"
	suppressor_x_offset = 10
	suppressor_y_offset = -1

/obj/item/gun/ballistic/automatic/pistol/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

// WT-23 AKA ENFORCER //
/obj/item/gun/ballistic/automatic/pistol/wt23
	name = "WT-23 Pistol"
	desc = "A cheap and light-weight 10mm handgun, designed for paramilitary and private use. \
		Has a threaded barrel for suppressors."
	manufacturer = CORPORATION_WARD_TAKAHASHI
	icon_state = "wt23"
	mag_display = FALSE

/obj/item/gun/ballistic/automatic/pistol/wt23/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

/obj/item/gun/ballistic/automatic/pistol/wt23/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/wt23/fire_mag
	spawn_magazine_type = /obj/item/ammo_box/magazine/m10mm/fire

/obj/item/gun/ballistic/automatic/pistol/wt23/brand/solstice_reach
	name = "SR-23 \"Enforcer\" Pistol"
	desc = "A modified version of WT-23 handgun. Has no threads for suppressors."
	manufacturer = CORPORATION_SOLSTICE_REACH
	licensor = CORPORATION_WARD_TAKAHASHI
	icon_state = "sr23"
	can_suppress = FALSE
	spawn_magazine_type = /obj/item/ammo_box/magazine/m10mm/rubber
	pin = /obj/item/firing_pin/implant/mindshield

// FLAT GUN //

/obj/item/gun/ballistic/automatic/pistol/stickman
	name = "flat gun"
	desc = "A 2 dimensional gun.. what?"
	icon_state = "flatgun"
	mag_display = FALSE
	show_bolt_icon = FALSE

/obj/item/gun/ballistic/automatic/pistol/stickman/equipped(mob/user, slot)
	..()
	to_chat(user, span_notice("As you try to manipulate [src], it slips out of your possession.."))
	if(prob(50))
		to_chat(user, span_notice("..and vanishes from your vision! Where the hell did it go?"))
		qdel(src)
		user.update_icons()
	else
		to_chat(user, span_notice("..and falls into view. Whew, that was a close one."))
		user.dropItemToGround(src)
