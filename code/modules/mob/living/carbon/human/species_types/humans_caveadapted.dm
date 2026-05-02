/datum/species/human/cave_adapted
	name = "\improper Cave-Adapted Human"
	id = SPECIES_HUMAN_CAVER
	examine_color = COLOR_PURPLE_GRAY
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_FIXED_MUTANT_COLORS,
		TRAIT_NOFAT,
	)

	payday_modifier = 0.8
	mutantears = /obj/item/organ/ears/caver
	mutanteyes = /obj/item/organ/eyes/caver
	mutanttongue = /obj/item/organ/tongue/caver
	mutantlungs = /obj/item/organ/lungs/oxy_efficient

	mutant_organs = list(
		/obj/item/organ/horns/caver = "Default",
		/obj/item/organ/tail/caver = "Caver Tail",
	)

	digitigrade_customization = DIGITIGRADE_FORCED
	bodypart_overrides = list(
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/caver,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/caver,
		BODY_ZONE_HEAD = /obj/item/bodypart/head/caver,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/caver,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/caver,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/caver,
	)

/datum/species/human/cave_adapted/on_species_gain(mob/living/carbon/human/C, datum/species/old_species, pref_load, regenerate_icons)
	. = ..()
	C.dna.features["mcolor"] = C.dna.features[FEATURE_CAVER_COLOR]

/datum/species/human/cave_adapted/randomize_features(mob/living/carbon/human/human_mob)
	var/list/features = ..()
	features[FEATURE_CAVER_COLOR] = GLOB.color_list_caver[pick(GLOB.color_list_caver)]
	return features

/datum/species/human/cave_adapted/get_features()
	var/list/features = ..()

	features += "feature_caver_skincolor"

	return features

/datum/species/human/cave_adapted/prepare_human_for_preview(mob/living/carbon/human/human)
	human.set_haircolor("#180d08", update = FALSE)
	human.dna.features[FEATURE_MUTANT_COLOR] = "#80929D"
	human.update_body(is_creating = TRUE)

/datum/species/human/cave_adapted/get_physical_attributes()
	return "Пещеро-адапты несколько меньше обычных людей, имеют блеклые серые, фиолетовые или синие тона кожи и пальцеходящие конечности. \
		Их расширенные легкие позволяют им получать больше кислорода с каждым вздохом, а костяные пластины на голове и конечностях обеспечивают \
		некоторую защиту от ушибов."

/datum/species/human/cave_adapted/get_species_description()
	return "Пещерно-адаптированные люди — это искуственно спроектированный подтип человека для расселения в коре \
		планет и спутников, чьи условия на поверхности малопригодны для обитания. Реже, их можно найти и на астероидах."

/datum/species/human/cave_adapted/get_species_lore()
	return list(
		"В эпоху колонизации космоса, когда человечество начало осваивать планеты и спутники с суровыми условиями, \
		возникла необходимость в создании специализированного подвида человека, способного в них выживать. \
		Пещерно-адаптированные люди были разработаны с помощью генной инженерии для обитания в подземных пространствах планет, \
		а также на астероидах и других небесных телах с непригодной для жизни поверхностью.",

		"Геном пещерно-адаптированных людей получен в результате скрещивания человека с частями ДНК летучих мышей, броненосцев и крыс. \
		Из адаптаций они получили более острые зрение и слух, меньший размер тела, пальцеходящие ступни, а также \
		костяные наросты на суставах для их защиты от ударов об пещерные стены. В сумме, они позволяют им комфортно \
		существовать в тесных пространствах и темноте, а также обеспечивают лучшую устойчивость и ловкость на неровных поверхностях.",

		"Привыкшие жить под землёй, пещерно-адаптированные люди выработали свою собственную культуру и образ жизни. \
		Их сообществам присуща тесная связь, взаимопомощь и коллективизм. Они ценят тишину, несколько безразлично относятся к \
		личному пространству и предпочитают аскетичность. Многие их занятия связаны непосредственно с работой в шахтах и подземных \
		комплексах. Их кухня часто включает в себя грибы, насекомых и другие ингредиенты, доступные в их среде обитания.",

		"В сообществах первозданных и иных подтипов людей они могут выглядеть маргинально из-за своих склонностей к замкнутости, \
		агорафобии, гелиофобии, из-за разговоров шёпотом даже наедине с собеседником, странного распорядка дня, и так далее. \
		Часто они занимают роли дешёвых рабочих, таких как шахтёры, грузчики, уборщики, гидропонисты и так далее. Хотя некоторые из них \
		могут найти применение своим навыкам в других областях, например, в инженерии или даже в исследовании. Несмотря на это, они часто \
		сталкиваются с дискриминацией и предубеждениями со стороны других подтипов людей, которые могут не понимать их образ жизни и адаптации.",
	)

/datum/species/human/cave_adapted/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_WEIGHT_SCALE,
			SPECIES_PERK_NAME = "No Fat",
			SPECIES_PERK_DESC = "Cave-adapted humans can't get obese from overeating.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_LUNGS,
			SPECIES_PERK_NAME = "Deep Breathing",
			SPECIES_PERK_DESC = "Cave-adapted humans can breathe more efficiently in low-oxygen environments.",
		),

		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = FA_ICON_EYE,
			SPECIES_PERK_NAME = "Sensitive Eyes",
			SPECIES_PERK_DESC = "Cave-adapted humans have heightened sensitivity to light \
				and can see better in low-light conditions. When exposed to bright light, \
				however, they may suffer from pain.",
		),

		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_EAR_LISTEN,
			SPECIES_PERK_NAME = "Sensitive Hearing",
			SPECIES_PERK_DESC = "Cave-adapted humans are more sensitive to loud sounds, such as flashbangs.",
		),
	)
	return to_add
