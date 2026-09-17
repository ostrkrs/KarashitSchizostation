/datum/culture/serpentid
	allow_numbers_in_names = TRUE

/datum/culture/serpentid/get_random_name(
	gender = NEUTER,
	name_count = default_name_count,
	syllable_min = default_name_syllable_min,
	syllable_max = default_name_syllable_max,
	unique = FALSE,
	force_use_syllables = FALSE,
)

	if(force_use_syllables)
		return ..()

	var/new_name = ""

	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(49,57)) // 1-9

	switch(rand(1,4))
		if(1) new_name = "[pick(GLOB.serpentid_prefix)]-[NUM][NUM]"
		if(2) new_name = "[NUM][NUM]-[pick(GLOB.serpentid_prefix)]"
		if(3) new_name = "[LTR][LTR]-[NUM][NUM]"
		if(4) new_name = "[NUM][NUM]-[LTR][LTR]"

	#undef LTR
	#undef NUM

	return new_name
