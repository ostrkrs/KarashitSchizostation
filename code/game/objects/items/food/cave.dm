//Misc

/obj/item/food/root_escargot
	name = "snail cocleas"
	desc = "Snail escargot is closer to the Roman dish cocleas than the contemporary French escargot. It's a common street food in the underground cities."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "root_escargot"
	trash_type = /obj/item/reagent_containers/cup/bowl
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/garlic = 2,
	)
	tastes = list("snails" = 1, "garlic" = 1, "oil" = 1)
	foodtypes = MEAT|VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/canned/desert_snails
	name = "canned desert snails"
	desc = "Giant snails, packaged in brine. Shells included. Probably best not eaten raw, unless you're a caver."
	icon_state = "snails"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/salt = 2,
	)
	trash_type = /obj/item/trash/can/food/desert_snails
	tastes = list("snails" = 1)
	foodtypes = MEAT | BUGS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/mushroomy_stirfry
	name = "mushroomy stirfry"
	desc = "A medley of mushrooms, made to meet your monstrous munchies. Marvelous!"
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "mushroomy_stirfry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("marvelous mushrooms" = 1, "sublime shrooms" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/root_dumplings
	name = "root dumplings"
	desc = "Mashed root vegetables, mixed with korta flour and boiled to produce a large, round and slightly spicy dumpling. Commonly eaten in soup."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "root_dumplings"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_1

/obj/item/food/canned/larvae
	name = "canned bee larva"
	desc = "A can of bee larva packaged in honey. Probably appetizing to someone."
	icon_state = "larvae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/honey = 2,
	)
	trash_type = /obj/item/trash/can/food/larvae
	tastes = list("sweet bugs" = 1)
	foodtypes = MEAT | BUGS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/rootbread_peanut_butter_jelly
	name = "peanut butter and jelly rootwich"
	desc = "A classic PB&J rootwich, just like the replicant that replaced your mom used to make."
	icon_state = "peanutbutter-jelly"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("peanut butter" = 1, "jelly" = 1, "rootbread" = 2)
	foodtypes = FRUIT | VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/rootbread_peanut_butter_banana
	name = "peanut butter and banana rootwich"
	desc = "A peanut butter rootwich with banana slices mixed in, a good high protein treat."
	icon_state = "peanutbutter-banana"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/banana = 5,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("peanut butter" = 1, "banana" = 1, "rootbread" = 2)
	foodtypes = FRUIT | VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

//Root Burgers

/obj/item/food/burger/rootguffin
	name = "root-guffin"
	desc = "A cheap and greasy imitation of an eggs benedict."
	icon_state = "rootguffin"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/eggyolk = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	tastes = list("muffin" = 2, "bacon" = 3)
	foodtypes = NUTS | MEAT | BREAKFAST | VEGETABLES | FRIED
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/rootrib
	name = "rootrib"
	desc = "An elusive rib shaped burger with limited availability across the galaxy. Now meeting subhuman requirements."
	icon_state = "rootrib"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 4,
		/datum/reagent/consumable/bbqsauce = 1,
	)
	tastes = list("bun" = 2, "pork patty" = 4)
	foodtypes = NUTS | MEAT | VEGETABLES | SUGAR
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/rootchicken
	name = "chicken rootwich"
	desc = "A delicious chicken sandwich, in a soft rootbread roll."
	icon_state = "rootchicken"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/mayonnaise = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("bun" = 2, "chicken" = 4, "God's covenant" = 1)
	foodtypes = NUTS | MEAT | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

/obj/item/food/burger/rootfish
	name = "Fish rootwich"
	desc = "Lightly battered fish, sandwiched in a rootroll."
	icon_state = "rootfish"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("bun" = 4, "fish" = 4)
	foodtypes = VEGETABLES | NUTS | SEAFOOD
	venue_value = FOOD_PRICE_EXOTIC
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/burger/sloppyroot
	name = "sloppy root"
	desc = "Ground meat mixed with onions and barbecue sauce, sloppily plopped onto a rootroll. Delicious, but guaranteed to get your hands dirty."
	icon_state = "sloppyroot"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/protein = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("juicy meat" = 4, "BBQ sauce" = 3, "onions" = 2, "bun" = 2)
	foodtypes = NUTS | MEAT | VEGETABLES
	venue_value = FOOD_PRICE_NORMAL
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/burger/plain/rootburger
	name = "plain rootburger"
	desc = "A simple patty in a rootdough bun."
	icon_state = "kortaburger"
	icon = 'icons/obj/food/cave.dmi'
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	foodtypes = MEAT|VEGETABLES|NUTS
	crafting_complexity = FOOD_COMPLEXITY_3 //Gotta make the dough, +1
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT)

//Spaghetti Dishes

/obj/item/food/spaghetti/root
	name = "root pasta"
	desc = "It's similar in texture and appearance to gnocchi."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "root_pasta"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	tastes = list("gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/spaghetti/root/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/spaghetti/snail
	name = "snail root pasta"
	desc = "A high class pasta dish from underground colonies."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "snail_root_pasta"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/protein = 4,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("snails" = 1, "wine" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | MEAT | NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/spaghetti/garlic
	name = "garlic-and-oil root pasta"
	desc = "A cavers adaptation of the Italian pasta dish, aglio e olio, made with root pasta."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "garlic_root_pasta"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("garlic" = 1, "oil" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/spaghetti/mushroom
	name = "mushroom root pasta"
	desc = "A spaghetti pasta dish made with seraka mushrooms and quality oil. Has a pronounced nutty flavour."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "mushroom_root_pasta"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 10,
	)
	tastes = list("savouriness" = 1, "nuttiness" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

//Dough Dishes

/obj/item/food/rootdough
	name = "root dough"
	desc = "A root based dough, made with nuts and tubers. Used in a wide range of cavers cooking."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/bread_type = /obj/item/food/bread/root
	var/flat_type = /obj/item/food/flatrootdough

/obj/item/food/rootdough/make_bakeable()
	AddComponent(/datum/component/bakeable, bread_type, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/rootdough/make_processable()
	AddElement(/datum/element/processable, TOOL_ROLLINGPIN, flat_type, 1, 3 SECONDS, table_required = TRUE, screentip_verb = "Flatten")

/obj/item/food/rootdough/egg
	desc = "A root based dough, made with nuts, tubers and eggs. Used in a wide range of cavers cooking."
	foodtypes = parent_type::foodtypes | MEAT
	bread_type = /obj/item/food/bread/root/egg
	flat_type = /obj/item/food/flatrootdough/egg

/obj/item/food/flatrootdough
	name = "flat rootdough"
	desc = "Flattened rootdough, ready to be made into a flatbread, or cut into segments."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "flat_rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/process_type = /obj/item/food/rootdoughslice
	var/grill_type = /obj/item/food/root_flatbread

/obj/item/food/flatrootdough/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, process_type, 3, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice")

/obj/item/food/flatrootdough/make_grillable()
	AddComponent(/datum/component/grillable, grill_type, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/flatrootdough/egg
	foodtypes = parent_type::foodtypes | MEAT
	process_type = /obj/item/food/rootdoughslice/egg
	grill_type = /obj/item/food/root_flatbread/egg

/obj/item/food/rootdoughslice
	name = "rootdough ball"
	desc = "A ball of root dough. Perfect for making pasta or rolls."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "rootdough_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_1
	var/process_type = /obj/item/food/spaghetti/root
	var/bake_type = /obj/item/food/rootroll

/obj/item/food/rootdoughslice/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/rootdoughslice/make_processable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spaghetti/root, 1, 3 SECONDS, table_required = TRUE, screentip_verb = "Slice")

/obj/item/food/rootdoughslice/make_bakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/rootroll, rand(15 SECONDS, 25 SECONDS), TRUE, TRUE)

/obj/item/food/rootdoughslice/egg
	process_type = /obj/item/food/spaghetti/root/egg
	bake_type = /obj/item/food/rootroll/egg

/obj/item/food/root_flatbread
	name = "root flatbread"
	desc = "A plain grilled root flatbread. Can be topped with a variety of foods that cavers like to eat."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "root_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 8)
	tastes = list("bread" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/root_flatbread/egg
	foodtypes = parent_type::foodtypes | MEAT

/obj/item/food/rootroll
	name = "rootroll"
	desc = "A dense, chewy roll, made from roots. A nice companion to a bowl of soup."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "rootroll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("roll" = 1) // the roll tastes of roll.
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/rootroll/egg
	foodtypes = parent_type::foodtypes | MEAT

//Bread Dishes

/obj/item/food/bread/root
	name = "rootbread"
	desc = "The caver equivalent to bread, made from tubers like potatoes and yams mixed with ground nuts and seeds. Noticeably denser than regular bread."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "rootbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 20)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	slice_type = /obj/item/food/breadslice/root

/obj/item/food/bread/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, /obj/item/food/bread/empty, CUSTOM_INGREDIENT_ICON_FILL, max_ingredients = 8)

/obj/item/food/bread/root/egg
	foodtypes = parent_type::foodtypes | MEAT
	slice_type = /obj/item/food/breadslice/root/egg

/obj/item/food/breadslice/root
	name = "rootbread slice"
	desc = "A slice of dense, chewy rootbread."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "rootbread_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	venue_value = FOOD_PRICE_TRASH

/obj/item/food/breadslice/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ingredients_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

/obj/item/food/breadslice/root/egg
	foodtypes = parent_type::foodtypes | MEAT

//Pizza Dishes
/obj/item/food/pizza/flatbread
	icon = 'icons/obj/food/cave.dmi'
	icon_state = null
	abstract_type = /obj/item/food/pizza/flatbread
	slice_type = null

/obj/item/food/pizza/flatbread/rustic
	name = "rustic flatbread"
	desc = "A simple caver dish, popular as a side to meat or fish dishes. Topped with herbs and oil."
	icon_state = "rustic_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/vitamin = 15,
		/datum/reagent/consumable/garlic = 2,
	)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1)
	foodtypes = VEGETABLES | NUTS
	boxtag = "Tiziran Flatbread"
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pizza/flatbread/italic
	name = "\improper Italic flatbread"
	desc = "The Italic flatbread is a common sight on the menus of takeout stores in Pan-European underground colonies."
	icon_state = "italic_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 10,
		/datum/reagent/consumable/nutriment/vitamin = 15,
	)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1, "tomato" = 1, "meat" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT
	boxtag = "Italic Flatbread"
	crafting_complexity = FOOD_COMPLEXITY_4
	custom_materials = list(/datum/material/meat = MEATDISH_MATERIAL_AMOUNT * 2)

/obj/item/food/pizza/flatbread/rawmeat
	name = "meatlovers flatbread"
	desc = "Oddly enough, this caver dish is actually a favorite of some health-minded humans."
	icon_state = "rawmeat_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/protein = 10,
	)
	tastes = list("bread" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES | RAW | NUTS
	crafting_complexity = FOOD_COMPLEXITY_3
	custom_materials = list(/datum/material/meat = MEATSLAB_MATERIAL_AMOUNT)

/obj/item/food/pizza/flatbread/swedish
	name = "\improper Smörgåstårta flatbread"
	desc = "A cavers spin on the original Swedish sandwich cake, it is a common dish at family gatherings."
	icon_state = "swedish_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 16,
		/datum/reagent/consumable/nutriment/protein = 6,
		/datum/reagent/consumable/nutriment/vitamin = 6,
	)
	tastes = list("bread" = 1, "liver" = 1, "family" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/pizza/flatbread/fish
	name = "\improper BBQ fish flatbread"
	desc = "Superengine delamination, clown ops, too cold outside, I just want to grill for God's sake!"
	icon_state = "fish_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/consumable/nutriment/protein = 15,
		/datum/reagent/consumable/bbqsauce = 2,
	)
	tastes = list("bread" = 1, "fish" = 1)
	foodtypes = VEGETABLES | NUTS | SEAFOOD
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/pizza/flatbread/mushroom
	name = "mushroom and tomato flatbread"
	desc = "A simple alternative to the Italic flatbread, for when you've already filled up on meat elsewhere."
	icon_state = "mushroom_flatbread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 18,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes =  list("bread" = 1, "mushroom" = 1, "tomatoes" = 1)
	foodtypes = VEGETABLES | NUTS
	crafting_complexity = FOOD_COMPLEXITY_4

/obj/item/food/pizza/flatbread/nutty
	name = "nut paste flatbread"
	desc = "Modern advances in cuisine now allow for a double helping of the delicious taste of korta nuts, both as the base and as a topping on this flatbread."
	icon_state = "nutty_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 20)
	tastes =  list("bread" = 1, "nuts" = 2)
	foodtypes = NUTS
	crafting_complexity = FOOD_COMPLEXITY_3

//Sandwiches/Toast Dishes
/obj/item/food/honey_roll
	name = "honey sweetroll"
	desc = "A sweetened rootroll with sliced fruit, enjoyed as a seasonal dessert among cavers."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "honey_roll"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/honey = 2,
	)
	tastes = list("bread" = 1, "honey" = 1, "fruit" = 1)
	foodtypes = VEGETABLES | NUTS | FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_4

//Sweets
/obj/item/food/kebab/candied_mushrooms
	name = "candied mushrooms"
	desc = "A slightly bizarre caver dish, consisting of seraka mushrooms coated with caramel on a skewer. Carries a pronounced 'sweet and savoury' kick."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "candied_mushrooms"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 8,
		/datum/reagent/consumable/nutriment/vitamin = 6,
		/datum/reagent/consumable/caramel = 4,
	)
	tastes = list("savouriness" = 1, "sweetness" = 1)
	foodtypes = SUGAR | VEGETABLES
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/nectar_larvae
	name = "nectar larvae"
	desc = "Little crispy larvae in a korta nectar based sweet and spicy sauce. Bugtastic!"
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "nectar_larvae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/korta_nectar = 3,
		/datum/reagent/consumable/capsaicin = 1,
	)
	tastes = list("meat" = 1, "sweet" = 1, "heat" = 1)
	foodtypes = MEAT|VEGETABLES|BUGS
	w_class = WEIGHT_CLASS_SMALL
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/cake/korta_brittle
	name = "korta brittle slab"
	desc = "A big slab of korta nut brittle. So sugary it should be a crime!"
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "korta_brittle"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 20,
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/korta_nectar = 15,
	)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR
	slice_type = /obj/item/food/cakeslice/korta_brittle
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/cakeslice/korta_brittle
	name = "korta brittle slice"
	desc = "A little slice of korta nut brittle. A diabetic's worst enemy."
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "korta_brittle_slice"
	food_reagents = list(
		/datum/reagent/consumable/sugar = 4,
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/korta_nectar = 3,
	)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR

/obj/item/food/snowcones/korta_ice
	name = "korta ice"
	desc = "Shaved ice, korta nectar and berries. A sweet treat to eat to beat summer heat!"
	icon = 'icons/obj/food/cave.dmi'
	icon_state = "korta_ice"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 8,
		/datum/reagent/consumable/ice = 4,
		/datum/reagent/consumable/berryjuice = 6,
	)
	tastes = list("peppery sweet" = 1, "berry" = 1)
	foodtypes = NUTS | SUGAR | FRUIT
