/// Uniform Slot Items (Moves overrided items to backpack)
/datum/loadout_category/uniform
	category_name = "Uniforms"
	category_ui_icon = FA_ICON_SHIRT
	type_to_generate = /datum/loadout_item/uniform
	tab_order = 5

/datum/loadout_item/uniform
	abstract_type = /datum/loadout_item/uniform

/datum/loadout_item/uniform/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(outfit.uniform)
		LAZYADD(outfit.backpack_contents, outfit.uniform)
	outfit.uniform = item_path

/datum/loadout_item/uniform/casual
	group = "Casual Uniforms"
	abstract_type = /datum/loadout_item/uniform/casual

/datum/loadout_item/uniform/casual/color_jumpsuit
	name = "Jumpsuit (Colourable)"
	item_path = /obj/item/clothing/under/color

/datum/loadout_item/uniform/casual/color_jumpskirt
	name = "Jumpskirt (Colourable)"
	item_path = /obj/item/clothing/under/color/jumpskirt

/datum/loadout_item/uniform/casual/shirt_slacks
	name = "Button-Down Shirt (Slacks, Colourable)"
	item_path = /obj/item/clothing/under/costume/buttondown/slacks

/datum/loadout_item/uniform/casual/shirt_shorts
	name = "Button-Down Shirt (Shorts, Colourable)"
	item_path = /obj/item/clothing/under/costume/buttondown/shorts

/datum/loadout_item/uniform/casual/shirt_skirt
	name = "Button-Down Shirt (Skirt, Colourable)"
	item_path = /obj/item/clothing/under/costume/buttondown/skirt

/datum/loadout_item/uniform/casual/tacticool
	name = "Tacticool Turtleneck"
	item_path = /obj/item/clothing/under/syndicate/tacticool/fake

/datum/loadout_item/uniform/casual/tacticool_skirt
	name = "Tacticool Skirtleneck"
	item_path = /obj/item/clothing/under/syndicate/tacticool/skirt/fake


/datum/loadout_item/uniform/suit
	group = "Suits"
	abstract_type = /datum/loadout_item/uniform/suit

/datum/loadout_item/uniform/suit/charcoal
	name = "Suit (Charcoal)"
	item_path = /obj/item/clothing/under/suit/charcoal

/datum/loadout_item/uniform/suit/navy
	name = "Suit (Navy)"
	item_path = /obj/item/clothing/under/suit/navy

/datum/loadout_item/uniform/suit/burgundy
	name = "Suit (Burgundy)"
	item_path = /obj/item/clothing/under/suit/burgundy

/datum/loadout_item/uniform/suit/checkered
	name = "Suit (Checkered)"
	item_path = /obj/item/clothing/under/suit/checkered

/datum/loadout_item/uniform/suit/beige
	name = "Suit (Beige)"
	item_path = /obj/item/clothing/under/suit/beige

/datum/loadout_item/uniform/suit/black
	name = "Suit (Black)"
	item_path = /obj/item/clothing/under/suit/black

/datum/loadout_item/uniform/suit/black_skirt
	name = "Suit (Black, Skirt)"
	item_path = /obj/item/clothing/under/suit/black/skirt

/datum/loadout_item/uniform/suit/white
	name = "Suit (White)"
	item_path = /obj/item/clothing/under/suit/white

/datum/loadout_item/uniform/suit/white_skirt
	name = "Suit (White, Skirt)"
	item_path = /obj/item/clothing/under/suit/white/skirt


/datum/loadout_item/uniform/pants
	group = "Pants"
	abstract_type = /datum/loadout_item/uniform/pants

/datum/loadout_item/uniform/pants/slacks
	name = "Slacks (Colourable)"
	item_path = /obj/item/clothing/under/pants/slacks

/datum/loadout_item/uniform/pants/jeans
	name = "Jeans (Colourable)"
	item_path = /obj/item/clothing/under/pants/jeans

/datum/loadout_item/uniform/pants/track
	name = "Track Pants"
	item_path = /obj/item/clothing/under/pants/track

/datum/loadout_item/uniform/pants/shorts
	name = "Shorts (Colourable)"
	item_path = /obj/item/clothing/under/shorts

/datum/loadout_item/uniform/pants/jeanshorts
	name = "Jean Shorts (Colourable)"
	item_path = /obj/item/clothing/under/shorts/jeanshorts

/datum/loadout_item/uniform/pants/athletic
	name = "Athletic Shorts (Colourable)"
	item_path = /obj/item/clothing/under/shorts/athletic
