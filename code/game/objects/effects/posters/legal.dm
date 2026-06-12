/obj/item/poster/random_legal
	name = "random legal poster"
	poster_type = /obj/structure/sign/poster/legal/random
	icon_state = "rolled_legit"

/obj/structure/sign/poster/legal
	poster_item_name = "poster"
	poster_item_desc = "A large piece of space-resistant printed paper. It comes with state-of-the-art adhesive backing, for easy pinning to any vertical surface."
	poster_item_icon_state = "rolled_legit"
	printable = TRUE

/obj/structure/sign/poster/legal/random
	name = "random legal poster"
	random_basetype = /obj/structure/sign/poster/legal
	icon_state = "random_legal"
	never_random = TRUE

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/random, 32)
//This is being hardcoded here to ensure we don't print directionals from the library management computer because they act wierd as a poster item
/obj/structure/sign/poster/legal/random/directional
	printable = FALSE

/obj/structure/sign/poster/legal/the_owl
	name = "The Owl"
	desc = "The Owl would do his best to protect the vessel. Will you?"
	icon_state = "the_owl"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/the_owl, 32)

/obj/structure/sign/poster/legal/high_class_martini
	name = "High-Class Martini"
	desc = "I told you to shake it, no stirring."
	icon_state = "high_class_martini"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/high_class_martini, 32)

/obj/structure/sign/poster/legal/space_cops
	name = "Space Cops."
	desc = "A poster advertising the television show Space Cops."
	icon_state = "space_cops"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/space_cops, 32)

/obj/structure/sign/poster/legal/soft_cap_pop_art
	name = "Soft Cap Pop Art"
	desc = "A poster reprint of some cheap pop art."
	icon_state = "soft_cap_pop_art"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/soft_cap_pop_art, 32)

/obj/structure/sign/poster/legal/foam_force_ad
	name = "Foam Force Ad"
	desc = "Foam Force, it's Foam or be Foamed!"
	icon_state = "foam_force_ad"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/foam_force_ad, 32)

/obj/structure/sign/poster/legal/cohiba_robusto_ad
	name = "Cohiba Robusto Ad"
	desc = "Cohiba Robusto, the classy cigar."
	icon_state = "cohiba_robusto_ad"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/cohiba_robusto_ad, 32)

/obj/structure/sign/poster/legal/fruit_bowl
	name = "Fruit Bowl"
	desc = " Simple, yet awe-inspiring."
	icon_state = "fruit_bowl"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/fruit_bowl, 32)

/obj/structure/sign/poster/legal/dick_gum
	name = "Dick Gumshue"
	desc = "A poster advertising the escapades of Dick Gumshue, mouse detective. Encouraging crew to bring the might of justice down upon wire saboteurs."
	icon_state = "dick_gum"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/dick_gum, 32)

/obj/structure/sign/poster/legal/periodic_table
	name = "Periodic Table of the Elements"
	desc = "A periodic table of the elements, from Hydrogen to Oganesson, and everything inbetween."
	icon_state = "periodic_table"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/periodic_table, 32)

/obj/structure/sign/poster/legal/robust_softdrinks
	name = "Robust Softdrinks"
	desc = "Robust Softdrinks: More robust than a toolbox to the head!"
	icon_state = "robust_softdrinks"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/robust_softdrinks, 32)

/obj/structure/sign/poster/legal/shamblers_juice
	name = "Shambler's Juice"
	desc = "~Shake me up some of that Shambler's Juice!~"
	icon_state = "shamblers_juice"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/shamblers_juice, 32)

/obj/structure/sign/poster/legal/pwr_game
	name = "Pwr Game"
	desc = "The POWER that gamers CRAVE! In partnership with Vlad's Salad."
	icon_state = "pwr_game"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/pwr_game, 32)

/obj/structure/sign/poster/legal/starkist
	name = "Star-kist"
	desc = "Drink the stars!"
	icon_state = "starkist"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/starkist, 32)

/obj/structure/sign/poster/legal/space_cola
	name = "Space Cola"
	desc = "Your favorite cola, in space."
	icon_state = "space_cola"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/space_cola, 32)

/obj/structure/sign/poster/legal/space_up
	name = "Space-Up!"
	desc = "Sucked out into space by the FLAVOR!"
	icon_state = "space_up"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/space_up, 32)

/obj/structure/sign/poster/legal/festive
	name = "Festive Notice Poster"
	desc = "A poster that informs of active holidays. None are today, so you should get back to work."
	icon_state = "holiday_none"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/festive, 32)

/obj/structure/sign/poster/legal/jim_nortons
	name = "Jim Norton's Québécois Coffee"
	desc = "An advertisement for Jim Norton's, the Québécois coffee joint that's taken the galaxy by storm."
	icon_state = "jim_nortons"

/obj/structure/sign/poster/legal/jim_nortons/examine_more(mob/user)
	. = ..()
	. += span_notice("<i>You browse some of the poster's information...</i>")
	. += "\t[span_info("From our roots in Trois-Rivières, we've worked to bring you the best coffee money can buy since 1965.")]"
	. += "\t[span_info("So stop by Jim's today- have a hot cup of coffee and a donut, and live like the Québécois do.")]"
	. += "\t[span_info("Jim Norton's Québécois Coffee: Toujours Le Bienvenu.")]"
	return .

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/jim_nortons, 32)

/obj/structure/sign/poster/legal/beekind
	name = "Bee Kind"
	desc = "Always bee kind to others!"
	icon_state = "beekind"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/beekind, 32)

/obj/structure/sign/poster/legal/ue_no
	name = "Ue No."
	desc = "This thing is all in Japanese."
	icon_state = "ue_no"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/ue_no, 32)

/obj/structure/sign/poster/legal/donut_corp
	name = "Donut Corp."
	desc = "This poster is an advertisement for Donut Corp."
	icon_state = "donut_corp"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/donut_corp, 32)

/obj/structure/sign/poster/legal/cybersun_commemorative
	name = "Saibāsan: 150 Years Commemorative Poster"
	desc = "An artistic poster commemorating 150 years of continual business for Cybersun Industries."
	icon_state = "cybersun_commemorative"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/cybersun_commemorative, 32)

/obj/structure/sign/poster/legal/interdyne_gene_clinics
	name = "Interdyne Pharmaceutics: For the Health of Humankind"
	desc = "An advertisement for Interdyne Pharmaceutics' GeneClean clinics. 'Become the master of your own body!'"
	icon_state = "interdyne_gene_clinics"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/interdyne_gene_clinics, 32)

/obj/structure/sign/poster/legal/andromeda_bitters
	name = "Andromeda Bitters"
	desc = "Andromeda Bitters: good for the body, good for the soul."
	icon_state = "andromeda_bitters"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/andromeda_bitters, 32)

/obj/structure/sign/poster/legal/blasto_detergent
	name = "Blasto Brand Laundry Detergent"
	desc = "Sheriff Blasto's here to take back Laundry County from the evil Johnny Dirt and the Clothstain Crew, and he's brought a posse. It's High Noon for Tough Stains: Blasto brand detergent, available at all good stores."
	icon_state = "blasto_detergent"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/blasto_detergent, 32)

/obj/structure/sign/poster/legal/little_fruits
	name = "Little Fruits: Honey, I Shrunk the Fruitbowl"
	desc = "Little Fruits are the galaxy's leading vitamin-enriched gummy candy product, packed with everything you need to stay healthy in one great tasting package. Get yourself a bag today!"
	icon_state = "little_fruits"

/obj/structure/sign/poster/legal/little_fruits/examine_more(mob/user)
	. = ..()
	. += span_notice("<i>You browse some of the poster's information...</i>")
	. += "\t[span_info("Oh no, there's been a terrible accident at the Little Fruits factory! We shrunk the fruits!")]"
	. += "\t[span_info("Wait, hang on, that's what we've always done! That's right, at Little Fruits our gummy candies are made to be as healthy as the real deal, but smaller and sweeter, too!")]"
	. += "\t[span_info("Get yourself a bag of our Classic Mix today, or perhaps you're interested in our other options? See our full range today on the extranet at little_fruits.kr.tg.")]"
	. += "\t[span_info("Little Fruits: Size Matters.")]"
	return .

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/little_fruits, 32)

/obj/structure/sign/poster/legal/jumbo_bar
	name = "Jumbo Ice Cream Bars"
	desc = "Get a taste of the Big Life with Jumbo Ice Cream Bars, from Happy Heart."
	icon_state = "jumbo_bar"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/jumbo_bar, 32)

/obj/structure/sign/poster/legal/calada_jelly
	name = "Calada Anobar Jelly"
	desc = "A treat from Tizira to satisfy all tastes, made from the finest anobar wood and luxurious Taraviero honey. Calada: a full tree in every jar."
	icon_state = "calada_jelly"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/calada_jelly, 32)

/obj/structure/sign/poster/legal/pizza_imperator
	name = "Pizza Imperator"
	desc = "An advertisement for Pizza Imperator. Their crusts may be tough and their sauce may be thin, but they're everywhere, so you've gotta give in."
	icon_state = "pizza_imperator"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/pizza_imperator, 32)

/obj/structure/sign/poster/legal/wildcat
	name = "Wildcat Customs Screambike"
	desc = "A pinup poster showing a Wildcat Customs Dante Screambike- the fastest production sublight open-frame vessel in the galaxy."
	icon_state = "wildcat"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/legal/wildcat, 32)
