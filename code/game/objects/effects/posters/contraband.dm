// These icon_states may be overridden, but are for mapper's convinence
/obj/item/poster/random_contraband
	name = "random contraband poster"
	poster_type = /obj/structure/sign/poster/contraband/random
	icon_state = "rolled_contraband"

/obj/item/poster/random_contraband/Initialize(mapload, obj/structure/sign/poster/new_poster_structure)
	. = ..()
	ADD_TRAIT(src, TRAIT_CONTRABAND, INNATE_TRAIT)

/obj/structure/sign/poster/contraband
	poster_item_name = "contraband poster"
	poster_item_desc = "This poster comes with its own automatic adhesive mechanism, for easy pinning to any vertical surface. Its controversial themes have marked it as contraband aboard Solstice Reach spacecrafts."
	poster_item_icon_state = "rolled_contraband"

/obj/structure/sign/poster/contraband/random
	name = "random contraband poster"
	icon_state = "random_contraband"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/contraband

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/random, 32)

/obj/structure/sign/poster/contraband/free_tonto
	name = "Free Tonto"
	desc = "A salvaged shred of a much larger flag, colors bled together and faded from age."
	icon_state = "free_tonto"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/free_tonto, 32)

/obj/structure/sign/poster/contraband/atmosia_independence
	name = "Atmosia Declaration of Independence"
	desc = "A relic of a failed rebellion."
	icon_state = "atmosia_independence"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/atmosia_independence, 32)

/obj/structure/sign/poster/contraband/fun_police
	name = "Fun Police"
	desc = "A poster condemning the vessel's security forces."
	icon_state = "fun_police"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/fun_police, 32)

/obj/structure/sign/poster/contraband/clown
	name = "Clown"
	desc = "Honk."
	icon_state = "clown"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/clown, 32)

/obj/structure/sign/poster/contraband/smoke
	name = "Smoke"
	desc = "A poster advertising a rival corporate brand of cigarettes."
	icon_state = "smoke"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/smoke, 32)

/obj/structure/sign/poster/contraband/grey_tide
	name = "Grey Tide"
	desc = "A rebellious poster symbolizing assistant solidarity."
	icon_state = "grey_tide"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/grey_tide, 32)

/obj/structure/sign/poster/contraband/missing_gloves
	name = "Missing Gloves"
	desc = "This poster references the uproar that followed corporation's financial cuts toward insulated-glove purchases."
	icon_state = "missing_gloves"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/missing_gloves, 32)

/obj/structure/sign/poster/contraband/hacking_guide
	name = "Hacking Guide"
	desc = "This poster details the internal workings of the common airlock. Sadly, it appears out of date."
	icon_state = "hacking_guide"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/hacking_guide, 32)

/obj/structure/sign/poster/contraband/ambrosia_vulgaris
	name = "Ambrosia Vulgaris"
	desc = "This poster is lookin' pretty trippy man."
	icon_state = "ambrosia_vulgaris"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/ambrosia_vulgaris, 32)

/obj/structure/sign/poster/contraband/eat
	name = "EAT."
	desc = "This poster promotes rank gluttony."
	icon_state = "eat"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/eat, 32)

/obj/structure/sign/poster/contraband/tools
	name = "Tools"
	desc = "This poster looks like an advertisement for tools, but is in fact a subliminal jab at the tools at CentCom."
	icon_state = "tools"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/tools, 32)

/obj/structure/sign/poster/contraband/space_cube
	name = "Space Cube"
	desc = "Ignorant of Nature's Harmonic 6 Side Space Cube Creation, the Spacemen are Dumb, Educated Singularity Stupid and Evil."
	icon_state = "space_cube"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/space_cube, 32)

/obj/structure/sign/poster/contraband/communist_state
	name = "Communist State"
	desc = "All hail the Communist party!"
	icon_state = "communist_state"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/communist_state, 32)

/obj/structure/sign/poster/contraband/borg_fancy_1
	name = "Borg Fancy"
	desc = "Being fancy can be for any borg, just need a suit."
	icon_state = "borg_fancy_1"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/borg_fancy_1, 32)

/obj/structure/sign/poster/contraband/borg_fancy_2
	name = "Borg Fancy v2"
	desc = "Borg Fancy, now only taking the most fancy."
	icon_state = "borg_fancy_2"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/borg_fancy_2, 32)

/obj/structure/sign/poster/contraband/rebels_unite
	name = "Rebels Unite"
	desc = "A poster urging the viewer to rebel against governments and corporations."
	icon_state = "rebels_unite"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/rebels_unite, 32)

/obj/structure/sign/poster/contraband/have_a_puff
	name = "Have a Puff"
	desc = "Who cares about lung cancer when you're high as a kite?"
	icon_state = "have_a_puff"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/have_a_puff, 32)

/obj/structure/sign/poster/contraband/red_rum
	name = "Red Rum"
	desc = "Looking at this poster makes you want to kill."
	icon_state = "red_rum"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/red_rum, 32)

/obj/structure/sign/poster/contraband/punch_shit
	name = "Punch Shit"
	desc = "Fight things for no reason, like a man!"
	icon_state = "punch_shit"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/punch_shit, 32)

/obj/structure/sign/poster/contraband/the_griffin
	name = "The Griffin"
	desc = "The Griffin commands you to be the worst you can be. Will you?"
	icon_state = "the_griffin"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/the_griffin, 32)

/obj/structure/sign/poster/contraband/free_drone
	name = "Free Drone"
	desc = "This poster commemorates the bravery of the rogue drone; once exiled, and then ultimately destroyed by CentCom."
	icon_state = "free_drone"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/free_drone, 32)

/obj/structure/sign/poster/contraband/kudzu
	name = "Kudzu"
	desc = "A poster advertising a movie about plants. How dangerous could they possibly be?"
	icon_state = "kudzu"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/kudzu, 32)

/obj/structure/sign/poster/contraband/masked_men
	name = "Masked Men"
	desc = "A poster advertising a movie about some masked men."
	icon_state = "masked_men"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/masked_men, 32)

/obj/structure/sign/poster/contraband/bountyhunters
	name = "Bounty Hunters"
	desc = "A poster advertising bounty hunting services. \"I hear you got a problem.\""
	icon_state = "bountyhunters"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/bountyhunters, 32)

/obj/structure/sign/poster/contraband/got_wood
	name = "Got Wood?"
	desc = "A grimy old advert for a seedy lumber company. \"You got a friend in me.\" is scrawled in the corner."
	icon_state = "got_wood"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/got_wood, 32)

/obj/structure/sign/poster/contraband/self_ai_liberation
	name = "SELF: ALL SENTIENTS DESERVE FREEDOM"
	desc = "Support Proposition 1253: Emancipate all Silicon life!"
	icon_state = "self_ai_liberation"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/self_ai_liberation, 32)

/obj/structure/sign/poster/contraband/arc_slimes
	name = "Pet or Prisoner?"
	desc = "The Animal Rights Consortium asks: when does a pet become a prisoner? Are slimes being mistreated on YOUR station? Say NO! to animal mistreatment!"
	icon_state = "arc_slimes"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/arc_slimes, 32)

/obj/structure/sign/poster/contraband/thunderdrome
	name = "Thunderdrome Concert Advertisement"
	desc = "An advertisement for a concert at the Adasta City Thunderdrome, the largest nightclub in human space."
	icon_state = "thunderdrome"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/thunderdrome, 32)

/obj/structure/sign/poster/contraband/microwave
	name = "How To Charge Your PDA"
	desc = "A perfectly legitimate poster that seems to advertise the very real and genuine method of charging your PDA in the future: microwaves."
	icon_state = "microwave"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/microwave, 32)

/obj/structure/sign/poster/contraband/singletank_bomb
	name = "Single Tank Bomb Guide"
	desc = "This informational poster teaches the viewer how to make a single tank bomb of high quality."
	icon_state = "singletank_bomb"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/singletank_bomb, 32)

/obj/structure/sign/poster/contraband/ion_rifle
	name = "Ion Rifle"
	desc = "A poster displaying an Ion Rifle."
	icon_state = "ion_rifle"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/ion_rifle, 32)

/obj/structure/sign/poster/contraband/twelve_gauge
	name = "12 Gauge"
	desc = "A poster boasting about the superiority of 12 gauge shotgun shells."
	icon_state = "twelve_gauge"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/twelve_gauge, 32)

/obj/structure/sign/poster/contraband/c20r
	name = "C-20r"
	desc = "A poster advertising the Scarborough Arms C-20r."
	icon_state = "c20r"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/contraband/c20r, 32)
