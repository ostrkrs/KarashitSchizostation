/datum/crafting_recipe/food/humankebab
	name = "Human kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/food/meat/steak/plain/human = 2
	)
	result = /obj/item/food/kebab/human
	category = CAT_GORE

/datum/crafting_recipe/food/shredded_lungs
	name = "Crispy shredded lung stirfry"
	reqs = list(
		/obj/item/food/grown/carrot = 1,
		/obj/item/food/grown/chili = 1,
		/obj/item/food/grown/onion = 1,
		/obj/item/organ/lungs = 1,
		/obj/item/reagent_containers/cup/bowl = 1,
	)
	blacklist = list(
		/obj/item/organ/lungs/cybernetic,
	)
	result = /obj/item/food/shredded_lungs
	added_foodtypes = MEAT|GORE
	category = CAT_GORE

/datum/crafting_recipe/food/stuffed_stomach
	name = "Stuffed stomach"
	reqs = list(
		/obj/item/organ/heart = 1,
		/obj/item/organ/liver = 1,
		/obj/item/organ/lungs = 1,
		/obj/item/organ/stomach = 1,
		/datum/reagent/consumable/salt = 2,
		/datum/reagent/consumable/blackpepper = 2
	)
	result = /obj/item/food/stuffed_stomach
	category = CAT_GORE

/datum/crafting_recipe/food/liver_pate
	name = "Liver pate"
	reqs = list(
		/obj/item/organ/liver = 1,
		/obj/item/food/meat/rawcutlet = 1,
		/obj/item/food/grown/onion = 1
	)
	result = /obj/item/food/liver_pate
	removed_foodtypes = RAW
	category = CAT_GORE

/datum/crafting_recipe/food/brain_pate
	name = "Eyeball-and-brain pate"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/organ/eyes = 1,
		/obj/item/food/grown/onion = 1,
		/datum/reagent/consumable/salt = 3
	)
	result = /obj/item/food/brain_pate
	added_foodtypes = MEAT|GORE
	category = CAT_GORE

/datum/crafting_recipe/food/ratburger
	name = "Rat burger"
	reqs = list(
			/obj/item/food/deadmouse = 1,
			/obj/item/food/bun = 1
	)
	result = /obj/item/food/burger/rat
	category = CAT_GORE

/datum/crafting_recipe/food/ratkorta
	name = "Rat Rootburger"
	reqs = list(
			/obj/item/food/deadmouse = 1,
			/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/rat/korta
	category = CAT_GORE

/datum/crafting_recipe/food/appendixburger
	name = "Appendix burger"
	reqs = list(
		/obj/item/organ/appendix = 1,
		/obj/item/food/bun = 1
	)
	result = /obj/item/food/burger/appendix
	added_foodtypes = MEAT | GORE
	category = CAT_GORE

/datum/crafting_recipe/food/brainburger
	name = "Brain burger"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/food/bun = 1
	)
	result = /obj/item/food/burger/brain
	added_foodtypes = MEAT | GORE
	category = CAT_GORE

/datum/crafting_recipe/food/humanburger
	name = "Human burger"
	reqs = list(
		/obj/item/food/bun = 1,
		/obj/item/food/patty/human = 1
	)
	result = /obj/item/food/burger/human
	category = CAT_GORE

/datum/crafting_recipe/food/braincake
	name = "Brain cake"
	reqs = list(
		/obj/item/organ/brain = 1,
		/obj/item/food/cake/plain = 1
	)
	result = /obj/item/food/cake/brain
	added_foodtypes = MEAT | GORE
	category = CAT_GORE

/datum/crafting_recipe/food/ratkebab
	name = "Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/food/deadmouse = 1
	)
	result = /obj/item/food/kebab/rat
	category = CAT_GORE

/datum/crafting_recipe/food/doubleratkebab
	name = "Double Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/food/deadmouse = 2
	)
	result = /obj/item/food/kebab/rat/double
	category = CAT_GORE

/datum/crafting_recipe/food/tempehstarter
	name = "Tempeh starter"
	reqs = list(
		/obj/item/food/grown/soybeans = 5,
		/obj/item/seeds/plump = 1
	)
	result = /obj/item/food/tempehstarter
	added_foodtypes = GROSS
	category = CAT_GORE
