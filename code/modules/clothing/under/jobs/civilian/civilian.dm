//Alphabetical order of civilian jobs.

/obj/item/clothing/under/rank/civilian
	icon = 'icons/obj/clothing/under/civilian.dmi'
	worn_icon = 'icons/mob/clothing/under/civilian.dmi'
	abstract_type = /obj/item/clothing/under/rank/civilian

/obj/item/clothing/under/rank/civilian/steward
	name = "steward's uniform"
	desc = "An elegant uniform sharply projecting professionalism of \"Steward\"."
	icon_state = "steward"
	inhand_icon_state = "bl_suit"

/obj/item/clothing/under/rank/civilian/steward/skirt
	name = "steward's skirt"
	desc = "An elegant uniform and skirt sharply projecting professionalism of \"Steward\"."
	icon_state = "steward_skirt"
	inhand_icon_state = "bl_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON


/obj/item/clothing/under/rank/civilian/purple_bartender
	name = "purple bartender's uniform"
	desc = "It looks like it has lots of flair!"
	icon_state = "purplebartender"
	can_adjust = FALSE


/obj/item/clothing/under/rank/civilian/chaplain
	name = "chaplain's jumpsuit"
	desc = "It's a black jumpsuit, often worn by religious folk."
	icon_state = "chaplain"
	inhand_icon_state = "bl_suit"
	can_adjust = FALSE

/obj/item/clothing/under/rank/civilian/chaplain/skirt
	name = "chaplain's jumpskirt"
	desc = "It's a black jumpskirt. If you wear this, you probably need religious help more than you will be providing it."
	icon_state = "chapblack_skirt"
	inhand_icon_state = "bl_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON


/obj/item/clothing/under/rank/civilian/hydroponics
	name = "botanist's jumpsuit"
	desc = "It's a jumpsuit designed to protect against minor plant-related hazards."
	icon_state = "hydroponics"
	inhand_icon_state = "g_suit"
	armor_type = /datum/armor/clothing_under/civilian_hydroponics

/datum/armor/clothing_under/civilian_hydroponics
	bio = 50

/obj/item/clothing/under/rank/civilian/hydroponics/skirt
	name = "botanist's jumpskirt"
	desc = "It's a jumpskirt designed to protect against minor plant-related hazards."
	icon_state = "hydroponics_skirt"
	inhand_icon_state = "g_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON


/obj/item/clothing/under/rank/civilian/janitor
	name = "janitor's jumpsuit"
	desc = "It's the official uniform of the station's janitor. It has minor protection from biohazards."
	icon_state = "janitor"
	inhand_icon_state = "janitor"
	armor_type = /datum/armor/clothing_under/civilian_janitor

/datum/armor/clothing_under/civilian_janitor
	bio = 10

/obj/item/clothing/under/rank/civilian/janitor/skirt
	name = "janitor's jumpskirt"
	desc = "It's the official skirt of the station's janitor. It has minor protection from biohazards."
	icon_state = "janitor_skirt"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/janitor/maid
	name = "maid uniform"
	desc = "A simple maid uniform for housekeeping."
	icon_state = "janimaid"
	inhand_icon_state = "janimaid"
	body_parts_covered = CHEST|GROIN
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	can_adjust = FALSE


/obj/item/clothing/under/rank/civilian/iaa
	name = "internal affairs agent suit"
	desc = "Slick threads."
	icon = 'icons/obj/clothing/under/suits.dmi'
	worn_icon = 'icons/mob/clothing/under/suits.dmi'
	abstract_type = /obj/item/clothing/under/rank/civilian/iaa
	can_adjust = FALSE

/obj/item/clothing/under/rank/civilian/iaa/dye_item(dye_color, dye_key_override)
	if(dye_color == DYE_COSMIC || dye_color == DYE_SYNDICATE)
		if(dying_key == DYE_REGISTRY_JUMPSKIRT)
			return ..(dye_color, DYE_IAA_SPECIAL_SKIRT)
		else
			return ..(dye_color, DYE_IAA_SPECIAL)
	else
		return ..()

/obj/item/clothing/under/rank/civilian/iaa/black
	name = "internal affairs agent black suit"
	icon_state = "iaa_black"
	inhand_icon_state = "iaa_black"

/obj/item/clothing/under/rank/civilian/iaa/black/skirt
	name = "internal affairs agent black suitskirt"
	icon_state = "iaa_black_skirt"
	inhand_icon_state = "iaa_black"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/beige
	name = "good internal affairs agent's suit"
	desc = "A tacky suit perfect for a CRIMINAL internal affairs agent!"
	icon_state = "good_suit"
	inhand_icon_state = "good_suit"

/obj/item/clothing/under/rank/civilian/iaa/beige/skirt
	name = "good internal affairs agent's suitskirt"
	desc = "A tacky suitskirt perfect for a CRIMINAL internal affairs agent!"
	icon_state = "good_suit_skirt"
	inhand_icon_state = "good_suit"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/red
	name = "internal affairs agent red suit"
	icon_state = "iaa_red"
	inhand_icon_state = "iaa_red"

/obj/item/clothing/under/rank/civilian/iaa/red/skirt
	name = "internal affairs agent red suitskirt"
	icon_state = "iaa_red_skirt"
	inhand_icon_state = "iaa_red"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/blue
	name = "internal affairs agent blue suit"
	icon_state = "iaa_blue"
	inhand_icon_state = "iaa_blue"

/obj/item/clothing/under/rank/civilian/iaa/blue/skirt
	name = "internal affairs agent blue suitskirt"
	icon_state = "iaa_blue_skirt"
	inhand_icon_state = "iaa_blue"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/bluesuit
	name = "blue buttondown suit"
	worn_icon = 'icons/mob/clothing/under/shorts_pants_shirts.dmi'
	icon = 'icons/map_icons/clothing/under/_under.dmi'
	icon_state = "/obj/item/clothing/under/rank/civilian/iaa/bluesuit"
	post_init_icon_state = "buttondown_slacks"
	greyscale_config = /datum/greyscale_config/buttondown_slacks
	greyscale_config_worn = /datum/greyscale_config/buttondown_slacks/worn
	greyscale_colors = "#EEEEEE#CBDBFC#17171B#2B65A8"
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/civilian/iaa/bluesuit/skirt
	name = "blue buttondown suitskirt"
	icon = 'icons/map_icons/clothing/under/_under.dmi'
	icon_state = "/obj/item/clothing/under/rank/civilian/iaa/bluesuit/skirt"
	post_init_icon_state = "buttondown_skirt"
	greyscale_config = /datum/greyscale_config/buttondown_skirt
	greyscale_config_worn = /datum/greyscale_config/buttondown_skirt/worn
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/purpsuit
	name = "purple suit"
	icon_state = "iaa_purp"
	inhand_icon_state = "p_suit"
	female_sprite_flags = NO_FEMALE_UNIFORM
	can_adjust = TRUE
	alt_covers_chest = TRUE

/obj/item/clothing/under/rank/civilian/iaa/purpsuit/skirt
	name = "purple suitskirt"
	icon_state = "iaa_purp_skirt"
	inhand_icon_state = "p_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/galaxy
	name = "blue galaxy suit"
	icon = 'icons/obj/clothing/under/iaa_galaxy.dmi'
	worn_icon = 'icons/mob/clothing/under/iaa_galaxy.dmi'
	can_adjust = FALSE
	icon_state = "iaa_galaxy_blue"
	inhand_icon_state = "b_suit"

/obj/item/clothing/under/rank/civilian/iaa/galaxy/skirt
	name = "blue galaxy suitskirt"
	icon_state = "iaa_galaxy_blue_skirt"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/rank/civilian/iaa/galaxy/red
	name = "red galaxy suit"
	icon_state = "iaa_galaxy_red"
	inhand_icon_state = "r_suit"

/obj/item/clothing/under/rank/civilian/iaa/galaxy/red/skirt
	name = "red galaxy suitskirt"
	icon_state = "iaa_galaxy_red_skirt"
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON


/obj/item/clothing/under/rank/civilian/cookjorts
	name = "grilling shorts"
	desc = "For when all you want in life is to grill for god's sake!"
	icon_state = "cookjorts"
	inhand_icon_state = "cookjorts"
	can_adjust = FALSE
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
