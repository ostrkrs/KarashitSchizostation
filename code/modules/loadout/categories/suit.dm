/// Suit Slot Items (Moves overrided items to backpack)
/datum/loadout_category/suit
	category_name = "Suits"
	category_ui_icon = FA_ICON_VEST
	type_to_generate = /datum/loadout_item/suit
	tab_order = 6

/datum/loadout_item/suit
	abstract_type = /datum/loadout_item/suit

/datum/loadout_item/suit/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	LAZYADD(outfit.backpack_contents, outfit.suit)
	outfit.suit = item_path

/datum/loadout_item/suit/bomber
	name = "Bomber Jacket"
	item_path = /obj/item/clothing/suit/jacket/bomber

/datum/loadout_item/suit/blazer
	name = "Blazer Jacket (Colourable)"
	item_path = /obj/item/clothing/suit/jacket/blazer

/datum/loadout_item/suit/oversize
	name = "Oversized Jacket (Colourable)"
	item_path = /obj/item/clothing/suit/jacket/oversized

/datum/loadout_item/suit/sweater
	name = "Sweater Jacket (Colourable)"
	item_path = /obj/item/clothing/suit/toggle/jacket/sweater

/datum/loadout_item/suit/trenchcoat
	name = "Trenchcoat (Colourable)"
	item_path = /obj/item/clothing/suit/toggle/jacket/trenchcoat

/datum/loadout_item/suit/leather_trenchcoat
	name = "Leather Trenchcoat"
	item_path = /obj/item/clothing/suit/jacket/leather_trenchcoat

/datum/loadout_item/suit/leather_jacket
	name = "Leather Jacket"
	item_path = /obj/item/clothing/suit/jacket/leather

/datum/loadout_item/suit/biker_jacket
	name = "Biker Jacket"
	item_path = /obj/item/clothing/suit/jacket/leather/biker

/datum/loadout_item/suit/letterman
	name = "Letterman Jacket"
	item_path = /obj/item/clothing/suit/jacket/letterman

/datum/loadout_item/suit/letterman_red
	name = "Letterman Jacket (Red)"
	item_path = /obj/item/clothing/suit/jacket/letterman_red
