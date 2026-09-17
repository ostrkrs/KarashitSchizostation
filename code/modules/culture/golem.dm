/datum/culture/golem/get_random_name(
	gender = NEUTER,
	name_count = default_name_count,
	syllable_min = default_name_syllable_min,
	syllable_max = default_name_syllable_max,
	force_use_syllables = FALSE,
)
	if(force_use_syllables)
		return ..()

	var/name = pick(GLOB.golem_names)
	// 3% chance to be given a human surname for "lore reasons"
	if (prob(3))
		name += " [pick(GLOB.last_names)]"
	return name
