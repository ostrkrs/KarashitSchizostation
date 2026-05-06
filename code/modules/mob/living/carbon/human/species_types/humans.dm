/datum/species/human
	name = "\improper Baseline Human"
	id = SPECIES_HUMAN
	inherent_traits = list(
		TRAIT_USES_SKINTONES,
	)
	skinned_type = /obj/item/stack/sheet/animalhide/human
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	payday_modifier = 1.1

/datum/species/human/prepare_human_for_preview(mob/living/carbon/human/human)
	human.set_haircolor("#bb9966", update = FALSE) // brown
	human.set_hairstyle("Business Hair", update = TRUE)

/datum/species/human/get_scream_sound(mob/living/carbon/human/human)
	if(human.physique == MALE)
		if(prob(1))
			return 'sound/mobs/humanoids/human/scream/wilhelm_scream.ogg'
		return pick(
			'sound/mobs/humanoids/human/scream/malescream_1.ogg',
			'sound/mobs/humanoids/human/scream/malescream_2.ogg',
			'sound/mobs/humanoids/human/scream/malescream_3.ogg',
			'sound/mobs/humanoids/human/scream/malescream_4.ogg',
			'sound/mobs/humanoids/human/scream/malescream_5.ogg',
			'sound/mobs/humanoids/human/scream/malescream_6.ogg',
		)

	return pick(
		'sound/mobs/humanoids/human/scream/femalescream_1.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_2.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_3.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_4.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_5.ogg',
	)

/datum/species/human/get_cough_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)

/datum/species/human/get_cry_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/human/get_sneeze_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/human/get_laugh_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/laugh/womanlaugh.ogg'
	return pick(
		'sound/mobs/humanoids/human/laugh/manlaugh1.ogg',
		'sound/mobs/humanoids/human/laugh/manlaugh2.ogg',
	)

/datum/species/human/get_sigh_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/human/get_sniff_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/human/get_snore_sound(mob/living/carbon/human/human)
	if(human.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/human/get_hiss_sound(mob/living/carbon/human/human)
	return 'sound/mobs/humanoids/human/hiss/human_hiss.ogg'

/datum/species/human/get_species_description()
	return "Самый обычный, не затронутый или практически не затронутый генными модификациями Homo-Sapiens."

/datum/species/human/get_species_lore()
	return list(
		"Люди, произошедшие от древних приматов на, по большей части, благоприятной для жизни Земле, \
		стремительными темпами развились в научно-техническом плане, покорив собственную планету и \
		превзойдя первоночальные, диктуемые инстиктами, цели своего существования.",

		"В течение нескольких последних столетий, человечество колонизировало ближайшие звездные системы \
		заселяя их генетически-модифицированными земными организмами, включая их самих, при необходимости. \
		Однако, как бы долго и тщательно люди не прочёсывали просторы обитаемой ими галактики, хоть какой-либо \
		инопланетной, по крайней мере существующей в настоящей момент, жизни им найти не удалось. \
		И пока наука до сих пор, даже в своем пике, не способна дать чёткий ответ на вопрос одинокости человека \
		во Вселенной, религия все ещё имеет место быть в жизни многих людей конца 23-го века.",

		"Вместе с тем, человечество всё ещё поделено на фракции, будь то государства или корпорации. Преследовавшие \
		личные интересы в пространстве космоса, особенно в эпоху активной его колонизации, они нередко сталкивались в \
		конфликтах, часто — в вооруженных, прямых или закулисных, что способствовало отстранению их друг от друга. \
		Долгое время обособленные внутри них, в световых годах между собой и без общедоступных средств связи, люди и их \
		подвиды на далёких планетах сформировали свои собственные идентичности, отличные от Земной, хоть они и в \
		большинстве случаев являются колониями одной из сверхдержав или мегакорпораций с этой же Земли.",
	)

/datum/species/human/create_pref_unique_perks()
	var/list/to_add = list()
	var/human_authority_setting = CONFIG_GET(string/human_authority)

	if(human_authority_setting == HUMAN_AUTHORITY_NON_HUMAN_WHITELIST || human_authority_setting == HUMAN_AUTHORITY_ENFORCED)
		to_add += list(list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_STAR,
			SPECIES_PERK_NAME = "Chain of Command",
			SPECIES_PERK_DESC = "Nanotrasen only recognizes baseline humans for command roles, such as Captain.",
		))

	return to_add
