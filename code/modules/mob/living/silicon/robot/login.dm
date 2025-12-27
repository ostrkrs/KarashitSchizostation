
/mob/living/silicon/robot/Login()
	. = ..()
	if(!. || !client)
		return FALSE
	regenerate_icons()
	show_laws(0)

	set_blooper(pick(GLOB.blooper_list_silicons))
	blooper_pitch = BLOOPER_PITCH_RAND(gender)
	blooper_pitch_range = BLOOPER_VARIANCE_RAND
	blooper_speed = rand(BLOOPER_DEFAULT_MINSPEED, BLOOPER_DEFAULT_MAXSPEED)
