/obj/structure/dresser
	name = "dresser"
	desc = "A nicely-crafted wooden dresser. It's filled with lots of undies."
	icon = 'icons/obj/fluff/general.dmi'
	icon_state = "dresser"
	resistance_flags = FLAMMABLE
	density = TRUE
	anchored = TRUE
	pass_flags_self = PASSTABLE | LETPASSTHROW
	layer = TABLE_LAYER
	var/static/list/turf_traits = list(TRAIT_TURF_IGNORE_SLOWDOWN, TRAIT_TURF_IGNORE_SLIPPERY, TRAIT_IMMERSE_STOPPED)

/obj/structure/dresser/Initialize(mapload)
	. = ..()

	ADD_TRAIT(src, TRAIT_COMBAT_MODE_SKIP_INTERACTION, INNATE_TRAIT)

	AddElement(/datum/element/give_turf_traits, string_list(turf_traits))
	AddElement(/datum/element/footstep_override, priority = STEP_SOUND_TABLE_PRIORITY)
	AddComponent(/datum/component/table_smash)

	AddComponent(/datum/component/climb_walkable)
	AddElement(/datum/element/climbable)
	AddElement(/datum/element/elevation, pixel_shift = 14)

/obj/structure/dresser/screwdriver_act_secondary(mob/living/user, obj/item/tool)
	to_chat(user, span_notice("You start disassembling [src]..."))
	if(tool.use_tool(src, user, 2 SECONDS, volume=50))
		deconstruct(TRUE)
	return ITEM_INTERACT_SUCCESS

/obj/structure/dresser/wrench_act_secondary(mob/living/user, obj/item/tool)
	to_chat(user, span_notice("You begin to [anchored ? "unwrench" : "wrench"] [src]."))
	if(tool.use_tool(src, user, 20, volume=50))
		to_chat(user, span_notice("You successfully [anchored ? "unwrench" : "wrench"] [src]."))
		set_anchored(!anchored)
	return ITEM_INTERACT_SUCCESS

/obj/structure/dresser/atom_deconstruct(disassembled = TRUE)
	new /obj/item/stack/sheet/mineral/wood(drop_location(), 10)

/obj/structure/dresser/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(!Adjacent(user))//no tele-grooming
		return
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/dressing_human = user
	if(HAS_TRAIT(dressing_human, TRAIT_NO_UNDERWEAR))
		to_chat(dressing_human, span_warning("You are not capable of wearing underwear."))
		return

	var/choice = tgui_input_list(user, "Bottoms, Tops, or Socks?", "Changing", list("Bottom","Bottom Color","Top","Top Color","Socks"))
	if(isnull(choice))
		return

	if(!Adjacent(user))
		return
	switch(choice)
		if("Bottom")
			var/new_undies = tgui_input_list(user, "Select your bottom", "Changing", SSaccessories.bottom_underwear_list)
			if(new_undies)
				dressing_human.bottom_underwear = new_undies
		if("Bottom Color")
			var/new_underwear_color = input(dressing_human, "Choose your bottom color", "Bottom Color", dressing_human.bottom_underwear_color) as color|null
			if(new_underwear_color)
				dressing_human.bottom_underwear_color = sanitize_hexcolor(new_underwear_color)
		if("Top")
			var/new_top_underwear = tgui_input_list(user, "Select your top", "Changing", SSaccessories.top_underwear_list)
			if(new_top_underwear)
				dressing_human.top_underwear = new_top_underwear
		if("Top Color")
			var/new_top_underwear_color = input(dressing_human, "Choose your top color", "Top Color", dressing_human.top_underwear_color) as color|null
			if(new_top_underwear_color)
				dressing_human.top_underwear_color = sanitize_hexcolor(new_top_underwear_color)
		if("Socks")
			var/new_socks = tgui_input_list(user, "Select your socks", "Changing", SSaccessories.socks_list)
			if(new_socks)
				dressing_human.socks = new_socks
		if("Socks Color")
			var/new_socks_color = input(dressing_human, "Choose your socks color", "Socks Color", dressing_human.socks_color) as color|null
			if(new_socks_color)
				dressing_human.socks_color = sanitize_hexcolor(new_socks_color)

	add_fingerprint(dressing_human)
	dressing_human.update_body()

// This extends base item interaction because tables default to blocking 99% of interactions
/obj/structure/dresser/base_item_interaction(mob/living/user, obj/item/tool, list/modifiers)
	. = ..()
	if(.)
		return .

	if(!user.combat_mode || (tool.item_flags & NOBLUDGEON))
		return table_place_act(user, tool, modifiers)

	return NONE

// Where putting things on tables is handled.
/obj/structure/dresser/proc/table_place_act(mob/living/user, obj/item/tool, list/modifiers)
	if(tool.item_flags & ABSTRACT)
		return NONE

	var/x_offset = 0
	var/y_offset = 0
	// Items are centered by default, but we move them if click ICON_X and ICON_Y are available
	if(LAZYACCESS(modifiers, ICON_X) && LAZYACCESS(modifiers, ICON_Y))
		// Clamp it so that the icon never moves more than 16 pixels in either direction (thus leaving the table turf)
		x_offset = clamp(text2num(LAZYACCESS(modifiers, ICON_X)) - 16, -(ICON_SIZE_X*0.5), ICON_SIZE_X*0.5)
		y_offset = clamp(text2num(LAZYACCESS(modifiers, ICON_Y)) - 16, -(ICON_SIZE_Y*0.5), ICON_SIZE_Y*0.5)

	if(!user.transfer_item_to_turf(tool, get_turf(src), x_offset, y_offset, silent = FALSE))
		return ITEM_INTERACT_BLOCKING
	AfterPutItemOnTable(tool, user)
	return ITEM_INTERACT_SUCCESS

/obj/structure/dresser/proc/AfterPutItemOnTable(obj/item/thing, mob/living/user)
	return
