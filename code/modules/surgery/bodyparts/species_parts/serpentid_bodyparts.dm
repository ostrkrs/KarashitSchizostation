#define SERPENTID_PUNCH_LOW 3
#define SERPENTID_PUNCH_HIGH 5
#define BODYPART_ICON_SERPENTID 'icons/mob/human/species/serpentid/serpentid_parts_greyscale.dmi'
#define SERPENTID_BRUTE_MODIFIER 0.7
#define SERPENTID_BURN_MODIFIER 1.2

/obj/item/bodypart/head/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	head_flags = HEAD_EYESPRITES|HEAD_EYEHOLES
	dmg_overlay_type = null
	is_dimorphic = FALSE

/obj/item/bodypart/head/serpentid/Initialize(mapload)
	worn_ears_offset = new(
		attached_part = src,
		feature_key = OFFSET_EARS,
		offset_y = list("north" = 9, "south" = 9, "east" = 9, "west" = 9),
	)
	worn_glasses_offset = new(
		attached_part = src,
		feature_key = OFFSET_GLASSES,
		offset_y = list("north" = 10, "south" = 10, "east" = 10, "west" = 10),
		offset_x = list("east" = 2, "west" = -2),
	)
	return ..()

/obj/item/bodypart/chest/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	acceptable_bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	dmg_overlay_type = null
	is_dimorphic = FALSE

/obj/item/bodypart/chest/serpentid/Initialize(mapload)
	worn_back_offset = new(
		attached_part = src,
		feature_key = OFFSET_BACK,
		offset_y = list("north" = 5, "south" = 5, "east" = 5, "west" = 5),
	)
	worn_accessory_offset = new(
		attached_part = src,
		feature_key = OFFSET_ACCESSORY,
		offset_y = list("north" = 5, "south" = 5, "east" = 5, "west" = 5),
	)
	worn_neck_offset = new(
		attached_part = src,
		feature_key = OFFSET_NECK,
		offset_y = list("north" = 5, "south" = 5, "east" = 5, "west" = 5),
	)
	return ..()

/obj/item/bodypart/chest/serpentid/get_butt_sprite()
	return icon('icons/mob/butts.dmi', BUTT_SPRITE_SERPENTID)

/obj/item/bodypart/arm/left/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	unarmed_damage_low = SERPENTID_PUNCH_LOW
	unarmed_damage_high = SERPENTID_PUNCH_HIGH
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	dmg_overlay_type = null

/obj/item/bodypart/arm/right/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	unarmed_damage_low = SERPENTID_PUNCH_LOW
	unarmed_damage_high = SERPENTID_PUNCH_HIGH
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	dmg_overlay_type = null

/obj/item/bodypart/leg/left/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	footprint_sprite = FOOTPRINT_SPRITE_TAIL
	dmg_overlay_type = null

/obj/item/bodypart/leg/right/serpentid
	icon_greyscale = BODYPART_ICON_SERPENTID
	bodyshape = BODYSHAPE_SERPENTID
	limb_id = SPECIES_SERPENTID
	brute_modifier = SERPENTID_BRUTE_MODIFIER
	burn_modifier = SERPENTID_BURN_MODIFIER
	footprint_sprite = FOOTPRINT_SPRITE_TAIL
	dmg_overlay_type = null

#undef SERPENTID_PUNCH_LOW
#undef SERPENTID_PUNCH_HIGH
#undef BODYPART_ICON_SERPENTID
#undef SERPENTID_BURN_MODIFIER
#undef SERPENTID_BRUTE_MODIFIER
