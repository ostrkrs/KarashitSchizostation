/obj/item/poster/random_pinup
	name = "random pin-up poster"
	poster_type = /obj/structure/sign/poster/pinup/random
	icon_state = "rolled_poster_pinup"

/obj/structure/sign/poster/pinup
	poster_item_desc = "This poster comes with its own automatic adhesive mechanism, for easy pinning to any vertical surface. And it's so vulgar!"
	poster_item_name = "pin-up poster"
	poster_item_icon_state = "rolled_poster_pinup"

/obj/structure/sign/poster/pinup/random
	name = "random pin-up poster"
	icon_state = "random_anything"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/pinup

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/pinup/random, 32)

/obj/structure/sign/poster/pinup/double_rainbow
	name = "Double Rainbow"
	desc = "It's so bright and vivid! What does this mean?"
	icon_state = "double_rainbow"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/pinup/double_rainbow, 32)

/obj/structure/sign/poster/pinup/miss_science
	name = "Miss Science"
	desc = "This pin-up poster depicts a slim woman wearing nothing but bikini under corporate labcoat, glasses, and sheepish grin. She's shyly posing atop some highly specialized research equipment. Damn, she's such a cutie."
	icon_state = "miss_science"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/pinup/miss_science, 32)

/obj/structure/sign/poster/pinup/cargo_tomboy
	name = "Cargo Tomboy"
	desc = "This pin-up poster depicts a toned woman wearing nothing but sports bra with thin boyshorts under cargo overcoat, and imperious look. She's defiantly posing atop big metal crate. Damn, she's such a baddie."
	icon_state = "cargo_tomboy"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/pinup/cargo_tomboy, 32)
