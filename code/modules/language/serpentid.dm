/datum/language/serpentid
	name = "Serpent"
	desc = "A complex language that contains various sounds and movements, spoken only by Serpentids."
	key = "l"
	syllables = null
	special_characters = null
	default_priority = 70

	flags = NO_STUTTER | TONGUELESS_SPEECH
	always_use_default_namelist = TRUE
	icon_state = "animal"

/datum/language/serpentid/scramble_sentence(input, list/mutual_languages)
	var/sentence = "[pick("ритмично", "коротко", "быстро", "громко", "мелодично", "монотонно", "резко", "характерно")] \
		[pick("жужжит", "щёлкает", "верещит", "стрекочет")] \
		[pick("пару раз" , "несколько раз", "три раза")]."

	write_word_cache(input, sentence)

	return sentence

/datum/language/serpentid/get_random_name(
	gender = NEUTER,
	name_count = default_name_count,
	syllable_min = default_name_syllable_min,
	syllable_max = default_name_syllable_max,
	unique = FALSE,
	force_use_syllables = FALSE,
)

	if(force_use_syllables)
		return ..()

	if(prob(50))
		return "[pick(GLOB.serpentid_prefix)]-[rand(1, 999)]"
	else
		return "[capitalize(ascii2text(rand(97, 122)) + ascii2text(rand(97, 122)))]-[rand(1, 999)]"

/datum/language_holder/serpentid
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_MIND),
		/datum/language/serpentid = list(LANGUAGE_MIND),
	)
	spoken_languages = list(
		/datum/language/serpentid = list(LANGUAGE_SPECIES),
	)
	selected_language = /datum/language/serpentid

/obj/item/implant/serp_sol_speaker
	name = "sol speech synthesizer implant"
	actions_types = null
	// Implant gets damaged evevy emp_act(). If 0 - its fine. 1 - it stops working. Any more damage will give burn damage
	var/emp_damage = 0

/obj/item/implant/serp_sol_speaker/get_data()
	return "<b>Implant Specifications:</b><BR> \
		<b>Name:</b> Serpentid Speech Synthesizer Beta v0.3<BR> \
		<b>Life:</b> Activates upon speech attempt.<BR>\
		<b>Important Notes:</b> Does not work on other species.<BR> \
		<HR> \
		<b>Implant Details:</b><BR> \
		<b>Function:</b> Contains a small electonic speech syntesizer, similar to the borg ones and AI-processing unit, which detects serpentids attempt to speak and, \
		if enabled, will translate its neuron signals into comprehensible human language.<BR> \
		<b>Changelog:</b> No longer causes infinite scream loop once serpentid is angered.<BR>\
		<b>Known bugs:</b> EMP tends to damage the implant power source. Will isolate it later.<BR>"

/obj/item/implant/serp_sol_speaker/implant(mob/living/target, mob/user, silent = FALSE, force = FALSE)
	. = ..()
	if(isserpentid(target) && !QDELING(target))
		var/mob/living/carbon/human/species/serpentid/our_serp = target
		our_serp.grant_language(/datum/language/common, language_flags = SPOKEN_LANGUAGE, source = LANGUAGE_ATOM)

/obj/item/implant/serp_sol_speaker/removed(mob/target, silent = FALSE, special = FALSE)
	. = ..()
	if(isserpentid(target) && !QDELING(target))
		var/mob/living/carbon/human/species/serpentid/our_serp = target
		our_serp.remove_language(/datum/language/common, language_flags = SPOKEN_LANGUAGE)
		if(our_serp.has_status_effect(/datum/status_effect/speech/stutter/serpentid))
			our_serp.remove_status_effect(/datum/status_effect/speech/stutter/serpentid)

/obj/item/implant/serp_sol_speaker/emp_act(severity)
	. = ..()
	switch(emp_damage)
		if(0)
			emp_damage += 1
			if(imp_in && isserpentid(imp_in))
				var/mob/living/carbon/human/species/serpentid/our_serp = imp_in
				our_serp.apply_status_effect(/datum/status_effect/speech/stutter/serpentid, -1)
				to_chat(imp_in, span_hear("You hear something inside of you zap silently."))
		if (1)
			emp_damage += 1
			if(imp_in && isserpentid(imp_in))
				var/mob/living/carbon/human/species/serpentid/our_serp = imp_in
				our_serp.remove_language(/datum/language/common, language_flags = SPOKEN_LANGUAGE)
				if(our_serp.has_status_effect(/datum/status_effect/speech/stutter/serpentid))
					our_serp.remove_status_effect(/datum/status_effect/speech/stutter/serpentid)
				to_chat(imp_in, span_hear("You hear something inside of you zap silently."))
		if (2)
			if (imp_in)
				imp_in.apply_damage(5, BURN)
				to_chat(imp_in, span_warning("You feel something burning inside you!"))

/// Special type of stutter, only affecting non serpentid languages
/datum/status_effect/speech/stutter/serpentid
	id = "serp_stutter"
	alert_type = null
	duration = -1

/datum/status_effect/speech/stutter/serpentid/handle_message(datum/source, list/message_args)
	if(isserpentid(owner) && ispath(owner.get_selected_language(), /datum/language/serpentid))
		stutter_prob = 0
	else
		stutter_prob = 80
	return ..()

/obj/item/implanter/serp_sol_speaker
	name = "implanter (Serpentid Sol speaker)"
	imp_type = /obj/item/implant/serp_sol_speaker

/obj/item/implantcase/serp_sol_speaker
	name = "implant case - 'Serpentid Sol speaker'"
	desc = "A glass case containing a sol speaker, designed for serpentids."
	imp_type = /obj/item/implant/serp_sol_speaker

/datum/design/implant_serpsolspeaker
	name = "Serpentid Sol speaker Implant Case"
	desc = "Makes serpentinds able to speak normally."
	id = "implant_serpspeech"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/glass = SMALL_MATERIAL_AMOUNT*5, /datum/material/silver = SMALL_MATERIAL_AMOUNT*5)
	build_path = /obj/item/implantcase/serp_sol_speaker
	category = list(
		RND_CATEGORY_CYBERNETICS + RND_SUBCATEGORY_CYBERNETICS_IMPLANTS_HEALTH
	)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL | DEPARTMENT_BITFLAG_SCIENCE
