
//legion bodies are here, and other mining related bodies

//Tendril-spawned Legion remains, the charred skeletons of those whose bodies sank into laval or fell into chasms.
/obj/effect/mob_spawn/corpse/human/charredskeleton
	name = "charred skeletal remains"
	mob_name = "ashen skeleton"
	burn_damage = 1000
	mob_species = /datum/species/skeleton

/obj/effect/mob_spawn/corpse/human/charredskeleton/special(mob/living/carbon/human/spawned_human)
	. = ..()
	spawned_human.color = "#454545"
	spawned_human.gender = NEUTER
	//don't need to set the human's body type (neuter)

//Legion infested mobs

/// Mob spawner used by Legion to spawn costumed bodies
/obj/effect/mob_spawn/corpse/human/legioninfested
	brute_damage = 1000

/obj/effect/mob_spawn/corpse/human/legioninfested/Initialize(mapload)
	outfit = select_outfit()
	return ..()

/obj/effect/mob_spawn/corpse/human/legioninfested/special(mob/living/carbon/human/spawned_human)
	. = ..()
	var/obj/item/organ/legion_tumour/cancer = new()
	cancer.Insert(spawned_human, special = TRUE, movement_flags = DELETE_IF_REPLACED)

/// Returns the outfit worn by our corpse
/obj/effect/mob_spawn/corpse/human/legioninfested/proc/select_outfit()
	var/corpse_theme = pick_weight(list(
		"Miner" = 64,
		"Operative" = 4,
	))

	switch(corpse_theme)
		if("Miner")
			return /datum/outfit/consumed_miner
		if("Operative")
			return /datum/outfit/syndicatecommandocorpse/lessenedgear

/// Corpse spawner used by dwarf legions to make small corpses
/obj/effect/mob_spawn/corpse/human/legioninfested/dwarf

/obj/effect/mob_spawn/corpse/human/legioninfested/dwarf/special(mob/living/carbon/human/spawned_human)
	. = ..()
	spawned_human.dna.add_mutation(/datum/mutation/dwarfism, MUTATION_SOURCE_MUTATOR)

/// Corpse spawner used by snow legions with alternate costumes
/obj/effect/mob_spawn/corpse/human/legioninfested/snow

/obj/effect/mob_spawn/corpse/human/legioninfested/snow/select_outfit()
	var/corpse_theme = pick_weight(list(
		"Miner" = 64,
		"Settler" = 10,
		"Operative" = 4,
	))

	switch(corpse_theme)
		if("Miner")
			return /datum/outfit/consumed_miner
		if("Settler")
			return /datum/outfit/consumed_ice_settler
		if("Operative")
			return /datum/outfit/syndicatecommandocorpse/lessenedgear

/// Creates a dead legion-infested skeleton
/obj/effect/mob_spawn/corpse/human/legioninfested/skeleton
	name = "legion-infested skeleton"
	mob_name = "skeleton"
	mob_species = /datum/species/skeleton

/obj/effect/mob_spawn/corpse/human/legioninfested/skeleton/select_outfit()
	return null

/obj/effect/mob_spawn/corpse/human/legioninfested/skeleton/special(mob/living/carbon/human/spawned_human)
	. = ..()
	spawned_human.gender = NEUTER

/// Creates a dead and burned legion-infested skeleton
/obj/effect/mob_spawn/corpse/human/legioninfested/skeleton/charred
	name = "charred legion-infested skeleton"
	mob_name = "charred skeleton"
	brute_damage = 0
	burn_damage = 1000

/obj/effect/mob_spawn/corpse/human/legioninfested/skeleton/charred/special(mob/living/carbon/human/spawned_human)
	. = ..()
	spawned_human.color = "#454545"


/datum/outfit/consumed_miner
	name = "Legion-Consumed Miner"
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/gas/explorer
	shoes = /obj/item/clothing/shoes/workboots/mining

/datum/outfit/consumed_miner/pre_equip(mob/living/carbon/human/miner, visuals_only = FALSE)
	var/new_species_type = pick_weight(list(
		/datum/species/human = 70,
		/datum/species/lizard = 26,
		/datum/species/fly = 2,
	))
	miner.set_species(new_species_type)
	if(new_species_type == /datum/species/lizard)
		shoes = null //digitigrade says no
	uniform = /obj/item/clothing/under/rank/cargo/miner/lavaland
	if(prob(4))
		belt = pick_weight(list(
			/obj/item/storage/belt/mining = 2,
			/obj/item/storage/belt/mining/alt = 2,
		))
	else if(prob(10))
		belt = pick_weight(list(
			/obj/item/pickaxe = 8,
			/obj/item/pickaxe/mini = 4,
			/obj/item/pickaxe/silver = 2,
			/obj/item/pickaxe/diamond = 1,
		))
	else
		belt = /obj/item/tank/internals/emergency_oxygen/engi

	if(prob(20))
		suit = pick_weight(list(
			/obj/item/clothing/suit/hooded/explorer = 18,
			/obj/item/clothing/suit/hooded/cloak/goliath = 2,
		))
	if(prob(30))
		r_pocket = pick_weight(list(
			/obj/item/stack/marker_beacon = 20,
			/obj/item/stack/spacecash/c1000 = 7,
			/obj/item/reagent_containers/hypospray/medipen/survival = 2,
			/obj/item/borg/upgrade/modkit/damage = 1,
		))
	if(prob(10))
		l_pocket = pick_weight(list(
			/obj/item/stack/spacecash/c1000 = 7,
			/obj/item/reagent_containers/hypospray/medipen/survival = 2,
			/obj/item/borg/upgrade/modkit/cooldown = 1,
		))

/datum/outfit/consumed_ice_settler
	name = "Legion-Consumed Settler"
	uniform = /obj/item/clothing/under/costume/traditional
	suit = /obj/item/clothing/suit/hooded/wintercoat
	shoes = /obj/item/clothing/shoes/winterboots
	mask = /obj/item/clothing/mask/breath

/datum/outfit/consumed_ice_settler/pre_equip(mob/living/carbon/human/ice_settler, visuals_only = FALSE)
	if(prob(40))
		r_pocket = pick_weight(list(
			/obj/item/coin/silver = 5,
			/obj/item/fishing_hook = 2,
			/obj/item/coin/gold = 2,
			/obj/item/fishing_hook/shiny = 1,
		))
	if(prob(30))
		back = pick_weight(list(
			/obj/item/pickaxe = 4,
			/obj/item/tank/internals/oxygen = 6,
		))
	else
		back = /obj/item/storage/backpack/satchel/explorer
		backpack_contents = list()
		var/backpack_loot = pick(list(
			/obj/item/food/fishmeat = 89,
			/obj/item/food/fishmeat/carp = 10,
			/obj/item/skeleton_key = 1,
		))
		backpack_contents += backpack_loot
