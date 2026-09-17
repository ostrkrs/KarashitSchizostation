/datum/culture/human_basic

/datum/culture/vatborn
	allow_numbers_in_names = TRUE
	always_use_default_namelist = FALSE

/datum/culture/vatborn/get_random_name(gender = NEUTER,
	name_count = default_name_count,
	syllable_min = default_name_syllable_min,
	syllable_max = default_name_syllable_max,
	force_use_syllables = FALSE,
	datum/language/language_to_pick_from = /datum/language/common,
)
	if(gender != MALE && gender != FEMALE)
		gender = pick(MALE, FEMALE)

	var/new_name = ""

	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(49,57)) // 1-9
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	switch(rand(1,5))
		if(1) new_name = NAME
		if(2) new_name = "[LTR][LTR]-[NAME]"
		if(3) new_name = "[NAME]-[LTR][LTR]"
		if(4) new_name = "[NAME]-[NUM][NUM][NUM]"
		if(5) new_name = "[NUM][NUM][NUM]-[NAME]"
	. = 1
	#undef LTR
	#undef NUM
	#undef NAME

	return new_name
