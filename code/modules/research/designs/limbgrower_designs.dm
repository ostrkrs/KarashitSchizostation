/////////////////////////////////////
//////////Limb Grower Designs ///////
/////////////////////////////////////

/datum/design/leftarm
	name = "Left Arm"
	id = "arm/left"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 25)
	build_path = /obj/item/bodypart/arm/left
	category = list(RND_CATEGORY_INITIAL, SPECIES_HUMAN)

/datum/design/rightarm
	name = "Right Arm"
	id = "arm/right"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 25)
	build_path = /obj/item/bodypart/arm/right
	category = list(RND_CATEGORY_INITIAL, SPECIES_HUMAN)

/datum/design/leftleg
	name = "Left Leg"
	id = "leg/left"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 25)
	build_path = /obj/item/bodypart/leg/left
	category = list(RND_CATEGORY_INITIAL, SPECIES_HUMAN, RND_CATEGORY_LIMBS_DIGITIGRADE)

/datum/design/rightleg
	name = "Right Leg"
	id = "leg/right"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 25)
	build_path = /obj/item/bodypart/leg/right
	category = list(RND_CATEGORY_INITIAL, SPECIES_HUMAN, RND_CATEGORY_LIMBS_DIGITIGRADE)

//Non-limb limb designs

/datum/design/heart
	name = "Heart"
	id = "heart"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 30)
	build_path = /obj/item/organ/heart
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/lungs
	name = "Lungs"
	id = "lungs"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 20)
	build_path = /obj/item/organ/lungs
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/liver
	name = "Liver"
	id = "liver"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 20)
	build_path = /obj/item/organ/liver
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/stomach
	name = "Stomach"
	id = "stomach"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 15)
	build_path = /obj/item/organ/stomach
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/appendix
	name = "Appendix"
	id = "appendix"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 5) //why would you need this
	build_path = /obj/item/organ/appendix
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/eyes
	name = "Eyes"
	id = "eyes"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 10)
	build_path = /obj/item/organ/eyes
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/ears
	name = "Ears"
	id = "ears"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 10)
	build_path = /obj/item/organ/ears
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/tongue
	name = "Tongue"
	id = "tongue"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 10)
	build_path = /obj/item/organ/tongue
	category = list(SPECIES_HUMAN, RND_CATEGORY_INITIAL)

/datum/design/armblade
	name = "Arm Blade"
	id = "armblade"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/c2/synthflesh = 75)
	build_path = /obj/item/melee/synthetic_arm_blade
	category = list(RND_CATEGORY_LIMBS_OTHER, RND_CATEGORY_HACKED)

/// Design disks and designs - for adding limbs and organs to the limbgrower.
/obj/item/disk/design_disk/limbs
	name = "Limb Design Disk"
	desc = "A disk containing limb and organ designs for a limbgrower."
	icon_state = "datadisk1"
	/// List of all limb designs this disk contains.
	var/list/limb_designs = list()

/obj/item/disk/design_disk/limbs/Initialize(mapload)
	. = ..()
	for(var/design in limb_designs)
		var/datum/design/new_design = design
		blueprints += new new_design

/datum/design/limb_disk
	name = "Limb Design Disk"
	desc = "Contains designs for various limbs."
	build_type = PROTOLATHE
	materials = list(/datum/material/iron =SMALL_MATERIAL_AMOUNT * 3, /datum/material/glass =SMALL_MATERIAL_AMOUNT)
	build_path = /obj/item/disk/design_disk/limbs
	category = list(
		RND_CATEGORY_EQUIPMENT + RND_SUBCATEGORY_EQUIPMENT_MEDICAL
	)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL
