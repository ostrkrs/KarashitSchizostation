//Fish sources that're usually associated with structures or machinery.

/datum/fish_source/holographic
	catalog_description = "Holographic water"
	fish_table = list(
		/obj/item/fish/holo = 10,
		/obj/item/fish/holo/crab = 10,
		/obj/item/fish/holo/puffer = 10,
		/obj/item/fish/holo/angel = 10,
		/obj/item/fish/holo/clown = 10,
		/obj/item/fish/holo/checkered = 5,
		/obj/item/fish/holo/halffish = 5,
	)
	fishing_difficulty = FISHING_EASY_DIFFICULTY + 10
	fish_source_flags = FISH_SOURCE_FLAG_NO_BLUESPACE_ROD
	associated_safe_turfs = list(/turf/open/floor/holofloor/beach/water)

/datum/fish_source/holographic/on_fishing_spot_init(datum/component/fishing_spot/spot)
	ADD_TRAIT(spot.parent, TRAIT_UNLINKABLE_FISHING_SPOT, REF(src)) //You would have to be inside the holodeck anyway...

/datum/fish_source/holographic/on_fishing_spot_del(datum/component/fishing_spot/spot)
	REMOVE_TRAIT(spot.parent, TRAIT_UNLINKABLE_FISHING_SPOT, REF(src))

/datum/fish_source/holographic/generate_wiki_contents(datum/autowiki/fish_sources/wiki)
	var/obj/item/fish/prototype = /obj/item/fish/holo/checkered
	return LIST_VALUE_WRAP_LISTS(list(
		FISH_SOURCE_AUTOWIKI_NAME = "Holographic Fish",
		FISH_SOURCE_AUTOWIKI_ICON = FISH_AUTOWIKI_FILENAME(prototype),
		FISH_SOURCE_AUTOWIKI_WEIGHT = 100,
		FISH_SOURCE_AUTOWIKI_NOTES = "Holographic fish disappears outside the Holodeck",
	))

/datum/fish_source/holographic/reason_we_cant_fish(obj/item/fishing_rod/rod, mob/fisherman, atom/parent)
	. = ..()
	if(!istype(get_area(fisherman), /area/station/holodeck))
		return "You need to be inside the Holodeck to catch holographic fish."

/datum/fish_source/holographic/pre_challenge_started(obj/item/fishing_rod/rod, mob/user, datum/fishing_challenge/challenge)
	RegisterSignal(user, COMSIG_MOVABLE_MOVED, PROC_REF(check_area))

/datum/fish_source/holographic/proc/check_area(mob/user)
	SIGNAL_HANDLER
	if(!istype(get_area(user), /area/station/holodeck))
		interrupt_challenge("exited holodeck")

/datum/fish_source/holographic/on_challenge_completed(datum/fishing_challenge/source, mob/user, success)
	. = ..()
	UnregisterSignal(user, COMSIG_MOVABLE_MOVED)

#define RANDOM_AQUARIUM_FISH "random_aquarium_fish"

/datum/fish_source/aquarium
	catalog_description = "Aquariums"
	radial_state = "fish_tank"
	fish_table = list(
		FISHING_DUD = 10,
	)
	fish_source_flags = FISH_SOURCE_FLAG_NO_BLUESPACE_ROD|FISH_SOURCE_FLAG_IGNORE_HIDDEN_ON_CATALOG|FISH_SOURCE_FLAG_EXPLOSIVE_NONE
	fishing_difficulty = FISHING_EASY_DIFFICULTY + 5

#undef RANDOM_AQUARIUM_FISH

/datum/fish_source/aquarium/get_fish_table(atom/location, from_explosion = FALSE)
	if(istype(location, /obj/machinery/fishing_portal_generator))
		var/obj/machinery/fishing_portal_generator/portal = location
		location = portal.current_linked_atom
	var/list/table = list()
	for(var/obj/item/fish/fish in location)
		if(fish.status == FISH_DEAD) //dead fish cannot be caught
			continue
		table[fish] = 10
	if(!length(table))
		return fish_table.Copy()
	return table

/datum/fish_source/aquarium/generate_wiki_contents(datum/autowiki/fish_sources/wiki)
	var/list/data = list()

	data += LIST_VALUE_WRAP_LISTS(list(
		FISH_SOURCE_AUTOWIKI_NAME = "Fish",
		FISH_SOURCE_AUTOWIKI_DUD = "",
		FISH_SOURCE_AUTOWIKI_WEIGHT = 100,
		FISH_SOURCE_AUTOWIKI_NOTES = "Any fish currently inside the aquarium, be they alive or dead.",
	))

	return data
