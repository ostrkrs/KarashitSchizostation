/// Head Slot Items (Deletes overrided items)
/datum/loadout_category/head
	category_name = "Head"
	category_ui_icon = FA_ICON_HAT_COWBOY
	type_to_generate = /datum/loadout_item/head
	tab_order = 1

/datum/loadout_item/head
	abstract_type = /datum/loadout_item/head

/datum/loadout_item/head/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(equipper.dna?.species?.outfit_important_for_life)
		if(!visuals_only)
			to_chat(equipper, "Your loadout helmet was not equipped directly due to your species outfit.")
			LAZYADD(outfit.backpack_contents, item_path)
	else
		outfit.head = item_path

//MARK: CAPS
/datum/loadout_item/head/caps
	group = "Caps"
	abstract_type = /datum/loadout_item/head/caps

/datum/loadout_item/head/caps/black_cap
	name = "Cap (Black)"
	item_path = /obj/item/clothing/head/soft/black

/datum/loadout_item/head/caps/blue_cap
	name = "Cap (Blue)"
	item_path = /obj/item/clothing/head/soft/blue

/datum/loadout_item/head/caps/green_cap
	name = "Cap (Green)"
	item_path = /obj/item/clothing/head/soft/green

/datum/loadout_item/head/caps/grey_cap
	name = "Cap (Grey)"
	item_path = /obj/item/clothing/head/soft/grey

/datum/loadout_item/head/caps/orange_cap
	name = "Cap (Orange)"
	item_path = /obj/item/clothing/head/soft/orange

/datum/loadout_item/head/caps/purple_cap
	name = "Cap (Purple)"
	item_path = /obj/item/clothing/head/soft/purple

/datum/loadout_item/head/caps/rainbow_cap
	name = "Cap (Rainbow)"
	item_path = /obj/item/clothing/head/soft/rainbow

/datum/loadout_item/head/caps/red_cap
	name = "Cap (Red)"
	item_path = /obj/item/clothing/head/soft/red

/datum/loadout_item/head/caps/white_cap
	name = "Cap (White)"
	item_path = /obj/item/clothing/head/soft/mime

/datum/loadout_item/head/caps/yellow_cap
	name = "Cap (Yellow)"
	item_path = /obj/item/clothing/head/soft/yellow

//MARK: FLOWERS
/datum/loadout_item/head/flowers
	group = "Flowers"
	abstract_type = /datum/loadout_item/head/flowers

/datum/loadout_item/head/flowers/rose
	name = "Rose"
	item_path = /obj/item/food/grown/rose

/datum/loadout_item/head/flowers/sunflower
	name = "Sunflower"
	item_path = /obj/item/food/grown/sunflower

/datum/loadout_item/head/flowers/poppy
	name = "Poppy"
	item_path = /obj/item/food/grown/poppy

/datum/loadout_item/head/flowers/lily
	name = "Lily"
	item_path = /obj/item/food/grown/poppy/lily

/datum/loadout_item/head/flowers/geranium
	name = "Geranium"
	item_path = /obj/item/food/grown/poppy/geranium

/datum/loadout_item/head/flowers/harebell
	name = "Harebell"
	item_path = /obj/item/food/grown/harebell

//MARK: MISC
/datum/loadout_item/head/misc
	group = "Misc."
	abstract_type = /datum/loadout_item/head/misc

/datum/loadout_item/head/misc/beanie
	name = "Beanie (Colourable)"
	item_path = /obj/item/clothing/head/beanie

/datum/loadout_item/head/misc/rastafarian
	name = "Beanie (Rastafarian)"
	item_path = /obj/item/clothing/head/rasta

/datum/loadout_item/head/misc/fancy_cap
	name = "Fancy Hat (Colourable)"
	item_path = /obj/item/clothing/head/costume/fancy

/datum/loadout_item/head/misc/red_beret
	name = "Red Beret (Colourable)"
	item_path = /obj/item/clothing/head/beret

/datum/loadout_item/head/misc/flatcap
	name = "Flat Cap"
	item_path = /obj/item/clothing/head/flatcap

/datum/loadout_item/head/misc/beige_fedora
	name = "Fedora (Beige)"
	item_path = /obj/item/clothing/head/fedora/beige

/datum/loadout_item/head/misc/black_fedora
	name = "Fedora (Black)"
	item_path = /obj/item/clothing/head/fedora

/datum/loadout_item/head/misc/white_fedora
	name = "Fedora (White)"
	item_path = /obj/item/clothing/head/fedora/white

/datum/loadout_item/head/misc/mail_cap
	name = "Mail Cap"
	item_path = /obj/item/clothing/head/costume/mailman

/datum/loadout_item/head/misc/bandana
	name = "Bandana Thin"
	item_path = /obj/item/clothing/head/costume/tmc

/datum/loadout_item/head/misc/top_hat
	name = "Top Hat"
	item_path = /obj/item/clothing/head/hats/tophat

/datum/loadout_item/head/misc/bowler_hat
	name = "Bowler Hat"
	item_path = /obj/item/clothing/head/hats/bowler

/datum/loadout_item/head/misc/ushanka
	name = "Ushanka"
	item_path = /obj/item/clothing/head/costume/ushanka

/datum/loadout_item/head/misc/wig
	name = "Natural Wig"
	item_path = /obj/item/clothing/head/wig/natural
