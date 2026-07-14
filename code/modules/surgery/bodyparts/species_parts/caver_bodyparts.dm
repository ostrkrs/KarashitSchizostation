/obj/item/bodypart/head/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	head_flags = HEAD_HAIR|HEAD_LIPS|HEAD_EYESPRITES|HEAD_EYECOLOR|HEAD_EYEHOLES|HEAD_DEBRAIN
	brute_modifier = 0.9


/obj/item/bodypart/chest/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	is_dimorphic = TRUE


/obj/item/bodypart/arm/left/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	brute_modifier = 0.9

/obj/item/bodypart/arm/right/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	brute_modifier = 0.9


/obj/item/bodypart/leg/left/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	bodyshape = BODYSHAPE_DIGITIGRADE
	brute_modifier = 0.9

/obj/item/bodypart/leg/right/caver
	icon_greyscale = 'icons/mob/human/species/human_subtypes/caver/bodyparts.dmi'
	limb_id = SPECIES_HUMAN_CAVER
	bodyshape = BODYSHAPE_DIGITIGRADE
	brute_modifier = 0.9

/obj/item/bodypart/leg/left/caver/update_limb(dropping_limb = FALSE, is_creating = FALSE)
	. = ..()
	limb_id = owner?.is_digitigrade_squished() ? SPECIES_HUMAN : SPECIES_HUMAN_CAVER

/obj/item/bodypart/leg/right/caver/update_limb(dropping_limb = FALSE, is_creating = FALSE)
	. = ..()
	limb_id = owner?.is_digitigrade_squished() ? SPECIES_HUMAN : SPECIES_HUMAN_CAVER
