// MARK: BASIC
/obj/structure/closet/freezer
	name = "freezer"
	desc = "It's a cold storage unit."
	icon_state = "freezer"
	icon_locked = "freezer_locked"
	icon_unlocked = "freezer_unlocked"
	flags_1 = PREVENT_CONTENTS_EXPLOSION_1
	open_sound = 'sound/machines/closet/freezer_open.ogg'
	close_sound = 'sound/machines/closet/freezer_close.ogg'
	door_anim_time = 0
	paint_jobs = null
	sealed = TRUE

	/// If FALSE, we will protect the first person in the freezer from an explosion / nuclear blast.
	var/jones = FALSE
	/// The rate at which the internal air mixture cools
	var/cooling_rate_per_second = 3
	/// Minimum temperature of the internal air mixture
	var/minimum_temperature = COLD_ROOM_TEMP

/obj/structure/closet/freezer/process_internal_air(seconds_per_tick)
	if(opened)
		var/datum/gas_mixture/current_exposed_air = loc.return_air()
		if(!current_exposed_air)
			return
		// The internal air won't cool down the external air when the freezer is opened.
		internal_air.temperature = max(current_exposed_air.temperature, internal_air.temperature)
		return ..()
	else
		if(internal_air.temperature <= minimum_temperature)
			return
		var/temperature_decrease_this_tick = min(cooling_rate_per_second * seconds_per_tick, internal_air.temperature - minimum_temperature)
		internal_air.temperature -= temperature_decrease_this_tick

/obj/structure/closet/freezer/ex_act()
	if(jones)
		return ..()
	jones = TRUE
	flags_1 &= ~PREVENT_CONTENTS_EXPLOSION_1
	return FALSE

/obj/structure/closet/freezer/atom_deconstruct(disassembled)
	new /obj/item/assembly/igniter/condenser(drop_location())

/obj/structure/closet/freezer/preopen
	opened = TRUE

// MARK: SECURE
/obj/structure/closet/secure_closet/freezer
	name = "freezer"
	desc = "It's a cold storage unit. Has a lock on it in case you're worried about your coworkers stealing your lunch."
	icon_state = "freezer_secure"
	icon_locked = "freezer_secure_locked"
	icon_unlocked = "freezer_secure_unlocked"
	flags_1 = PREVENT_CONTENTS_EXPLOSION_1
	open_sound = 'sound/machines/closet/freezer_open.ogg'
	close_sound = 'sound/machines/closet/freezer_close.ogg'
	door_anim_time = 0
	paint_jobs = null
	sealed = TRUE

	/// If FALSE, we will protect the first person in the freezer from an explosion / nuclear blast.
	var/jones = FALSE
	/// The rate at which the internal air mixture cools
	var/cooling_rate_per_second = 3
	/// Minimum temperature of the internal air mixture
	var/minimum_temperature = COLD_ROOM_TEMP

/obj/structure/closet/secure_closet/freezer/process_internal_air(seconds_per_tick)
	if(opened)
		var/datum/gas_mixture/current_exposed_air = loc.return_air()
		if(!current_exposed_air)
			return
		// The internal air won't cool down the external air when the freezer is opened.
		internal_air.temperature = max(current_exposed_air.temperature, internal_air.temperature)
		return ..()
	else
		if(internal_air.temperature <= minimum_temperature)
			return
		var/temperature_decrease_this_tick = min(cooling_rate_per_second * seconds_per_tick, internal_air.temperature - minimum_temperature)
		internal_air.temperature -= temperature_decrease_this_tick

/obj/structure/closet/secure_closet/freezer/ex_act()
	if(jones)
		return ..()
	jones = TRUE
	flags_1 &= ~PREVENT_CONTENTS_EXPLOSION_1
	return FALSE

/obj/structure/closet/secure_closet/freezer/atom_deconstruct(disassembled)
	new /obj/item/assembly/igniter/condenser(drop_location())

/obj/structure/closet/secure_closet/freezer/all_access
	req_access = null


// MARK: SUBTYPES
// Meat
/obj/structure/closet/freezer/meat/PopulateContents()
	..()
	for(var/i in 1 to 4)
		new /obj/item/food/meat/slab/monkey(src)

/obj/structure/closet/secure_closet/freezer/meat
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/meat/PopulateContents()
	..()
	for(var/i in 1 to 4)
		new /obj/item/food/meat/slab/monkey(src)

/obj/structure/closet/secure_closet/freezer/meat/all_access
	req_access = null


// Vegetables
/obj/structure/closet/freezer/vegetables/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/food/grown/carrot(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/corn(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/potato(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/tomato(src)

/obj/structure/closet/secure_closet/freezer/vegetables
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/vegetables/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/food/grown/carrot(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/corn(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/potato(src)
	for(var/i in 1 to 3)
		new /obj/item/food/grown/tomato(src)

/obj/structure/closet/secure_closet/freezer/vegetables/all_access
	req_access = null


// Milk and eggs
/obj/structure/closet/freezer/milk_cheese_eggs/PopulateContents()
	..()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/condiment/milk(src)
		new /obj/item/reagent_containers/condiment/soymilk(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/fancy/egg_box(src)
	new /obj/item/food/cheese/wheel(src)

/obj/structure/closet/secure_closet/freezer/milk_cheese_eggs
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/milk_cheese_eggs/PopulateContents()
	..()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/condiment/milk(src)
		new /obj/item/reagent_containers/condiment/soymilk(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/fancy/egg_box(src)
	new /obj/item/food/cheese/wheel(src)

/obj/structure/closet/secure_closet/freezer/milk_cheese_eggs/all_access
	req_access = null


// Beer
/obj/structure/closet/freezer/beer/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer(src)

/obj/structure/closet/freezer/beer_light/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer/light(src)

/obj/structure/closet/secure_closet/freezer/beer/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer(src)

/obj/structure/closet/secure_closet/freezer/beer_light/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer/light(src)


// Cash
/obj/structure/closet/secure_closet/freezer/money
	desc = "This contains cold hard cash."
	req_access = list(ACCESS_VAULT)

/obj/structure/closet/secure_closet/freezer/money/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/stack/spacecash/c1000(src)
	for(var/i in 1 to 5)
		new /obj/item/stack/spacecash/c500(src)
	for(var/i in 1 to 6)
		new /obj/item/stack/spacecash/c200(src)


// Cream pie
/obj/structure/closet/secure_closet/freezer/cream_pie
	name = "cream pie closet"
	desc = "Contains pies filled with cream and/or custard, you sickos."
	req_access = list(ACCESS_THEATRE)

/obj/structure/closet/secure_closet/freezer/cream_pie/PopulateContents()
	..()
	new /obj/item/food/pie/cream(src)
