/datum/preference/choiced/vatborn_body_markings
	savefile_key = "feature_vatborn_body_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_body_markings = /datum/bodypart_overlay/simple/body_marking/vatborn_body

/datum/preference/choiced/vatborn_body_markings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.vatborn_body_markings_list)

/datum/preference/choiced/vatborn_body_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_VATBORN_BODY_MARKINGS] = value

/datum/preference/choiced/vatborn_head_markings
	savefile_key = "feature_vatborn_head_markings"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	relevant_body_markings = /datum/bodypart_overlay/simple/body_marking/vatborn_head

/datum/preference/choiced/vatborn_head_markings/init_possible_values()
	return assoc_to_keys_features(SSaccessories.vatborn_head_markings_list)

/datum/preference/choiced/vatborn_head_markings/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features[FEATURE_VATBORN_HEAD_MARKINGS] = value
