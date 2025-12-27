/datum/crafting_recipe/food/honey_sweetroll
	name = "Honey sweetroll"
	reqs = list(
		/obj/item/food/rootroll = 1,
		/obj/item/food/grown/berries = 1,
		/obj/item/food/grown/banana = 1,
		/datum/reagent/consumable/honey = 5
	)
	result = /obj/item/food/honey_roll
	category = CAT_CAVER

/datum/crafting_recipe/food/rootdough
	name = "Rootdough (Without Eggs)"
	reqs = list(
		/obj/item/food/grown/potato = 2,
		/datum/reagent/consumable/soymilk = 15,
		/datum/reagent/consumable/korta_flour = 5,
		/datum/reagent/water = 10
	)
	result = /obj/item/food/rootdough
	added_foodtypes = NUTS
	category = CAT_CAVER
	crafting_flags = CRAFT_CLEARS_REAGENTS

/datum/crafting_recipe/food/rootdough/with_eggs
	name = "Rootdough (With Eggs)"
	reqs = list(
		/obj/item/food/grown/potato = 2,
		/obj/item/food/egg = 1,
		/datum/reagent/consumable/korta_flour = 5,
		/datum/reagent/water = 10
	)
	result = /obj/item/food/rootdough/egg
	removed_foodtypes = RAW
	crafting_flags = CRAFT_CLEARS_REAGENTS

/datum/crafting_recipe/food/snail_pasta
	name = "Snail root pasta"
	reqs = list(
		/obj/item/food/canned/desert_snails = 1,
		/obj/item/food/spaghetti/root = 1,
		/obj/item/food/grown/garlic = 1,
		/datum/reagent/consumable/ethanol/wine = 5
	)
	result = /obj/item/food/spaghetti/snail
	category = CAT_CAVER

/datum/crafting_recipe/food/garlic_pasta
	name = "Garlic root pasta"
	reqs = list(
		/obj/item/food/spaghetti/root = 1,
		/obj/item/food/grown/garlic = 1,
		/obj/item/food/grown/chili = 1,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 5
	)
	result = /obj/item/food/spaghetti/garlic
	category = CAT_CAVER

/datum/crafting_recipe/food/mushroom_pasta
	name = "Mushroom root pasta"
	reqs = list(
		/obj/item/food/spaghetti/root = 1,
		/obj/item/food/steeped_mushrooms = 1,
		/obj/item/food/grown/garlic = 1,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 5
	)
	result = /obj/item/food/spaghetti/mushroom
	category = CAT_CAVER

/datum/crafting_recipe/food/rustic_flatbread
	name = "Rustic flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/grown/garlic = 1,
		/datum/reagent/consumable/lemonjuice = 2,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 3
	)
	result = /obj/item/food/pizza/flatbread/rustic
	category = CAT_CAVER

/datum/crafting_recipe/food/italic_flatbread
	name = "Italic flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/grown/garlic = 1,
		/obj/item/food/grown/tomato = 1,
		/obj/item/food/meatball = 2,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 3
	)
	result = /obj/item/food/pizza/flatbread/italic
	category = CAT_CAVER

/datum/crafting_recipe/food/rawmeat_flatbread
	name = "Meatlovers flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/meat/slab = 1
	)
	result = /obj/item/food/pizza/flatbread/rawmeat
	category = CAT_CAVER

/datum/crafting_recipe/food/swedish_flatbread
	name = "Smörgåstårta flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/grown/cucumber = 2,
		/obj/item/food/egg = 1,
		/obj/item/organ/liver = 1
	)
	result = /obj/item/food/pizza/flatbread/swedish
	removed_foodtypes = RAW
	category = CAT_CAVER

/datum/crafting_recipe/food/fish_flatbread
	name = "BBQ fish flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/fishmeat = 2,
		/datum/reagent/consumable/bbqsauce = 5
	)
	result = /obj/item/food/pizza/flatbread/fish
	category = CAT_CAVER

/datum/crafting_recipe/food/mushroom_flatbread
	name = "Mushroom and tomato flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/obj/item/food/grown/tomato = 1,
		/obj/item/food/grown/mushroom = 3,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 3
	)
	result = /obj/item/food/pizza/flatbread/mushroom
	category = CAT_CAVER

/datum/crafting_recipe/food/nutty_flatbread
	name = "Nut paste flatbread"
	reqs = list(
		/obj/item/food/root_flatbread = 1,
		/datum/reagent/consumable/korta_flour = 5,
		/datum/reagent/consumable/korta_milk = 5
	)
	result = /obj/item/food/pizza/flatbread/nutty
	removed_foodtypes = VEGETABLES
	category = CAT_CAVER

/datum/crafting_recipe/food/nectar_larvae
	name = "Nectar larvae"
	reqs = list(
		/obj/item/food/canned/larvae = 1,
		/obj/item/food/grown/tomato = 1,
		/obj/item/food/grown/chili = 1,
		/datum/reagent/consumable/korta_nectar = 5
	)
	result = /obj/item/food/nectar_larvae
	removed_foodtypes = GORE
	category = CAT_CAVER

/datum/crafting_recipe/food/candied_mushrooms
	name = "Candied mushrooms"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/food/steeped_mushrooms = 1,
		/datum/reagent/consumable/caramel = 5,
		/datum/reagent/consumable/salt = 1
	)
	result = /obj/item/food/kebab/candied_mushrooms
	added_foodtypes = SUGAR
	category = CAT_CAVER

/datum/crafting_recipe/food/root_dumplings
	name = "Root dumplings"
	reqs = list(
		/obj/item/food/grown/potato = 1,
		/datum/reagent/consumable/korta_flour = 5
	)
	result = /obj/item/food/root_dumplings
	added_foodtypes = NUTS
	category = CAT_CAVER

/datum/crafting_recipe/food/rootbreadpbj
	name = "Peanut butter and jelly rootwich"
	reqs = list(
		/obj/item/food/breadslice/root = 2,
		/datum/reagent/consumable/peanut_butter = 5,
		/datum/reagent/consumable/cherryjelly = 5
	)
	result = /obj/item/food/rootbread_peanut_butter_jelly
	added_foodtypes = FRUIT
	category = CAT_CAVER

/datum/crafting_recipe/food/rootbreadpbb
	name = "Peanut butter and banana rootwich"
	reqs = list(
		/obj/item/food/breadslice/root = 2,
		/datum/reagent/consumable/peanut_butter = 5,
		/obj/item/food/grown/banana = 1
	)
	result = /obj/item/food/rootbread_peanut_butter_banana
	added_foodtypes = FRUIT
	category = CAT_CAVER

/datum/crafting_recipe/food/rootguffin
	name = "Root-Guffin"
	reqs = list(
			/obj/item/food/friedegg = 1,
			/obj/item/food/meat/bacon = 2,
			/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/rootguffin
	category = CAT_CAVER

/datum/crafting_recipe/food/rootrib
	name = "RootRib"
	reqs = list(
			/obj/item/food/bbqribs = 1,     //The sauce is already included in the ribs
			/obj/item/food/onion_slice = 1, //feel free to remove if too burdensome.
			/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/rootrib
	category = CAT_CAVER

/datum/crafting_recipe/food/rootchicken
	name = "Chicken Rootwich"
	reqs = list(
			/obj/item/food/patty/chicken = 1,
			/datum/reagent/consumable/mayonnaise = 5,
			/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/rootchicken
	category = CAT_CAVER

/datum/crafting_recipe/food/rootfish
	name = "Fish rootburger"
	reqs = list(
		/obj/item/food/fishmeat = 1,
		/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/rootfish
	category = CAT_CAVER

/datum/crafting_recipe/food/sloppyroot
	name = "Sssloppy moe"
	reqs = list(
			/obj/item/food/rootroll = 1,
			/obj/item/food/meat/cutlet = 2,
			/obj/item/food/onion_slice = 1,
			/datum/reagent/consumable/bbqsauce = 5,
	)
	result = /obj/item/food/burger/sloppyroot
	category = CAT_CAVER

/datum/crafting_recipe/food/rootburger
	name = "Plain Rootburger"
	reqs = list(
			/obj/item/food/patty/plain = 1,
			/obj/item/food/rootroll = 1
	)
	result = /obj/item/food/burger/plain/rootburger
	category = CAT_CAVER

/datum/crafting_recipe/food/korta_ice
	name = "Korta ice"
	reqs = list(
		/obj/item/reagent_containers/cup/glass/sillycup = 1,
		/datum/reagent/consumable/ice = 15,
		/datum/reagent/consumable/korta_nectar = 5,
		/obj/item/food/grown/berries = 1
	)
	result = /obj/item/food/snowcones/korta_ice
	added_foodtypes = SUGAR | NUTS
	category = CAT_CAVER

/datum/crafting_recipe/food/root_escargot
	name = "Snail cocleas"
	reqs = list(
		/obj/item/food/canned/desert_snails = 1,
		/obj/item/food/grown/garlic = 1,
		/datum/reagent/consumable/lemonjuice = 3,
		/datum/reagent/consumable/blackpepper = 2,
		/datum/reagent/consumable/nutriment/fat/oil/olive = 3,
		/obj/item/reagent_containers/cup/bowl = 1,
	)
	result = /obj/item/food/root_escargot
	removed_foodtypes = GORE
	category = CAT_CAVER

/datum/crafting_recipe/food/korta_brittle
	name = "Korta brittle slab"
	reqs = list(
		/obj/item/food/grown/korta_nut = 2,
		/datum/reagent/consumable/korta_nectar = 5,
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/consumable/nutriment/fat/oil = 3,
		/datum/reagent/consumable/salt = 2
	)
	result = /obj/item/food/cake/korta_brittle
	added_foodtypes = SUGAR
	category = CAT_CAVER
