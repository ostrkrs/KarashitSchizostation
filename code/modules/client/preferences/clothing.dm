/proc/generate_underwear_icon(datum/sprite_accessory/accessory, datum/universal_icon/base_icon, color)
	var/datum/universal_icon/final_icon = base_icon.copy()

	if (!isnull(accessory))
		var/datum/universal_icon/accessory_icon = uni_icon('icons/mob/clothing/underwear.dmi', accessory.icon_state)
		if (color && !accessory.use_static)
			accessory_icon.blend_color(color, ICON_MULTIPLY)
		final_icon.blend_icon(accessory_icon, ICON_OVERLAY)

	final_icon.crop(10, 1, 22, 13)
	final_icon.scale(32, 32)

	return final_icon

/// Backpack preference
/datum/preference/choiced/backpack
	savefile_key = "backpack"
	savefile_identifier = PREFERENCE_CHARACTER
	main_feature_name = "Backpack"
	category = PREFERENCE_CATEGORY_CLOTHING
	should_generate_icons = TRUE

/datum/preference/choiced/backpack/init_possible_values()
	return list(
		GBACKPACK,
		GSATCHEL,
		GDUFFELBAG,
		GMESSENGER,
		DBACKPACK,
		DSATCHEL,
		DDUFFELBAG,
		DMESSENGER,
		LSATCHEL,
	)

/datum/preference/choiced/backpack/create_default_value()
	return DBACKPACK

/datum/preference/choiced/backpack/icon_for(value)
	switch (value)
		if (GBACKPACK)
			return /obj/item/storage/backpack
		if (GSATCHEL)
			return /obj/item/storage/backpack/satchel
		if (GDUFFELBAG)
			return /obj/item/storage/backpack/duffelbag
		if (GMESSENGER)
			return /obj/item/storage/backpack/messenger

		// In a perfect world, these would be your department's backpack.
		// However, this doesn't factor in assistants, or no high slot, and would
		// also increase the spritesheet size a lot.
		// I play medical doctor, and so medical doctor you get.
		if (DBACKPACK)
			return /obj/item/storage/backpack/medic
		if (DSATCHEL)
			return /obj/item/storage/backpack/satchel/med
		if (DDUFFELBAG)
			return /obj/item/storage/backpack/duffelbag/med
		if (DMESSENGER)
			return /obj/item/storage/backpack/messenger/med

		if (LSATCHEL)
			return /obj/item/storage/backpack/satchel/leather

/datum/preference/choiced/backpack/apply_to_human(mob/living/carbon/human/target, value)
	target.backpack = value

#define USE_GENDER "Use gender"

/// Jumpsuit preference
/datum/preference/choiced/jumpsuit
	main_feature_name = "Jumpsuit"
	savefile_key = "jumpsuit_style"
	savefile_identifier = PREFERENCE_CHARACTER
	priority = PREFERENCE_PRIORITY_BODY_TYPE
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	can_randomize = FALSE

/datum/preference/choiced/jumpsuit/init_possible_values()
	return list(
		USE_GENDER,
		PREF_SUIT,
		PREF_SKIRT,
	)

/datum/preference/choiced/jumpsuit/create_default_value()
	return USE_GENDER

/datum/preference/choiced/jumpsuit/apply_to_human(mob/living/carbon/human/target, value)
	if (value == USE_GENDER)
		if (target.gender == FEMALE)
			target.jumpsuit_style = PREF_SKIRT
		else
			target.jumpsuit_style = PREF_SUIT
	else
		target.jumpsuit_style = value

/datum/preference/choiced/jumpsuit/is_accessible(datum/preferences/preferences)
	if (!..(preferences))
		return FALSE

	var/datum/species/species = preferences.read_preference(/datum/preference/choiced/species)
	return initial(species.sexes)

#undef USE_GENDER

/// Socks preference
/datum/preference/choiced/socks
	savefile_key = "socks"
	savefile_identifier = PREFERENCE_CHARACTER
	main_feature_name = "Socks"
	category = PREFERENCE_CATEGORY_CLOTHING
	should_generate_icons = TRUE
	can_randomize = FALSE

/datum/preference/choiced/socks/init_possible_values()
	return assoc_to_keys_features(SSaccessories.socks_list)

/datum/preference/choiced/socks/create_default_value()
	return /datum/sprite_accessory/clothing/socks/nude::name

/datum/preference/choiced/socks/icon_for(value)
	var/static/datum/universal_icon/lower_half

	if (isnull(lower_half))
		lower_half = uni_icon('icons/blanks/32x32.dmi', "nothing")
		lower_half.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_r_leg"), ICON_OVERLAY)
		lower_half.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_l_leg"), ICON_OVERLAY)

	return generate_underwear_icon(SSaccessories.socks_list[value], lower_half)

/datum/preference/choiced/socks/apply_to_human(mob/living/carbon/human/target, value)
	target.socks = value

/datum/preference/choiced/socks/is_accessible(datum/preferences/preferences)
	if (!..(preferences))
		return FALSE

	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species = GLOB.species_prototypes[species_type]
	return !(TRAIT_NO_UNDERWEAR in species.inherent_traits)

/datum/preference/choiced/socks/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "socks_color"

	return data

/// Top underwear preference
/datum/preference/choiced/top_underwear
	savefile_key = "top_underwear"
	savefile_identifier = PREFERENCE_CHARACTER
	priority = PREFERENCE_PRIORITY_BODY_TYPE
	main_feature_name = "Top Underwear"
	category = PREFERENCE_CATEGORY_CLOTHING
	should_generate_icons = TRUE
	can_randomize = FALSE

/datum/preference/choiced/top_underwear/init_possible_values()
	return assoc_to_keys_features(SSaccessories.top_underwear_list)

/datum/preference/choiced/top_underwear/create_default_value()
	return /datum/sprite_accessory/clothing/underwear_top/nude::name

/datum/preference/choiced/top_underwear/create_informed_default_value(datum/preferences/preferences)
	switch(preferences.read_preference(/datum/preference/choiced/gender))
		if(MALE)
			return /datum/sprite_accessory/clothing/underwear_top/nude::name
		if(FEMALE)
			return /datum/sprite_accessory/clothing/underwear_top/sports_bra::name

	return ..()

/datum/preference/choiced/top_underwear/icon_for(value)
	var/static/datum/universal_icon/body
	if (isnull(body))
		body = uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_r_leg")
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_l_leg"), ICON_OVERLAY)
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_r_arm"), ICON_OVERLAY)
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_l_arm"), ICON_OVERLAY)
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_r_hand"), ICON_OVERLAY)
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_l_hand"), ICON_OVERLAY)
		body.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_chest_m"), ICON_OVERLAY)

	var/datum/universal_icon/icon_with_top_underwear = body.copy()

	if (value != "Nude")
		var/datum/sprite_accessory/accessory = SSaccessories.top_underwear_list[value]
		icon_with_top_underwear.blend_icon(uni_icon('icons/mob/clothing/underwear.dmi', accessory.icon_state), ICON_OVERLAY)

	icon_with_top_underwear.crop(9, 9, 23, 23)
	icon_with_top_underwear.scale(32, 32)
	return icon_with_top_underwear

/datum/preference/choiced/top_underwear/apply_to_human(mob/living/carbon/human/target, value)
	target.top_underwear = value

/datum/preference/choiced/top_underwear/is_accessible(datum/preferences/preferences)
	if (!..(preferences))
		return FALSE

	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species = GLOB.species_prototypes[species_type]
	return !(TRAIT_NO_UNDERWEAR in species.inherent_traits)

/datum/preference/choiced/top_underwear/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "top_underwear_color"

	return data

/// Underwear preference
/datum/preference/choiced/bottom_underwear
	savefile_key = "bottom_underwear"
	savefile_identifier = PREFERENCE_CHARACTER
	main_feature_name = "Bottom Underwear"
	category = PREFERENCE_CATEGORY_CLOTHING
	should_generate_icons = TRUE
	can_randomize = FALSE

/datum/preference/choiced/bottom_underwear/init_possible_values()
	return assoc_to_keys_features(SSaccessories.bottom_underwear_list)

/datum/preference/choiced/bottom_underwear/create_default_value()
	return /datum/sprite_accessory/clothing/underwear_bottom/nude::name

/datum/preference/choiced/bottom_underwear/icon_for(value)
	var/static/datum/universal_icon/lower_half

	if (isnull(lower_half))
		lower_half = uni_icon('icons/blanks/32x32.dmi', "nothing")
		lower_half.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_chest_m"), ICON_OVERLAY)
		lower_half.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_r_leg"), ICON_OVERLAY)
		lower_half.blend_icon(uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "human_l_leg"), ICON_OVERLAY)

	return generate_underwear_icon(SSaccessories.bottom_underwear_list[value], lower_half, COLOR_ALMOST_BLACK)

/datum/preference/choiced/bottom_underwear/apply_to_human(mob/living/carbon/human/target, value)
	target.bottom_underwear = value

/datum/preference/choiced/bottom_underwear/is_accessible(datum/preferences/preferences)
	if (!..(preferences))
		return FALSE

	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species = GLOB.species_prototypes[species_type]
	return !(TRAIT_NO_UNDERWEAR in species.inherent_traits)

/datum/preference/choiced/bottom_underwear/compile_constant_data()
	var/list/data = ..()

	data[SUPPLEMENTAL_FEATURE_KEY] = "bottom_underwear_color"

	return data
