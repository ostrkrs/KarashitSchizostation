/datum/species/human/vatborn
	name = "\improper Vatborn Human"
	id = SPECIES_HUMAN_VATBORN
	examine_color = COLOR_BEIGE
	inherent_traits = list(
		TRAIT_USES_SKINTONES,
		TRAIT_CHIP_CONNECTOR,
	)

	species_culture = /datum/culture/vatborn

	mutanttongue = /obj/item/organ/tongue/vatborn
	mutantstomach = /obj/item/organ/stomach/vatborn

	thirstmod = 1.25

	body_markings = list(
		/datum/bodypart_overlay/simple/body_marking/vatborn_body = "Spine",
		/datum/bodypart_overlay/simple/body_marking/vatborn_head = "Round",
	)

	var/obj/item/organ/cyberimp/brain/connector/chip_connector

/datum/species/human/vatborn/on_species_gain(mob/living/carbon/human/human, datum/species/old_species, pref_load, regenerate_icons)
	. = ..()
	if(!chip_connector)
		chip_connector = new()
		chip_connector.Insert(human, special = TRUE)

/datum/species/human/vatborn/on_species_loss(mob/living/carbon/human/human)
	. = ..()
	if(chip_connector)
		QDEL_NULL(chip_connector)

/datum/species/human/vatborn/get_features()
	var/list/features = ..()

	features += "feature_vatborn_body_markings"
	features += "feature_vatborn_head_markings"

	return features

/datum/species/human/vatborn/randomize_features()
	var/list/features = ..()
	features[FEATURE_VATBORN_BODY_MARKINGS] = pick(SSaccessories.vatborn_body_markings_list)
	features[FEATURE_VATBORN_HEAD_MARKINGS] = pick(SSaccessories.vatborn_head_markings_list)
	return features

/datum/species/human/vatborn/get_species_description()
	return "Искуственно-выращенные люди — это результат долгих исследований в области репликации человека. \
		По сути, они являются теми же Первозданными людьми, пусть и \"из пробирки\", хоть и нередко дополняются \
		генетическими и кибернетическими улучшениями ещё до своего рождения."

/datum/species/human/vatborn/get_species_lore()
	return list(
		"Концепция искуственного зачатия и рождения людей существовала ещё задолго до выхода человека в космос, но остро данная потребность \
		встала лишь в эпоху его освоения, когда понадобилось восполнять пробелы в популяциях далёких колоний. Спустя десятилетия исследований, \
		первые искуственно-выращенные дети покинули свои чаны. На данный момент являются одним из самых распространённых видов людей, уступая лишь \
		Первозданным и Космо-адаптам.",

		"Генетически они являются наиболее близкими к Первозданным людям, отличаясь от них лишь более быстрым метаболизмом, из-за чего им чаще \
		требуется принимать пищу, а также они раньше встречают свою старость. Нередко их могут дополнять генетическими и кибернетическими улучшениями, \
		такими как разъём для чипов с навыками, что уже давно является негласным стандартом среди корпораций, занимающихся репликацией людей.",

		"После рождения, искуственно-выращенный человек почти гарантированно проведёт детство в окружении таких же репликантов на территории их \
		корпорации-производителя или её партнёра, получая от них опеку. По достижению совершеннолетия, им назначается место работы и проживания в \
		одной из колоний согласно контракту.",

		"Не склонны вступать в романтические отношения и создавать собственные семьи. Редко выражают привередливость в пище, одежде или жилье.",
	)

/datum/species/human/vatborn/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_MICROCHIP,
			SPECIES_PERK_NAME = "Chip Connector",
			SPECIES_PERK_DESC = "Vatborn humans come with preinstalled skill chip connectors.",
		),

		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_UTENSILS,
			SPECIES_PERK_NAME = "Accelerated Metabolism",
			SPECIES_PERK_DESC = "Vatborn humans spend nutrients faster, so they want to eat more often.",
		),
	)
	return to_add
