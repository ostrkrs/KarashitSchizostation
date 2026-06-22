#define TANK_DISPENSER_CAPACITY 10

/obj/structure/tank_dispenser
	name = "tank dispenser"
	desc = "A simple yet bulky storage device for gas tanks."
	icon = 'icons/obj/structures.dmi'
	icon_state = "dispenser"
	density = TRUE
	anchored = TRUE
	max_integrity = 300
	var/oxygentanks = TANK_DISPENSER_CAPACITY
	var/phorontanks = TANK_DISPENSER_CAPACITY

/obj/structure/tank_dispenser/oxygen
	phorontanks = 0

/obj/structure/tank_dispenser/phoron
	oxygentanks = 0

/obj/structure/tank_dispenser/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/contextual_screentip_bare_hands, lmb_text = "Take Oxygen Tank", rmb_text = "Take Phoron Tank")
	update_appearance()

/obj/structure/tank_dispenser/update_overlays()
	. = ..()
	switch(oxygentanks)
		if(1 to 3)
			. += "oxygen-[oxygentanks]"
		if(4 to TANK_DISPENSER_CAPACITY)
			. += "oxygen-4"
	switch(phorontanks)
		if(1 to 4)
			. += "phoron-[phorontanks]"
		if(5 to TANK_DISPENSER_CAPACITY)
			. += "phoron-5"

/obj/structure/tank_dispenser/attack_hand(mob/living/user, list/modifiers)
	. = ..()
	if (!oxygentanks)
		balloon_alert(user, "no oxygen tanks!")
		return
	dispense(/obj/item/tank/internals/oxygen, user)
	oxygentanks--
	update_appearance()

/obj/structure/tank_dispenser/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if (!phorontanks)
		balloon_alert(user, "no phoron tanks!")
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	dispense(/obj/item/tank/internals/phoron, user)
	phorontanks--
	update_appearance()
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/structure/tank_dispenser/wrench_act(mob/living/user, obj/item/tool)
	. = ..()
	default_unfasten_wrench(user, tool)
	return ITEM_INTERACT_SUCCESS

/obj/structure/tank_dispenser/attackby(obj/item/I, mob/living/user, list/modifiers, list/attack_modifiers)
	var/full
	if(istype(I, /obj/item/tank/internals/phoron))
		if(phorontanks < TANK_DISPENSER_CAPACITY)
			phorontanks++
		else
			full = TRUE
	else if(istype(I, /obj/item/tank/internals/oxygen))
		if(oxygentanks < TANK_DISPENSER_CAPACITY)
			oxygentanks++
		else
			full = TRUE
	else if(!user.combat_mode || (I.item_flags & NOBLUDGEON))
		balloon_alert(user, "can't insert!")
		return
	else
		return ..()
	if(full)
		balloon_alert(user, "it is full!")
		return

	if(!user.transferItemToLoc(I, src))
		return
	balloon_alert(user, "tank inserted")
	update_appearance()

/obj/structure/tank_dispenser/atom_deconstruct(disassembled = TRUE)
	for(var/X in src)
		var/obj/item/I = X
		I.forceMove(loc)
	new /obj/item/stack/sheet/iron (loc, 2)

/obj/structure/tank_dispenser/examine(mob/user)
	. = ..()
	if(phorontanks && oxygentanks)
		. += span_notice("It has <b>[phorontanks]</b> phoron tank\s and <b>[oxygentanks]</b> oxygen tank\s left.")
	else if(phorontanks || oxygentanks)
		. += span_notice("It has <b>[phorontanks ? "[phorontanks]</b> phoron" : "[oxygentanks]</b> oxygen"] tank\s left.")

/obj/structure/tank_dispenser/proc/dispense(tank_type, mob/receiver)
	var/existing_tank = locate(tank_type) in src
	if (isnull(existing_tank))
		existing_tank = new tank_type
	receiver.put_in_hands(existing_tank)
	balloon_alert(receiver, "tank received")

#undef TANK_DISPENSER_CAPACITY
