
/*
 * Patch Packs
 */
/obj/item/storage/patch_pack
	name = "patch pack"
	desc = "It's a container for storing medical patches."
	icon = 'icons/map_icons/items/_item.dmi'
	icon_state = "/obj/item/storage/patch_pack"
	post_init_icon_state = "patch_pack"
	w_class = WEIGHT_CLASS_SMALL
	pickup_sound = 'sound/items/handling/matchbox_pickup.ogg'
	drop_sound = 'sound/items/handling/matchbox_drop.ogg'
	storage_type = /datum/storage/patchpack

	flags_1 = IS_PLAYER_COLORABLE_1
	greyscale_config = /datum/greyscale_config/patch_pack
	greyscale_colors = COLOR_ASSEMBLY_BLUE

	///Number of pills to spawn
	VAR_PROTECTED/spawn_count
	///Patch type to spawn
	VAR_PROTECTED/obj/item/reagent_containers/applicator/patch/spawn_type

/obj/item/storage/patch_pack/PopulateContents()
	SHOULD_NOT_OVERRIDE(TRUE)

	if(!spawn_count)
		return

	for(var/i in 1 to spawn_count)
		new spawn_type(src)

/obj/item/storage/patch_pack/libital
	name = "patch pack (libital)"
	desc = "Contains patches used to treat brute damage."
	spawn_count = 5
	spawn_type = /obj/item/reagent_containers/applicator/patch/libital

/obj/item/storage/patch_pack/aiuri
	name = "patch pack (aiuri)"
	desc = "Contains patches used to treat burn damage."
	spawn_count = 5
	spawn_type = /obj/item/reagent_containers/applicator/patch/aiuri

/obj/item/storage/patch_pack/ondansetron
	name = "patch pack (ondansetron)"
	desc = "A pack containing patches of ondansetron, a drug used to treat nausea and vomiting. May cause drowsiness."
	spawn_count = 5
	spawn_type = /obj/item/reagent_containers/applicator/patch/ondansetron
