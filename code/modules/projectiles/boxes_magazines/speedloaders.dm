/obj/item/ammo_box/speedloader
	name = "speed loader (base type)"
	desc = "This shouldn't be here. Report this to a coder, thanks!"
	multiple_sprites = AMMO_BOX_PER_BULLET
	ammo_box_multiload = (AMMO_BOX_MULTILOAD_IN | AMMO_BOX_MULTILOAD_OUT_LOADED)
	// You can feed ammo in from a box (assuming someone ever codes a relevant ammo box),
	// you can feed ammo out to a revolver's cylinder,
	// but you can't use it to teleport six bullets into a detached rifle magazine.

/obj/item/ammo_box/speedloader/c357
	name = "speed loader (.357)"
	desc = "Designed to quickly reload seven-chamber .357 revolvers."
	icon_state = "speedloader_357"
	ammo_type = /obj/item/ammo_casing/c357
	max_ammo = 6
	caliber = CALIBER_357
	item_flags = NO_MAT_REDEMPTION

/obj/item/ammo_box/speedloader/c38
	name = "speed loader (.38)"
	desc = "Designed to quickly reload six-chamber .38 Special revolvers."
	icon_state = "speedloader_38"
	base_icon_state = "speedloader_38"
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 6
	caliber = CALIBER_38
	custom_materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT)

/obj/item/ammo_box/speedloader/c38/trac
	name = "speed loader (.38 TRAC)"
	desc = parent_type::desc + " TRAC bullets embed a tracking implant within the target's body."
	ammo_type = /obj/item/ammo_casing/c38/trac

/obj/item/ammo_box/speedloader/c38/rubber
	name = "speed loader (.38 Rubber)"
	desc = parent_type::desc + " Rubber rounds are incredibly bouncy and MOSTLY less-lethal, making them great to show off trickshots with."
	ammo_type = /obj/item/ammo_casing/c38/rubber

/obj/item/ammo_box/speedloader/c38/hp
	name = "speed loader (.38 Hollow-Point)"
	desc = parent_type::desc + " hollow-point bullets expand on impact, reducing outright stopping power but \
		shredding targets and causing massive bleeding in close range, \
		at the cost of suffering greatly against armor and distant targets."
	ammo_type = /obj/item/ammo_casing/c38/hp

/obj/item/ammo_box/speedloader/strilka310
	name = "stripper clip (.310 Strilka)"
	desc = "A five-round stripper clip for .310 Strilka rifles."
	icon_state = "310_strip"
	ammo_type = /obj/item/ammo_casing/strilka310
	max_ammo = 5
	ammo_box_multiload = AMMO_BOX_MULTILOAD_ALL
	caliber = CALIBER_STRILKA310

/obj/item/ammo_box/speedloader/strilka310/surplus
	name = "stripper clip (.310 Surplus)"
	desc = parent_type::desc + " This one has a few spots of rust where there's not excessive amounts of gun grease."
	ammo_type = /obj/item/ammo_casing/strilka310/surplus

/obj/item/ammo_box/speedloader/strilka310/phasic
	name = "stripper clip (.310 Phasic)"
	desc = parent_type::desc + " These should come with phasic bullets, \
		hastily developed after an incident where a misfire resulted in the destruction of Atrakor Silverscale's priceless Vigoxian Fabergé egg. \
		These fancy bullets pass right though valuables until they end up in a far less expensive human skull."
	ammo_type = /obj/item/ammo_casing/strilka310/phasic
