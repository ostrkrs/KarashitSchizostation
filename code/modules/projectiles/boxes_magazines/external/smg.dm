/obj/item/ammo_box/magazine/smg46mm_wt550
	name = "\improper WT-550 magazine (4.6x30mm)"
	desc = "A top-loading 4.6x30mm magazine, specifically for the WT-550 autorifle."
	icon_state = "46x30mmt-20"
	base_icon_state = "46x30mmt"
	ammo_band_icon = "+46x30mmab"
	ammo_band_color = null
	ammo_type = /obj/item/ammo_casing/c46x30mm
	caliber = CALIBER_46X30MM
	max_ammo = 20

/obj/item/ammo_box/magazine/smg46mm_wt550/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 4)]"

/obj/item/ammo_box/magazine/smg46mm_wt550/wtap
	name = "\improper WT-550 magazine (4.6x30mm AP)"
	MAGAZINE_TYPE_ARMORPIERCE
	ammo_type = /obj/item/ammo_casing/c46x30mm/ap

/obj/item/ammo_box/magazine/smg46mm_wt550/wtic
	name = "\improper WT-550 magazine (4.6x30mm incendiary)"
	MAGAZINE_TYPE_INCENDIARY
	ammo_type = /obj/item/ammo_casing/c46x30mm/inc


/obj/item/ammo_box/magazine/smartgun
	name = "Abielle magazine (.160 Smart)"
	desc = "A deep .160 Smart magazine, suitable for the Abielle smart-SMG."
	icon_state = "smartgun"
	base_icon_state = "smartgun"
	ammo_type = /obj/item/ammo_casing/c160smart
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE
	caliber = CALIBER_160SMART
	max_ammo = 50


/obj/item/ammo_box/magazine/smgm8mm_c20r
	name = "\improper C-20r magazine (8mm)"
	desc = "A long 8mm magazine, suitable for the C-20r SMG."
	icon_state = "c20r45"
	base_icon_state = "c20r45"
	ammo_band_icon = "+c20rab"
	ammo_band_color = null
	ammo_type = /obj/item/ammo_casing/c8mm
	caliber = CALIBER_8MM
	max_ammo = 24

/obj/item/ammo_box/magazine/smgm8mm_c20r/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 2)]"

/obj/item/ammo_box/magazine/smgm8mm_c20r/ap
	name = "\improper C-20r magazine (8mm AP)"
	MAGAZINE_TYPE_ARMORPIERCE
	ammo_type = /obj/item/ammo_casing/c8mm/ap

/obj/item/ammo_box/magazine/smgm8mm_c20r/hp
	name = "\improper C-20r magazine (8mm HP)"
	MAGAZINE_TYPE_HOLLOWPOINT
	ammo_type = /obj/item/ammo_casing/c8mm/hp

/obj/item/ammo_box/magazine/smgm8mm_c20r/incen
	name = "\improper C-20r magazine (8mm incendiary)"
	MAGAZINE_TYPE_INCENDIARY
	ammo_type = /obj/item/ammo_casing/c8mm/fire
