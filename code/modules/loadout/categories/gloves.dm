/// Gloves Items (Moves overrided items to backpack)
/datum/loadout_category/gloves
	category_name = "Gloves"
	category_ui_icon = FA_ICON_HANDS
	type_to_generate = /datum/loadout_item/gloves
	tab_order = 7

/datum/loadout_item/gloves
	abstract_type = /datum/loadout_item/gloves

/datum/loadout_item/gloves/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(outfit.gloves)
		LAZYADD(outfit.backpack_contents, outfit.gloves)
	outfit.gloves = item_path

/datum/loadout_item/gloves/white
	name = "Gloves (White)"
	item_path = /obj/item/clothing/gloves/color/white

/datum/loadout_item/gloves/grey
	name = "Gloves (Grey)"
	item_path = /obj/item/clothing/gloves/color/grey

/datum/loadout_item/gloves/black
	name = "Gloves (Black)"
	item_path = /obj/item/clothing/gloves/color/black

/datum/loadout_item/gloves/rainbow
	name = "Gloves (Rainbow)"
	item_path = /obj/item/clothing/gloves/color/rainbow

/datum/loadout_item/gloves/red
	name = "Gloves (Red)"
	item_path = /obj/item/clothing/gloves/color/red

/datum/loadout_item/gloves/orange
	name = "Gloves (Orange)"
	item_path = /obj/item/clothing/gloves/color/orange

/datum/loadout_item/gloves/green
	name = "Gloves (Green)"
	item_path = /obj/item/clothing/gloves/color/green

/datum/loadout_item/gloves/blue
	name = "Gloves (Blue)"
	item_path = /obj/item/clothing/gloves/color/blue

/datum/loadout_item/gloves/purple
	name = "Gloves (Purple)"
	item_path = /obj/item/clothing/gloves/color/purple

/datum/loadout_item/gloves/light_brown
	name = "Gloves (Light Brown)"
	item_path = /obj/item/clothing/gloves/color/light_brown

/datum/loadout_item/gloves/brown
	name = "Gloves (Brown)"
	item_path = /obj/item/clothing/gloves/color/brown

/datum/loadout_item/gloves/fingerless_black
	name = "Fingerless Gloves"
	item_path = /obj/item/clothing/gloves/fingerless

/datum/loadout_item/gloves/kim
	name = "Aerostatic Gloves"
	item_path = /obj/item/clothing/gloves/kim
