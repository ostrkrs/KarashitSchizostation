/// MARK: INFLATABLES ITEMS
/obj/item/inflatable
	name = "inflatable"
	w_class = WEIGHT_CLASS_NORMAL
	icon = 'icons/obj/inflatable.dmi'
	icon_state = "folded"
	max_integrity = 10
	resistance_flags = FIRE_PROOF
	var/deploy_path = null

/obj/item/inflatable/attack_self(mob/user, modifiers)
	if(!deploy_path)
		return
	var/turf/T = get_turf(src)
	if (isspaceturf(T))
		to_chat(user, span_warning("You cannot use \the [src] in open space."))
		return

	user.visible_message(
		span_notice("\The [user] starts inflating \an [src]."),
		span_notice("You start inflating \the [src]."),
		span_notice("You can hear rushing air."),
		vision_distance = 5
	)
	if (!do_after(user, 1 SECONDS))
		return

	user.visible_message(
		span_notice("\The [user] finishes inflating \an [src]."),
		span_notice("You inflate \the [src]."),
		vision_distance = 5
	)
	playsound(loc, 'sound/items/zip/zip.ogg', 75, 1)
	var/obj/structure/inflatable/R = new deploy_path(T)
	transfer_fingerprints_to(R)
	R.add_fingerprint(user)
	update_integrity(R.get_integrity())
	qdel(src)


/obj/item/inflatable/wall
	name = "inflatable wall"
	desc = "A folded membrane which rapidly expands into a large cubical shape on activation."
	icon_state = "folded_wall"
	deploy_path = /obj/structure/inflatable/wall

/obj/item/inflatable/door
	name = "inflatable door"
	desc = "A folded membrane which rapidly expands into a simple door on activation."
	icon_state = "folded_door"
	deploy_path = /obj/structure/inflatable/door


/obj/item/inflatable/torn
	name = "torn inflatable wall"
	desc = "A folded membrane which rapidly expands into a large cubical shape on activation. It is too torn to be usable."
	icon_state = "folded_wall_torn"

/obj/item/inflatable/torn/attack_self(mob/user)
	to_chat(user, span_warning("The inflatable wall is too torn to be inflated!"))
	add_fingerprint(user)

/obj/item/inflatable/door/torn
	name = "torn inflatable door"
	desc = "A folded membrane which rapidly expands into a simple door on activation. It is too torn to be usable."
	icon_state = "folded_door_torn"

/obj/item/inflatable/door/torn/attack_self(mob/user)
	to_chat(user, span_warning("The inflatable door is too torn to be inflated!"))
	add_fingerprint(user)


/obj/item/storage/briefcase/inflatable
	name = "inflatable barrier box"
	desc = "Contains inflatable walls and doors."
	icon_state = "inflatables_box"
	inhand_icon_state = "lockbox"
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF

/obj/item/storage/briefcase/inflatable/Initialize(mapload)
	. = ..()
	atom_storage.set_holdable(list(
		/obj/item/inflatable
	))

/obj/item/storage/briefcase/inflatable/PopulateContents()
	new /obj/item/inflatable/door(src)
	new /obj/item/inflatable/door(src)
	new /obj/item/inflatable/wall(src)
	new /obj/item/inflatable/wall(src)

/obj/item/storage/briefcase/inflatable/full/PopulateContents()
	new /obj/item/inflatable/door(src)
	new /obj/item/inflatable/door(src)
	new /obj/item/inflatable/wall(src)
	new /obj/item/inflatable/wall(src)
	new /obj/item/inflatable/wall(src)
	new /obj/item/inflatable/wall(src)
	new /obj/item/inflatable/wall(src)

/// MARK: INFLATABLE STRUCTURES
/obj/structure/inflatable
	name = "inflatable"
	desc = "An inflated membrane supposed to stop atmospheric leaks and fires. Do not puncture."
	density = TRUE
	anchored = TRUE
	opacity = 0
	icon = 'icons/obj/inflatable.dmi'
	icon_state = "wall"
	can_atmos_pass = ATMOS_PASS_NO
	resistance_flags = FIRE_PROOF
	max_integrity = 10
	var/torn_drop_type = /obj/item/inflatable/torn
	var/undeploy_path = null
	var/taped

/obj/structure/inflatable/Initialize()
	. = ..()
	air_update_turf(TRUE, TRUE)
	register_context()

/obj/structure/inflatable/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	. = ..()
	context[SCREENTIP_CONTEXT_RMB] = "Deflate"
	return CONTEXTUAL_SCREENTIP_SET

/obj/structure/inflatable/Destroy()
	air_update_turf(TRUE, FALSE)
	return ..()

/obj/structure/inflatable/examine(mob/user)
	. = ..()
	if (taped)
		to_chat(user, span_notice("It's being held together by duct tape."))

/obj/structure/inflatable/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	playsound(src, 'sound/items/pillow/pillow_hit.ogg', 75, TRUE)

/obj/structure/inflatable/attackby(obj/item/W, mob/user, params)
	if(!istype(W))
		return

	if(!isturf(user.loc))
		return

	if(istype(W, /obj/item/stack/sticky_tape) && (max_integrity - atom_integrity) >= 3)
		if(taped)
			to_chat(user, span_notice("\The [src] can't be patched any more with \the [W]!"))
			return TRUE
		else
			taped = TRUE
			to_chat(user, span_notice("You patch some damage in \the [src] with \the [W]!"))
			repair_damage(3)
			return TRUE

	..()

/obj/structure/inflatable/atom_deconstruct(disassembled = FALSE)
	. = ..()
	var/obj/item/torn_drop = new torn_drop_type(drop_location(), 1)
	transfer_fingerprints_to(torn_drop)
	playsound(loc, 'sound/machines/hiss.ogg', 75, 1)
	visible_message("[src] rapidly deflates!")

/obj/structure/inflatable/proc/deflate()
	if(!undeploy_path)
		return
	visible_message("\The [src] slowly deflates.")
	playsound(loc, 'sound/machines/hiss.ogg', 75, 1)
	addtimer(CALLBACK(src, .proc/after_deflate), 5 SECONDS, TIMER_STOPPABLE)

/obj/structure/inflatable/proc/after_deflate()
	if(QDELETED(src))
		return
	var/obj/item/inflatable/R = new undeploy_path(src.loc)
	src.transfer_fingerprints_to(R)
	R.update_integrity(src.get_integrity())
	qdel(src)

/obj/structure/inflatable/verb/hand_deflate()
	set name = "Deflate"
	set category = "Object"
	set src in oview(1)

	if(!usr.Adjacent(src))
		return FALSE
	if(!iscarbon(usr))
		return FALSE

	var/mob/living/carbon/user = usr
	if(user.handcuffed || user.stat != CONSCIOUS || user.incapacitated)
		return FALSE

	verbs -= /obj/structure/inflatable/verb/hand_deflate
	deflate()
	return TRUE

/obj/structure/inflatable/attack_hand_secondary(mob/user)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return
	deflate()
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/structure/inflatable/wall
	name = "inflatable wall"
	undeploy_path = /obj/item/inflatable/wall
	torn_drop_type = /obj/item/inflatable/torn

/obj/structure/inflatable/door
	name = "inflatable door"
	icon_state = "door_closed"
	base_icon_state = "door"
	undeploy_path = /obj/item/inflatable/door
	torn_drop_type = /obj/item/inflatable/door/torn
	can_atmos_pass = ATMOS_PASS_DENSITY
	var/door_opened = FALSE //if it's open or not.
	var/isSwitchingStates = FALSE //don't try to change stats if we're already opening
	var/close_delay = -1 //-1 if does not auto close.

/obj/structure/inflatable/door/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	. = ..()
	context[SCREENTIP_CONTEXT_LMB] = door_opened ? "Close" : "Open"
	context[SCREENTIP_CONTEXT_RMB] = "Deflate"
	return CONTEXTUAL_SCREENTIP_SET

/obj/structure/inflatable/door/Move()
	var/turf/T = loc
	. = ..()
	if(!door_opened)
		move_update_air(T)

/obj/structure/inflatable/door/attack_ai(mob/user as mob)
	if(isAI(user))
		return

/obj/structure/inflatable/door/attack_robot(mob/living/user)
	if(get_dist(user,src) <= 1)
		return TryToSwitchState(user)

/obj/structure/inflatable/door/attack_hand(mob/user as mob)
	. = ..()
	if(.)
		return
	return TryToSwitchState(user)

/obj/structure/inflatable/door/proc/TryToSwitchState(atom/user)
	if(isSwitchingStates || !anchored)
		return
	if(isliving(user))
		var/mob/living/matters = user
		if(matters.client)
			if(iscarbon(matters))
				var/mob/living/carbon/carbon_user = matters
				if(!carbon_user.handcuffed)
					SwitchState()
			else
				SwitchState()
	else if(ismecha(user))
		SwitchState()

/obj/structure/inflatable/door/proc/SwitchState()
	if(door_opened)
		Close()
	else
		Open()

/obj/structure/inflatable/door/proc/Open()
	isSwitchingStates = TRUE
	flick("[base_icon_state]_opening",src)
	sleep(1 SECONDS)
	set_density(FALSE)
	door_opened = TRUE
	layer = OPEN_DOOR_LAYER
	air_update_turf(TRUE, FALSE)
	update_appearance()
	isSwitchingStates = FALSE

	if(close_delay != -1)
		addtimer(CALLBACK(src, PROC_REF(Close)), close_delay)

/obj/structure/inflatable/door/proc/Close()
	if(isSwitchingStates || !door_opened)
		return
	var/turf/T = get_turf(src)
	for(var/mob/living/L in T)
		return
	isSwitchingStates = TRUE
	flick("[base_icon_state]_closing",src)
	sleep(1 SECONDS)
	set_density(TRUE)
	door_opened = FALSE
	layer = initial(layer)
	air_update_turf(TRUE, TRUE)
	update_appearance()
	isSwitchingStates = FALSE

/obj/structure/inflatable/door/update_icon()
	icon_state = "[base_icon_state][door_opened ? "_open":"_closed"]"
	return ..()
