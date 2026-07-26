/datum/preference/choiced/caver_tail
	savefile_key = "feature_caver_tail"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/tail/caver

/datum/preference/choiced/caver_tail/init_possible_values()
	return assoc_to_keys_features(SSaccessories.tails_list_caver)

/datum/preference/choiced/caver_tail/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_TAIL_CAVER] = value

/datum/preference/choiced/caver_tail/create_default_value()
	return /datum/sprite_accessory/tails/caver/default::name


/datum/preference/choiced/caver_boneplates
	savefile_key = "feature_caver_boneplate"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_external_organ = /obj/item/organ/horns/caver

/datum/preference/choiced/caver_boneplates/init_possible_values()
	return assoc_to_keys_features(SSaccessories.boneplates_list)

/datum/preference/choiced/caver_boneplates/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_BONEPLATE] = value


/datum/preference/choiced/caver_color
	savefile_key = "feature_caver_skincolor"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	main_feature_name = "Skin color"

/datum/preference/choiced/caver_color/has_relevant_feature(datum/preferences/preferences)
	return current_species_has_savekey(preferences)

/datum/preference/choiced/caver_color/init_possible_values()
	return assoc_to_keys(GLOB.color_list_caver)

/datum/preference/choiced/caver_color/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_CAVER_COLOR] = GLOB.color_list_caver[value]
