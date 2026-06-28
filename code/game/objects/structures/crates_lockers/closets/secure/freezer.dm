/obj/structure/closet/secure_closet/freezer
	name = "freezer"
	icon_state = "freezer"
	icon_locked = "freezer_locked"
	icon_unlocked = "freezer_unlocked"
	flags_1 = PREVENT_CONTENTS_EXPLOSION_1
	open_sound = 'sound/machines/closet/freezer_open.ogg'
	close_sound = 'sound/machines/closet/freezer_close.ogg'
	open_sound_volume = 50
	close_sound_volume = 25
	door_anim_time = 0
	/// If FALSE, we will protect the first person in the freezer from an explosion / nuclear blast.
	var/jones = FALSE
	paint_jobs = null
	sealed = TRUE

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

/obj/structure/closet/secure_closet/freezer/open
	req_access = null
	locked = FALSE


/obj/structure/closet/secure_closet/freezer/condiments
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/condiments/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/condiment/flour(src)
	new /obj/item/reagent_containers/condiment/rice(src)
	new /obj/item/reagent_containers/condiment/sugar(src)

/obj/structure/closet/secure_closet/freezer/condiments/all_access
	req_access = null


/obj/structure/closet/secure_closet/freezer/meat
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/meat/PopulateContents()
	..()
	for(var/i in 1 to 4)
		new /obj/item/food/meat/slab/monkey(src)

/obj/structure/closet/secure_closet/freezer/meat/open
	locked = FALSE
	req_access = null

/obj/structure/closet/secure_closet/freezer/meat/all_access
	req_access = null


/obj/structure/closet/secure_closet/freezer/beer/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer(src)

/obj/structure/closet/secure_closet/freezer/beer_light/PopulateContents()
	..()
	for(var/i in 1 to 3)
		new /obj/item/reagent_containers/cup/glass/bottle/beer/light(src)


/obj/structure/closet/secure_closet/freezer/milk_and_eggs
	req_access = list(ACCESS_KITCHEN)

/obj/structure/closet/secure_closet/freezer/milk_and_eggs/PopulateContents()
	..()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/condiment/milk(src)
		new /obj/item/reagent_containers/condiment/soymilk(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/fancy/egg_box(src)

/obj/structure/closet/secure_closet/freezer/milk_and_eggs/all_access
	req_access = null

/obj/structure/closet/secure_closet/freezer/milk_and_eggs/open
	req_access = null
	locked = FALSE

/obj/structure/closet/secure_closet/freezer/milk_and_eggs/preopen
	req_access = null
	locked = FALSE
	opened = TRUE


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


/obj/structure/closet/secure_closet/freezer/cream_pie
	name = "cream pie closet"
	desc = "Contains pies filled with cream and/or custard, you sickos."
	req_access = list(ACCESS_THEATRE)

/obj/structure/closet/secure_closet/freezer/cream_pie/PopulateContents()
	..()
	new /obj/item/food/pie/cream(src)
