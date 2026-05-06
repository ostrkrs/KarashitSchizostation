/datum/preference/choiced/serpentid_color
	savefile_key = "feature_serpcolor"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Chitin color"
	should_generate_icons = TRUE

/datum/preference/choiced/serpentid_color/has_relevant_feature(datum/preferences/preferences)
	// Skips checks for relevant_organ, relevant trait etc. because serpentid color is tied directly to species (atm)
	return current_species_has_savekey(preferences)

/datum/preference/choiced/serpentid_color/init_possible_values()
	return assoc_to_keys(GLOB.color_list_serpentid)

/datum/preference/choiced/serpentid_color/icon_for(value)
	var/static/datum/universal_icon/serpentid_base
	if (isnull(serpentid_base))
		serpentid_base = uni_icon('icons/mob/human/species/serpentid/serpentid_parts_greyscale.dmi', "serpentid_head")
		serpentid_base.blend_icon(uni_icon('icons/mob/human/species/serpentid/serpentid_parts_greyscale.dmi', "serpentid_chest"), ICON_OVERLAY)
		serpentid_base.blend_icon(uni_icon('icons/mob/human/species/serpentid/serpentid_parts_greyscale.dmi', "serpentid_l_hand"), ICON_OVERLAY)
		serpentid_base.blend_icon(uni_icon('icons/mob/human/species/serpentid/serpentid_parts_greyscale.dmi', "serpentid_r_hand"), ICON_OVERLAY)

		var/datum/universal_icon/eyes = uni_icon('icons/mob/human/species/serpentid/serpentid_eyes.dmi', "eyes_serpentid_l")
		eyes.blend_icon(uni_icon('icons/mob/human/species/serpentid/serpentid_eyes.dmi', "eyes_serpentid_r"), ICON_OVERLAY)
		serpentid_base.blend_icon(eyes, ICON_OVERLAY)

		serpentid_base.scale(64, 64)
		serpentid_base.crop(15, 64 - 31, 15 + 31, 64)

	var/datum/universal_icon/icon = serpentid_base.copy()
	icon.blend_color(GLOB.color_list_serpentid[value], ICON_MULTIPLY)
	return icon

/datum/preference/choiced/serpentid_color/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_SERPENTID_COLOR] = GLOB.color_list_serpentid[value]
