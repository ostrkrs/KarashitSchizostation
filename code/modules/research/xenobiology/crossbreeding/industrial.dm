/*
Industrial extracts:
	Slowly consume phoron, produce items with it.
*/
/obj/item/slimecross/industrial
	name = "industrial extract"
	desc = "A gel-like, sturdy extract, fond of phoron and industry."
	effect = "industrial"
	icon_state = "industrial_still"
	var/phoron_required = 2 //Units of phoron required to be consumed to produce item.
	var/itempath = /obj/item //The item produced by the extract.
	var/phoron_absorbed = 0 //Units of phoron aborbed by the extract already. Absorbs at a rate of 2u/obj tick.
	var/itemamount = 1 //How many items to spawn

/obj/item/slimecross/industrial/examine(mob/user)
	. = ..()
	. += "It currently has [phoron_absorbed] units of phoron floating inside the outer shell, out of [phoron_required] units."

/obj/item/slimecross/industrial/proc/do_after_spawn(obj/item/spawned)
	return

/obj/item/slimecross/industrial/Initialize(mapload)
	. = ..()
	create_reagents(100, INJECTABLE | DRAWABLE)
	START_PROCESSING(SSobj,src)

/obj/item/slimecross/industrial/Destroy()
	STOP_PROCESSING(SSobj,src)
	return ..()

/obj/item/slimecross/industrial/process()
	var/IsWorking = FALSE
	if(reagents.has_reagent(/datum/reagent/toxin/phoron,amount = 2) && phoron_required > 1) //Can absorb as much as 2
		IsWorking = TRUE
		reagents.remove_reagent(/datum/reagent/toxin/phoron, 2)
		phoron_absorbed += 2
	else if(reagents.has_reagent(/datum/reagent/toxin/phoron,amount = 1)) //Can absorb as little as 1
		IsWorking = TRUE
		reagents.remove_reagent(/datum/reagent/toxin/phoron, 1)
		phoron_absorbed += 1

	if(phoron_absorbed >= phoron_required)
		playsound(src, 'sound/effects/blob/attackblob.ogg', 50, TRUE)
		phoron_absorbed -= phoron_required
		for(var/i in 1 to itemamount)
			do_after_spawn(new itempath(get_turf(src)))
	else if(IsWorking)
		playsound(src, 'sound/effects/bubbles/bubbles.ogg', 5, TRUE)
	if(IsWorking)
		icon_state = "industrial"
	else
		icon_state = "industrial_still"

/obj/item/slimecross/industrial/grey
	colour = SLIME_TYPE_GREY
	effect_desc = "Produces monkey cubes."
	itempath = /obj/item/food/monkeycube
	itemamount = 5

/obj/item/slimecross/industrial/orange
	colour = SLIME_TYPE_ORANGE
	effect_desc = "Produces slime zippo lighters."
	phoron_required = 6
	itempath = /obj/item/lighter/slime

/obj/item/slimecross/industrial/purple
	colour = SLIME_TYPE_PURPLE
	effect_desc = "Produces autoinjectors with regen jelly inside."
	phoron_required = 5
	itempath = /obj/item/slimecrossbeaker/autoinjector/regenpack

/obj/item/slimecross/industrial/blue
	colour = SLIME_TYPE_BLUE
	effect_desc = "Produces full fire extinguishers."
	phoron_required = 10
	itempath = /obj/item/extinguisher

/obj/item/slimecross/industrial/metal
	colour = SLIME_TYPE_METAL
	effect_desc = "Produces iron sheets."
	phoron_required = 3
	itempath = /obj/item/stack/sheet/iron/ten

/obj/item/slimecross/industrial/yellow
	colour = SLIME_TYPE_YELLOW
	effect_desc = "Produces high capacity power cells, which are not fully charged on creation."
	phoron_required = 5
	itempath = /obj/item/stock_parts/power_store/cell/high

/obj/item/slimecross/industrial/yellow/do_after_spawn(obj/item/spawned)
	var/obj/item/stock_parts/power_store/cell/high/C = spawned
	if(istype(C))
		C.charge = rand(0,C.maxcharge/2)

/obj/item/slimecross/industrial/darkpurple
	colour = SLIME_TYPE_DARK_PURPLE
	effect_desc = "Produces phoron... for phoron."
	phoron_required = 10
	itempath = /obj/item/stack/sheet/mineral/phoron

/obj/item/slimecross/industrial/darkblue
	colour = SLIME_TYPE_DARK_BLUE
	effect_desc = "Produces one-use fireproofing potions."
	phoron_required = 6
	itempath = /obj/item/slimepotion/fireproof

/obj/item/slimecross/industrial/darkblue/do_after_spawn(obj/item/spawned)
	var/obj/item/slimepotion/fireproof/potion = spawned
	if(istype(potion))
		potion.uses = 1

/obj/item/slimecross/industrial/silver
	colour = SLIME_TYPE_SILVER
	effect_desc = "Produces random food and drink items."
	phoron_required = 1
	//Item picked below.

/obj/item/slimecross/industrial/silver/process()
	itempath = pick(list(get_random_food(), get_random_drink()))
	..()

/obj/item/slimecross/industrial/silver/do_after_spawn(obj/item/spawned)
	ADD_TRAIT(spawned, TRAIT_FOOD_SILVER, INNATE_TRAIT)

/obj/item/slimecross/industrial/bluespace
	colour = SLIME_TYPE_BLUESPACE
	effect_desc = "Produces synthetic bluespace crystals."
	phoron_required = 7
	itempath = /obj/item/stack/ore/bluespace_crystal/artificial

/obj/item/slimecross/industrial/sepia
	colour = SLIME_TYPE_SEPIA
	effect_desc = "Produces cameras."
	phoron_required = 2
	itempath = /obj/item/camera

/obj/item/slimecross/industrial/cerulean
	colour = SLIME_TYPE_CERULEAN
	effect_desc = "Produces normal slime extract enhancers."
	phoron_required = 5
	itempath = /obj/item/slimepotion/enhancer

/obj/item/slimecross/industrial/pyrite
	colour = SLIME_TYPE_PYRITE
	effect_desc = "Produces cans of spraypaint."
	phoron_required = 2
	itempath = /obj/item/toy/crayon/spraycan

/obj/item/slimecross/industrial/red
	colour = SLIME_TYPE_RED
	effect_desc = "Produces blood orbs."
	phoron_required = 5
	itempath = /obj/item/slimecrossbeaker/bloodpack

/obj/item/slimecross/industrial/green
	colour = SLIME_TYPE_GREEN
	effect_desc = "Produces self-use-only slime jelly autoinjectors."
	phoron_required = 7
	itempath = /obj/item/slimecrossbeaker/autoinjector/slimejelly

/obj/item/slimecross/industrial/pink
	colour = SLIME_TYPE_PINK
	effect_desc = "Produces synthpax and space drug autoinjectors."
	phoron_required = 6
	itempath = /obj/item/slimecrossbeaker/autoinjector/peaceandlove

/obj/item/slimecross/industrial/gold
	colour = SLIME_TYPE_GOLD
	effect_desc = "Produces random coins."
	phoron_required = 10

/obj/item/slimecross/industrial/gold/process()
	itempath = get_random_coin()
	..()

/obj/item/slimecross/industrial/oil
	colour = SLIME_TYPE_OIL
	effect_desc = "Produces IEDs."
	phoron_required = 4
	itempath = /obj/item/grenade/iedcasing/spawned

/obj/item/slimecross/industrial/black //What does this have to do with black slimes? No clue! Fun, though
	colour = SLIME_TYPE_BLACK
	effect_desc = "Produces slime brand regenerative cigarettes."
	phoron_required = 6
	itempath = /obj/item/storage/fancy/cigarettes/cigpack_xeno

/obj/item/slimecross/industrial/lightpink
	colour = SLIME_TYPE_LIGHT_PINK
	effect_desc = "Produces heart shaped boxes that have candies in them."
	phoron_required = 3
	itempath = /obj/item/storage/fancy/heart_box

/obj/item/slimecross/industrial/adamantine
	colour = SLIME_TYPE_ADAMANTINE
	effect_desc = "Produces sheets of adamantine."
	phoron_required = 10
	itempath = /obj/item/stack/sheet/mineral/adamantine

/obj/item/slimecross/industrial/rainbow
	colour = SLIME_TYPE_RAINBOW
	effect_desc = "Produces random slime extracts."
	phoron_required = 5
	//Item picked below.

/obj/item/slimecross/industrial/rainbow/process()
	itempath = pick(subtypesof(/obj/item/slime_extract))
	..()
