/obj/item/food/kebab/rat
	name = "rat-kebab"
	desc = "Not so delicious rat meat, on a stick."
	icon_state = "ratkebab"
	icon = 'icons/obj/food/gore.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	trash_type = null
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("rat meat" = 1, "metal" = 1)
	foodtypes = MEAT|RAW|GORE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/rat/double
	name = "double rat-kebab"
	icon_state = "doubleratkebab"
	icon = 'icons/obj/food/gore.dmi'
	tastes = list("rat meat" = 2, "metal" = 1)
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 20,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/iron = 2,
	)

/obj/item/food/shredded_lungs
	name = "crispy shredded lung stirfry"
	desc = "Crispy lung strips, with veggies and a spicy sauce. Delicious, if you like lungs."
	icon = 'icons/obj/food/gore.dmi'
	icon_state = "lung_stirfry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("meat" = 1, "heat" = 1, "veggies" = 1)
	foodtypes = MEAT | VEGETABLES | GORE
	trash_type = /obj/item/reagent_containers/cup/bowl
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/stuffed_stomach
	name = "stuffed stomach"
	desc = "Quite literally... just a stomach stuffed with minced organs."
	icon = 'icons/obj/food/gore.dmi'
	icon_state = "stuffed_stomach"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 10)
	tastes = list("assorted minced organs" = 1)
	foodtypes = MEAT | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/liver_pate
	name = "liver pate"
	desc = "A paste made from liver, meat, and a few additions for extra flavour."
	icon = 'icons/obj/food/gore.dmi'
	icon_state = "liver_pate"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5)
	tastes = list("liver" = 1)
	foodtypes = MEAT|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/brain_pate
	name = "eyeball-and-brain pate"
	desc = "A thick pink puree made from finely chopped poached eyeballs and brains, fried onions, and fat."
	icon = 'icons/obj/food/gore.dmi'
	icon_state = "brain_pate"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/liquidgibs = 2,
	)
	tastes = list("brains" = 2)
	foodtypes = MEAT | VEGETABLES | GORE
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/burger/rat/korta
	name = "rat rootburger"
	desc = "Pretty much what you'd expect... Just in a rootdough bun."
	icon_state = "ratburger"
	icon = 'icons/obj/food/gore.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("dead rat" = 4, "bun" = 2)
	foodtypes = NUTS | MEAT | GORE | VEGETABLES | RAW
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/tempehstarter
	name = "tempeh starter"
	desc = "A mix of soy and joy. It's warm... and moving?"
	icon = 'icons/obj/food/gore.dmi'
	icon_state = "tempehstarter"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("nutty" = 2, "bland" = 2)
	foodtypes = VEGETABLES | GROSS
	crafting_complexity = FOOD_COMPLEXITY_2
