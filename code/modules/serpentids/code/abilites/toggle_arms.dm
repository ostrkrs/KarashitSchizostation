/obj/item/melee/serpentid_blade
	name = "mantis arm"
	desc = "A grotesque matn made out of bone and flesh that cleaves through people as a hot knife through butter."
	icon = 'code/modules/serpentids/icons/items.dmi'
	icon_state = "mantis_arm_r"
	inhand_icon_state = null
	item_flags = ABSTRACT | DROPDEL
	obj_flags = CONDUCTS_ELECTRICITY
	w_class = WEIGHT_CLASS_HUGE
	force = 20
	throwforce = 0
	throw_range = 0
	throw_speed = 0
	demolition_mod = 0.75
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacks", "slashes", "stabs", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	attack_verb_simple = list("attack", "slash", "stab", "slice", "tear", "lacerate", "rip", "dice", "cut")
	sharpness = SHARP_EDGED
	wound_bonus = 15
	exposed_wound_bonus = 15

/obj/item/melee/serpentid_blade/alt
	icon_state = "mantis_arm_l"
	icon_angle = 180

/obj/item/melee/serpentid_blade/Initialize(mapload,silent,synthetic)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, ABSTRACT_ITEM_TRAIT)
	AddComponent( \
		/datum/component/butchering, \
		speed = 10 SECONDS, \
		effectiveness = 80, \
	)

/datum/action/cooldown/toggle_arms
	name = "Toggle mantis arms"
	desc = "Pump blood from manipulating arms into mantis arms, becoming a menace in close combat but loosing ability to interact."
	cooldown_time = 5 SECONDS
	button_icon = 'code/modules/serpentids/icons/actions.dmi'

	var/obj/item/restraints/handcuffs/stored_handcuffs = null
	var/datum/martial_art/serpentid_grab/martial_to_learn

/datum/action/cooldown/toggle_arms/New(Target, original)
	. = ..()
	button_icon_state = "serpentid_hand_off"
	martial_to_learn = new(src)

/datum/action/cooldown/toggle_arms/Destroy()
	if(owner)
		if(stored_handcuffs)
			stored_handcuffs.forceMove(stored_handcuffs.drop_location())
			stored_handcuffs = null
		for(var/obj/item/held in owner.held_items)
			if(istype(held, /obj/item/melee/serpentid_blade))
				qdel(held)
		UnregisterSignal(owner, COMSIG_CARBON_POST_REMOVE_LIMB)
	QDEL_NULL(martial_to_learn)
	return ..()

/datum/action/cooldown/toggle_arms/Activate(atom/target)
	var/mob/living/carbon/human/serpentid = owner

	if(!serpentid)
		return FALSE

	if(isdead(serpentid) || serpentid.incapacitated)
		if(!serpentid.handcuffed)
			serpentid.balloon_alert(serpentid, "Incapacitated!")
			return FALSE

	if(serpentid.num_hands < 2)
		serpentid.balloon_alert(serpentid, "Need both hands!")
		return FALSE

	var/obj/item/item_in_hands = serpentid.get_active_held_item() || serpentid.get_inactive_held_item()

	if((item_in_hands && !serpentid.drop_all_held_items()) && !(istype(item_in_hands, /obj/item/melee/serpentid_blade)))
		serpentid.balloon_alert(serpentid, "Hands occupied!")
		return FALSE

	else if(istype(item_in_hands, /obj/item/melee/serpentid_blade))
		StartCooldown()
		down_arms()
		return TRUE

	rise_arms()
	StartCooldown()
	return TRUE

/datum/action/cooldown/toggle_arms/proc/rise_arms()
	var/mob/living/carbon/human/serpentid = owner

	serpentid.balloon_alert(serpentid, "Begin pumping blood in!")
	serpentid.visible_message(span_warning("[serpentid] starts to pump blood into their mantis arms!"), span_warning("You start pumping blood into your mantis arms and emmitting defensive screech!"), span_hear("You hear ramping up screech!"))
	playsound(serpentid, 'sound/mobs/humanoids/serpentids/serpentidscream.ogg', 70)

	if(!do_after(serpentid, 2 SECONDS, serpentid, IGNORE_USER_LOC_CHANGE))
		StartCooldown()
		return FALSE

	if(serpentid.handcuffed)
		stored_handcuffs = serpentid.handcuffed
		serpentid.handcuffed.forceMove(serpentid)
		serpentid.set_handcuffed(null)
		if(serpentid.buckled?.buckle_requires_restraints)
			serpentid.buckled.unbuckle_mob(serpentid)
		serpentid.update_handcuffed()

	serpentid.balloon_alert(serpentid, "Arms rised!")
	serpentid.visible_message(span_warning("[serpentid] raised their mantis arms ready for combat!"), span_warning("You raise your mantis arms, ready for combat."), span_hear("You hear terrible a screech!"))
	playsound(serpentid, 'sound/mobs/humanoids/serpentids/serpentidscream.ogg', 70)

	var/obj/item/melee/serpentid_blade/active_hand = new
	var/obj/item/melee/serpentid_blade/alt/inactive_hand = new
	var/c = serpentid.dna.features["mcolor"]

	active_hand.color = c
	inactive_hand.color = c

	serpentid.put_in_active_hand(active_hand)
	serpentid.put_in_inactive_hand(inactive_hand)
	martial_to_learn.teach(serpentid)

	RegisterSignal(owner, COMSIG_CARBON_POST_REMOVE_LIMB, PROC_REF(on_lose_hand))
	button_icon_state = "serpentid_hand_on"
	serpentid.update_action_buttons()

/datum/action/cooldown/toggle_arms/proc/down_arms(force = FALSE)
	var/mob/living/carbon/human/serpentid = owner

	serpentid.visible_message(span_notice("[serpentid] starts to pump blood out their mantis arms!"), span_notice("You start pumping blood out your mantis arms."), span_hear("You hear ramping up screech!"))

	if(force)
		if(stored_handcuffs)
			stored_handcuffs.forceMove(stored_handcuffs.drop_location())
			stored_handcuffs = null
		serpentid.Stun(5 SECONDS)
		for(var/obj/item/held in serpentid.held_items)
			if(istype(held, /obj/item/melee/serpentid_blade))
				qdel(held)
		button_icon_state = "serpentid_hand_on"
		serpentid.update_action_buttons()
		return FALSE

	serpentid.balloon_alert(serpentid, "Starting pumping blood out!")

	if(!do_after(serpentid, 2 SECONDS, serpentid, IGNORE_USER_LOC_CHANGE))
		return FALSE

	playsound(serpentid, 'sound/mobs/humanoids/serpentids/serpentidscream.ogg', 70)
	for(var/obj/item/held in serpentid.held_items)
		if(istype(held, /obj/item/melee/serpentid_blade))
			qdel(held)

	UnregisterSignal(owner, COMSIG_CARBON_POST_REMOVE_LIMB)
	martial_to_learn.unlearn(serpentid)
	serpentid.balloon_alert(serpentid, "Arms down!")
	button_icon_state = "serpentid_hand_off"
	serpentid.update_action_buttons()

	if(stored_handcuffs)
		serpentid.equip_to_slot(stored_handcuffs, ITEM_SLOT_HANDCUFFED)
		stored_handcuffs = null

/datum/action/cooldown/toggle_arms/proc/on_lose_hand()
	SIGNAL_HANDLER
	var/mob/living/carbon/human/serpentid = owner

	if(serpentid.num_hands >= 2)
		return FALSE

	serpentid.visible_message(span_notice("[serpentid] starts to pump blood out their mantis arms!"), span_notice("You start pumping blood out your mantis arms."), span_hear("You hear ramping up screech!"))
	playsound(serpentid, 'sound/mobs/humanoids/serpentids/serpentidscream.ogg', 70)
	serpentid.balloon_alert(serpentid, "Lose hand!")
	serpentid.Stun(5 SECONDS)
	for(var/obj/item/held in serpentid.held_items)
		if(istype(held, /obj/item/melee/serpentid_blade))
			qdel(held)

	martial_to_learn.unlearn(serpentid)
	button_icon_state = "serpentid_hand_off"
	serpentid.update_action_buttons()

	if(stored_handcuffs)
		stored_handcuffs.forceMove(stored_handcuffs.drop_location())
		stored_handcuffs = null

	UnregisterSignal(owner, COMSIG_CARBON_POST_REMOVE_LIMB)
