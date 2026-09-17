/datum/language/machine
	name = "Trinary"
	desc = "An efficient language of trinary code, used by machines."
	spans = list(SPAN_ROBOT)
	key = "6"
	flags = NO_STUTTER
	syllables = list(
		"0", "1", "2",
	)
	space_chance = 0
	sentence_chance = 0
	between_word_sentence_chance = 0
	between_word_space_chance = 5
	additional_syllable_low = 0
	additional_syllable_high = 0
	default_priority = 90

	icon_state = "eal"
