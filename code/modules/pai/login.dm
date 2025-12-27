/mob/living/silicon/pai/Login()
	. = ..()
	if(!. || !client)
		return FALSE

	client.perspective = EYE_PERSPECTIVE
	if(holoform)
		client.set_eye(src)
	else
		client.set_eye(card)

	set_blooper(pick(GLOB.blooper_list_silicons))
	blooper_pitch = BLOOPER_PITCH_RAND(gender)
	blooper_pitch_range = BLOOPER_VARIANCE_RAND
	blooper_speed = rand(BLOOPER_DEFAULT_MINSPEED, BLOOPER_DEFAULT_MAXSPEED)
