#define SERPENTID_DAMAGE_ONBURNING 5

/datum/species/serpentid
	name = "\improper Serpentid"
	id = SPECIES_SERPENTID
	examine_color = "#01C07A"
	inherent_traits = list(
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CHUNKYFINGERS,
		TRAIT_PUSHIMMUNE,
		TRAIT_HARD_SOLES,
		TRAIT_SILENT_FOOTSTEPS,
		TRAIT_MUTANT_COLORS,
		TRAIT_FIXED_MUTANT_COLORS,
		TRAIT_NO_UNDERWEAR,
		TRAIT_NO_BLOOD_OVERLAY,
		TRAIT_NO_SLIP_WATER,
		TRAIT_BRAWLING_KNOCKDOWN_BLOCKED,
		TRAIT_NO_AUGMENTS,
		TRAIT_DESENSITIZED,
		TRAIT_WATER_HATER,
		TRAIT_AGENDER,
		TRAIT_QUICKER_CARRY,
		TRAIT_STRONG_STOMACH,
		TRAIT_CANT_RIDE,
	)
	banned_traits = list(
		// Negative
		TRAIT_JUNKIE,
		TRAIT_SMOKER,
		TRAIT_HEAVY_DRINKER,
		TRAIT_BADBACK,
		TRAIT_BLINDNESS,
		TRAIT_BODY_PURIST,
		TRAIT_BRAINPROBLEMS,
		TRAIT_CHRONIC_ILLNESS,
		TRAIT_CLAUSTROPHOBIA,
		TRAIT_DEAF,
		TRAIT_FAMILY_HEIRLOOM,
		TRAIT_FOOD_ALLERGIC,
		TRAIT_EASILY_WOUNDED,
		TRAIT_GLASS_JAW,
		TRAIT_HEMIPLEGIC,
		TRAIT_INDEBTED,
		TRAIT_INSANITY,
		TRAIT_LIGHT_DRINKER,
		TRAIT_MUTE,
		TRAIT_NEARSIGHTED,
		TRAIT_NYCTOPHOBIA,
		TRAIT_PARAPLEGIC,
		TRAIT_PHOTOPHOBIA,
		TRAIT_GRABWEAKNESS,
		TRAIT_ANXIOUS,
		TRAIT_SOFTSPOKEN,
		TRAIT_NARCOLEPSY,
		TRAIT_IMMUNODEFICIENCY,
		TRAIT_FLUORIDE_STARE,
		// Neutral
		TRAIT_BALD,
		TRAIT_FOREIGNER,
		TRAIT_GAMER,
		TRAIT_PINEAPPLE_HATER,
		TRAIT_PINEAPPLE_LIKER,
		TRAIT_VEGETARIAN,
		TRAIT_HETEROCROMATIC,
		// Positive
		TRAIT_ALCOHOL_TOLERANCE,
		TRAIT_BILINGUAL,
		TRAIT_DRUNKHEALING,
		TRAIT_MUSICIAN,
		TRAIT_SETTLER,
		TRAIT_SIGNER,
		TRAIT_SPACER_BORN,
	)
	allow_numbers_in_names = TRUE
	sexes = FALSE // these goobers don't know what sex is
	mob_size = MOB_SIZE_LARGE
	meat = /obj/item/food/meat/slab/bugmeat
	exotic_bloodtype = BLOOD_TYPE_SERPENTID
	no_equip_flags = ITEM_SLOT_FEET | ITEM_SLOT_ICLOTHING | ITEM_SLOT_OCLOTHING | ITEM_SLOT_SUITSTORE | ITEM_SLOT_HEAD
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_SERPENTID
	hair_color_mode = USE_FIXED_MUTANT_COLOR
	hair_alpha = 0
	facial_hair_alpha = 0
	payday_modifier = 0 // why do we pay salary to a literal biorobot
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	species_cookie = /obj/item/food/grown/cabbage
	species_language_holder = /datum/language_holder/serpentid
	pressuremod = 0.5
	bodytemp_normal = (BODYTEMP_NORMAL - 5)
	bodytemp_heat_damage_limit = (BODYTEMP_HEAT_DAMAGE_LIMIT - 10)
	mutantbrain = /obj/item/organ/brain/serpentid
	mutanteyes = /obj/item/organ/eyes/serpentid
	mutanttongue = /obj/item/organ/tongue/serpentid
	mutantlungs = /obj/item/organ/lungs/serpentid
	smoker_lungs = /obj/item/organ/lungs/serpentid/smoker
	mutantheart = /obj/item/organ/heart/serpentid
	mutantliver = /obj/item/organ/liver/serpentid
	mutantstomach = /obj/item/organ/stomach/serpentid
	mutantears = /obj/item/organ/ears/serpentid
	mutantappendix = null
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/serpentid,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/serpentid,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/serpentid,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/serpentid,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/serpentid,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/serpentid,
	)

	var/datum/action/cooldown/toggle_arms/arms
	var/datum/action/cooldown/optical_camouflage/camouflage

/datum/species/serpentid/on_species_gain(mob/living/carbon/human/C, datum/species/old_species, pref_load, regenerate_icons)
	. = ..()
	arms = new(C)
	arms.Grant(C)
	camouflage = new(C)
	camouflage.Grant(C)
	C.dna.features["mcolor"] = C.dna.features[FEATURE_SERPENTID_COLOR]

	var/is_dummy = istype(C, /mob/living/carbon/human/dummy)

	if(!is_dummy)
		var/obj/item/implant/serp_sol_speaker/imp_in = new()
		imp_in.implant(C)

/datum/species/serpentid/on_species_loss(mob/living/carbon/human/C, datum/species/new_species, pref_load)
	. = ..()
	arms.Destroy()
	camouflage.Destroy()

/datum/species/serpentid/spec_life(mob/living/carbon/human/H, seconds_per_tick, times_fired)
	. = ..()
	if(isdead(H))
		return

	if(H.on_fire)
		H.apply_damage(SERPENTID_DAMAGE_ONBURNING, OXY)

/datum/species/serpentid/randomize_features(mob/living/carbon/human/human_mob)
	var/list/features = ..()
	features[FEATURE_SERPENTID_COLOR] = GLOB.color_list_serpentid[pick(GLOB.color_list_serpentid)]
	return features

/datum/species/serpentid/get_features()
	var/list/features = ..()

	features += "feature_serpcolor"
	features -= "socks"

	return features

/datum/species/serpentid/prepare_human_for_preview(mob/living/carbon/human/serpentid)
	var/serpentid_color = "#00AF3F"
	serpentid.dna.features["mcolor"] = serpentid_color
	regenerate_organs(serpentid, src, visual_only = TRUE)
	serpentid.update_body(TRUE)

/datum/species/serpentid/create_pref_unique_perks()
	var/list/perk_descriptions = list()

	perk_descriptions += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_SHIRT,
			SPECIES_PERK_NAME = "Inhuman Bodytype",
			SPECIES_PERK_DESC = "Because of their shape and size, serpentids cannot wear most human clothes and will not fit into mechs or body bags.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_MITTEN,
			SPECIES_PERK_NAME = "Chunky Fingers",
			SPECIES_PERK_DESC = "Serpentids have chunky fingers on their hands, which means they cannot handle weapons or other devices that have a trigger guard.",
		),

		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = FA_ICON_SHOWER,
			SPECIES_PERK_NAME = "Hydrophobia",
			SPECIES_PERK_DESC = "Serpentids don't like getting soaked with water.",
		),

		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_GAUGE_HIGH,
			SPECIES_PERK_NAME = "Pressure Resistance",
			SPECIES_PERK_DESC = "Serpentids are less affected by pressure changes.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_HAND_SCISSORS,
			SPECIES_PERK_NAME = "Mantis Arms",
			SPECIES_PERK_DESC = "Serpentids possesses a second pair of arms with massive sharp mantis blades. They can have only one pair active at a time and need to pump blood between them.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_EYE,
			SPECIES_PERK_NAME = "Welder Eyelids",
			SPECIES_PERK_DESC = "Serpentids can close their second pair of eyelids to protect their eyes from welder flash.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_EYE_LOW_VISION,
			SPECIES_PERK_NAME = "Camouflage",
			SPECIES_PERK_DESC = "Serpentids can blend in with their surroundings and become transparent to hide from danger.",
		),
	)

	return perk_descriptions

/datum/species/serpentid/create_pref_liver_perks()
	var/list/perk_descriptions = list()

	perk_descriptions += list(
	list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "martini-glass-citrus",
			SPECIES_PERK_NAME = "Chemical Sensitivity",
			SPECIES_PERK_DESC = "Serpentids have a heightened sensitivity to certain chemicals, such as nicotine, alcohol and pesticides, which can be harmful if exposed to them.",
		),
	)

	return perk_descriptions

/datum/species/serpentid/create_pref_language_perk()
	var/datum/language/common_language = /datum/language/common
	var/list/perk_descriptions = list()

	perk_descriptions += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "comment-dots",
			SPECIES_PERK_NAME = "Imperfect Vocal Cords",
			SPECIES_PERK_DESC = "Serpentids may understand [initial(common_language.name)], but can't speak it without special speech synthesizer implant.",
		),
	)

	return perk_descriptions

/datum/species/serpentid/get_species_description()
	return "Серпентиды представляют собой массивных хищных существ, воспитанных и обученных корпорацией для жизни и работы рядом с людьми. Пусть они и выглядят угрожающе, Серпентиды достаточно пугливы и не склонны причинять людям вред, если, конечно, не загнать их в угол."

/datum/species/serpentid/get_species_lore()
	return list(
		"Серпентиды — вид существ, похожих одновременно на змей и членистоногих, что были спроектированы и выращены генетическими мегакорпорациями, главным образом Interdyne VatWorks, для выполнения различных задач, требующих нечеловеческой физической силы либо представляющих для человека значительную опасность.",
	)

/mob/living/carbon/human/add_movespeed_modifier(datum/movespeed_modifier/type_or_datum, update = TRUE)
	if(isserpentid(src) && type_or_datum == /datum/movespeed_modifier/grab_slowdown/aggressive)
		var/datum/species/serpentid/our_serpentid = src.dna.species
		var/datum/action/cooldown/toggle_arms/arms = our_serpentid.arms
		if(arms.button_icon_state == "serpentid_hand_on")
			return FALSE
	return ..()

/datum/species/serpentid/get_scream_sound(mob/living/carbon/human/serpentid)
	return 'sound/mobs/humanoids/serpentids/serpentidscream.ogg'

/datum/species/serpentid/get_cough_sound(mob/living/carbon/human/serpentid)
	return 'sound/mobs/humanoids/serpentids/serpentidcough.ogg'

/datum/species/serpentid/get_sneeze_sound(mob/living/carbon/human/serpentid)
	return pick(
		'sound/mobs/non-humanoids/insect/chitter_1.ogg',
		'sound/mobs/humanoids/serpentids/serpentidsneeze.ogg',
	)

/datum/species/serpentid/get_laugh_sound(mob/living/carbon/human/serpentid)
	return pick(
		'sound/mobs/humanoids/serpentids/serpentidlaugh.ogg',
		'sound/mobs/humanoids/serpentids/serpentid_tendrils.ogg',
	)
