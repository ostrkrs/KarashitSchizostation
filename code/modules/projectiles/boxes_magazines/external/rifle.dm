// .38 (Battle Rifle) //

/obj/item/ammo_box/magazine/m38
	name = "battle rifle magazine (.38)"
	desc = "A .38 magazine for a BR-38 battle rifle."
	icon_state = "38mag"
	base_icon_state = "38mag"
	w_class = WEIGHT_CLASS_NORMAL
	ammo_type = /obj/item/ammo_casing/c38
	caliber = CALIBER_38
	custom_materials = list(
		/datum/material/iron = HALF_SHEET_MATERIAL_AMOUNT * 3,
		/datum/material/plastic = HALF_SHEET_MATERIAL_AMOUNT * 1,
	)
	max_ammo = 15
	ammo_band_icon = "+38mag_ammo_band"
	ammo_band_color = null

/obj/item/ammo_box/magazine/m38/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state][ammo_count() ? "-ammo" : ""]"

/obj/item/ammo_box/magazine/m38/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/m38/trac
	name = "battle rifle magazine (.38 TRAC)"
	desc = parent_type::desc + " TRAC bullets embed a tracking implant within the target's body and are entirely nonlethal."
	ammo_type = /obj/item/ammo_casing/c38/trac
	ammo_band_color = COLOR_AMMO_TRACK

/obj/item/ammo_box/magazine/m38/rubber
	name = "battle rifle magazine (.38 Rubber)"
	desc = parent_type::desc + " These rounds are incredibly bouncy and MOSTLY nonlethal, making them great to show off trickshots with."
	ammo_type = /obj/item/ammo_casing/c38/rubber
	ammo_band_color = COLOR_AMMO_RUBBER

/obj/item/ammo_box/magazine/m38/hp
	name = "battle rifle magazine (.38 Hollow-Point)"
	desc = parent_type::desc + " These rounds expand on impact, allowing them to shred the target and cause massive bleeding. Very weak against armor and distant targets."
	ammo_type = /obj/item/ammo_casing/c38/hp
	ammo_band_color = COLOR_AMMO_HOLLOWPOINT
