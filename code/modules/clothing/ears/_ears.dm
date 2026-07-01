
//Ears: currently only used for headsets and earmuffs
/obj/item/clothing/ears
	name = "ears"
	lefthand_file = 'icons/mob/inhands/clothing/ears_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/ears_righthand.dmi'
	abstract_type = /obj/item/clothing/ears
	w_class = WEIGHT_CLASS_TINY
	throwforce = 0
	slot_flags = ITEM_SLOT_EARS
	resistance_flags = NONE

/obj/item/clothing/ears/earmuffs
	name = "protective earmuffs"
	desc = "Protects your hearing from loud noises, and quiet ones as well."
	icon = 'icons/obj/clothing/ears.dmi'
	icon_state = "earmuffs"
	inhand_icon_state = "earmuffs"
	clothing_traits = list(TRAIT_DEAF)
	strip_delay = 1.5 SECONDS
	equip_delay_other = 2.5 SECONDS
	resistance_flags = FLAMMABLE
	custom_price = PAYCHECK_COMMAND
	flags_cover = EARS_COVERED

/obj/item/clothing/ears/earmuffs/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/earhealing)
	AddComponent(/datum/component/wearertargeting/earprotection)
	AddComponent(/datum/component/adjust_fishing_difficulty, -2)

/obj/item/clothing/ears/earmuffs/security
	name = "shooting earmuffs"
	desc = "Protects your hearing from loud shots and blasts."
	icon_state = "earmuffs_sec"
	inhand_icon_state = "earmuffs_sec"
	clothing_traits = list()
	resistance_flags = FIRE_PROOF | ACID_PROOF
	custom_price = PAYCHECK_COMMAND * 2

/obj/item/clothing/ears/earmuffs/debug
	name = "debug earmuffs"
	desc = "Wearing these sends a chat message for every sound played. Walking to ignore footsteps is highly recommended."
	resistance_flags = FIRE_PROOF | ACID_PROOF
	clothing_traits = list(TRAIT_SOUND_DEBUGGED)
