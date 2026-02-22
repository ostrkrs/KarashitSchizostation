/// Gloves Items (Moves overrided items to backpack)
/datum/loadout_category/gloves
	category_name = "Gloves"
	category_ui_icon = FA_ICON_HANDS
	type_to_generate = /datum/loadout_item/gloves
	tab_order = 4

/datum/loadout_item/gloves
	abstract_type = /datum/loadout_item/gloves

/datum/loadout_item/gloves/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(outfit.gloves)
		LAZYADD(outfit.backpack_contents, outfit.gloves)
	outfit.gloves = item_path

/datum/loadout_item/gloves/white
	name = "Gloves (White)"
	item_path = /obj/item/clothing/gloves/color/white

/datum/loadout_item/gloves/black
	name = "Gloves (Black)"
	item_path = /obj/item/clothing/gloves/color/black

/datum/loadout_item/gloves/rainbow
	name = "Gloves (Rainbow)"
	item_path = /obj/item/clothing/gloves/color/rainbow

/datum/loadout_item/gloves/fingerless_black
	name = "Fingerless Gloves"
	item_path = /obj/item/clothing/gloves/fingerless

/datum/loadout_item/gloves/kim
	name = "Aerostatic Gloves"
	item_path = /obj/item/clothing/gloves/kim
