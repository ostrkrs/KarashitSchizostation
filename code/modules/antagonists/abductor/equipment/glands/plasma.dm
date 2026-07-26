/obj/item/organ/heart/gland/phoron
	abductor_hint = "effluvium sanguine-synonym emitter. The abductee randomly emits clouds of phoron."
	cooldown_low = 1200
	cooldown_high = 1800
	icon_state = "slime"
	uses = -1
	mind_control_uses = 1
	mind_control_duration = 800

/obj/item/organ/heart/gland/phoron/activate()
	to_chat(owner, span_warning("You feel bloated."))
	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(to_chat), owner, span_userdanger("A massive stomachache overcomes you.")), 15 SECONDS)
	addtimer(CALLBACK(src, PROC_REF(vomit_phoron)), 20 SECONDS)

/obj/item/organ/heart/gland/phoron/proc/vomit_phoron()
	if(!owner)
		return
	owner.visible_message(span_danger("[owner] vomits a cloud of phoron!"))
	var/turf/open/T = get_turf(owner)
	if(istype(T))
		T.atmos_spawn_air("[GAS_PHORON]=50;[TURF_TEMPERATURE(T20C)]")
	owner.vomit(VOMIT_CATEGORY_DEFAULT)
