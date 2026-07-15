// These icon_states may be overridden, but are for mapper's convinence
/obj/item/poster/random_old_syndie
	name = "random Syndicate poster"
	poster_type = /obj/structure/sign/poster/old_syndie/random
	icon_state = "rolled_syndie"

/obj/structure/sign/poster/old_syndie
	poster_item_name = "syndicate poster"
	poster_item_desc = "This poster comes with its own automatic adhesive mechanism, for easy pinning to any vertical surface. Looks old and shabby."
	poster_item_icon_state = "rolled_syndie"

/obj/structure/sign/poster/old_syndie/random
	name = "random syndicate poster"
	icon_state = "random_syndie"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/old_syndie

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/random, 32)

/obj/structure/sign/poster/old_syndie/syndicate_recruitment
	name = "Syndicate Recruitment"
	desc = "See the galaxy! Shatter corrupt megacorporations! Join today!"
	icon_state = "syndicate_recruitment"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/syndicate_recruitment, 32)

/obj/structure/sign/poster/old_syndie/syndicate_pistol
	name = "Syndicate Pistol"
	desc = "A poster advertising syndicate pistols as being 'classy as fuck'. It is covered in faded gang tags."
	icon_state = "syndicate_pistol"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/syndicate_pistol, 32)

/obj/structure/sign/poster/old_syndie/energy_swords
	name = "Energy Swords"
	desc = "All the colors of the bloody murder rainbow."
	icon_state = "energy_swords"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/energy_swords, 32)

/obj/structure/sign/poster/old_syndie/free_key
	name = "Free Syndicate Encryption Key"
	desc = "A poster about traitors begging for more."
	icon_state = "free_key"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/free_key, 32)

/obj/structure/sign/poster/old_syndie/gorlex_recruitment
	name = "Enlist"
	desc = "Enlist with the Gorlex Marauders today! See the galaxy, kill corpos, get paid!"
	icon_state = "gorlex_recruitment"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/gorlex_recruitment, 32)

/obj/structure/sign/poster/old_syndie/revolver
	name = "Revolver"
	desc = "Because seven shots are all you need."
	icon_state = "revolver"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/old_syndie/revolver, 32)
