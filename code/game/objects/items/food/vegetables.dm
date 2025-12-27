/obj/item/food/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	icon_state = "eggplantparm"

	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("eggplant" = 3, "cheese" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/yakiimo
	name = "yaki imo"
	desc = "Made with roasted sweet potatoes!"
	icon_state = "yakiimo"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 5,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("sweet potato" = 1)
	foodtypes = VEGETABLES | SUGAR
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/roastparsnip
	name = "roast parsnip"
	desc = "Sweet and crunchy."
	icon_state = "roastparsnip"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("parsnip" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

// Potatoes
/obj/item/food/tatortot
	name = "tator tot"
	desc = "A large fried potato nugget that may or may not try to valid you."
	icon_state = "tatortot"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("potato" = 3, "valids" = 1)
	foodtypes = FRIED | VEGETABLES
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/tatortot/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dunkable, 10)

/obj/item/food/mashed_potatoes
	name = "mashed potatoes"
	desc = "A creamy serving of mashed potatoes, a staple of many Thanksgiving dinners."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "mashed_potatoes"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("creamy mashed potatoes" = 1, "garlic" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/baked_potato
	name = "baked potato"
	desc = "A piping hot potato baked in an oven. A bit bland by itself."
	icon_state = "baked_potato"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("baked potato" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/buttered_baked_potato
	name = "buttered baked potato"
	desc = "A piping hot baked potato, now with a slice of butter mixed in. Perfection."
	icon_state = "buttered_baked_potato"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("baked potato" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/loaded_baked_potato
	name = "loaded baked potato"
	desc = "A piping hot baked potato, with the insides scooped out and mixed with bacon bits, cheese, and cabbage."
	icon_state = "loaded_baked_potato"
	food_reagents = list(/datum/reagent/consumable/nutriment = 10, /datum/reagent/consumable/nutriment/vitamin = 6, /datum/reagent/consumable/nutriment/protein = 4)
	tastes = list("baked potato" = 1, "bacon" = 1, "cheese" = 1, "cabbage" = 1)
	foodtypes = VEGETABLES | DAIRY | MEAT
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

// Fries
/obj/item/food/fries
	name = "space fries"
	desc = "AKA: French Fries, Freedom Fries, etc."
	icon_state = "fries"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("fries" = 3, "salt" = 1)
	foodtypes = VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	preserved_food = TRUE
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/fries/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dunkable, 10)

/obj/item/food/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	icon_state = "cheesyfries"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("fries" = 3, "cheese" = 1)
	foodtypes = VEGETABLES|DAIRY|FRIED
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	preserved_food = TRUE
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/cheesyfries/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dunkable, 10)

/obj/item/food/carrotfries
	name = "carrot fries"
	desc = "Tasty fries from fresh carrots."
	icon_state = "carrotfries"

	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("carrots" = 3, "salt" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/carrotfries/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dunkable, 10)

/obj/item/food/poutine
	name = "poutine"
	desc = "Fries covered in cheese curds and gravy."
	icon_state = "poutine"
	food_reagents = list(/datum/reagent/consumable/nutriment = 7)
	tastes = list("potato" = 3, "gravy" = 1, "squeaky cheese" = 1)
	foodtypes = VEGETABLES|DAIRY|FRIED|MEAT
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	preserved_food = TRUE
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/poutine/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dunkable, 10)

/obj/item/food/sauteed_eggplant
	name = "sauteed eggplant"
	desc = "Thick-cut slices of eggplant sauteed in oil and minced garlic, creating a soft, crispy, healthy snack."
	icon_state = "sauteed_eggplant"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("fried eggplant" = 4, "garlic" = 2, "olive oil" = 3)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/baba_ghanoush
	name = "baba ghanoush"
	desc = "A thick dip made from mashed eggplant, olive oil, garlic, and lemon juice with some pita bread for dipping. You'll either love it or hate it."
	icon_state = "baba_ghanoush"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("mashed eggplant" = 5, "pita bread" = 4, "garlic" = 3, "olive oil" = 4, "lemon juice" = 2)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/falafel
	name = "falafel"
	desc = "Beans, herbs, onions, and garlic mashed together and formed into a ball, then deep-fried. The herbs give the interior a unique green color."
	icon_state = "falafel"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("fava beans" = 5, "garlic" = 3, "onion" = 2, "fresh herbs" = 4)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/bowled/fried_eggplant_polenta
	name = "fried eggplant and polenta"
	desc = "Polenta loaded with cheese, served with a few discs of fried eggplant and some tomato sauce."
	icon_state = "fried_eggplant_polenta"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 12,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/nutriment = 10,
	)
	tastes = list("cornmeal" = 1, "cheese" = 1, "eggplant" = 1, "tomato sauce" = 1)
	foodtypes = VEGETABLES|GRAIN|DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_5

/obj/item/food/raw_ratatouille
	name = "raw ratatouille"
	desc = "Sliced vegetables with a roasted pepper sauce. Delicious, for a peasant food."
	icon_state = "raw_ratatouille"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("veggies" = 1, "roasted peppers" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/raw_ratatouille/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/ratatouille, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/ratatouille
	name = "ratatouille"
	desc = "The perfect dish to save your restaurant from a vindictive food critic. Bonus points if you've got a rat in your hat."
	icon_state = "ratatouille"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("veggies" = 1, "roasted peppers" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/oven_baked_corn
	name = "oven-baked corn"
	desc = "A cob of corn, baked in the roasting heat of an oven until it blisters and blackens."
	icon_state = "oven_baked_corn"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/buttered_baked_corn
	name = "buttered baked corn"
	desc = "What's better than baked corn? Baked corn with butter!"
	icon_state = "buttered_baked_corn"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/char = 1,
	)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/sauerkraut
	name = "sauerkraut"
	desc = "Pickled cabbage, as made famous by Germans, which calls it Zauerkrat."
	icon_state = "sauerkraut"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("cabbage" = 1, "acid" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/steeped_mushrooms
	name = "steeped seraka mushrooms"
	desc = "Seraka mushrooms that have been steeped in alkaline water to remove the extract, thereby making them completely safe to consume."
	icon_state = "steeped_mushrooms"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("savouriness" = 1, "nuttiness" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1
