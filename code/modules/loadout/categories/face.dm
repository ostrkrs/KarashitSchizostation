/// Face Slot Items (Deletes overrided items)
/datum/loadout_category/face
	category_name = "Face"
	category_ui_icon = FA_ICON_MASKS_THEATER
	type_to_generate = /datum/loadout_item/face
	tab_order = 2

/datum/loadout_item/face
	abstract_type = /datum/loadout_item/face

/datum/loadout_item/face/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(equipper.dna?.species?.outfit_important_for_life)
		if(!visuals_only)
			to_chat(equipper, "Your loadout mask was not equipped directly due to your species outfit.")
			LAZYADD(outfit.backpack_contents, item_path)
	else
		outfit.mask = item_path

/datum/loadout_item/face/facescarf
	name = "Facescarf (Colorable)"
	item_path = /obj/item/clothing/mask/facescarf

/datum/loadout_item/face/bandana
	name = "Bandana (Colorable)"
	item_path = /obj/item/clothing/mask/bandana

/datum/loadout_item/face/striped_bandana
	name = "Bandana (Striped, Colorable)"
	item_path = /obj/item/clothing/mask/bandana/striped

/datum/loadout_item/face/fakemoustache
	name = "Fake Moustache"
	item_path = /obj/item/clothing/mask/fakemoustache
