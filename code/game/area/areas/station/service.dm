/area/station/service
	airlock_wires = /datum/wires/airlock/service

/*
* Bar/Kitchen Areas
*/

/area/station/service/cafeteria
	name = "\improper Cafeteria"
	icon_state = "cafeteria"

/area/station/service/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/station/service/kitchen/coldroom
	name = "\improper Kitchen Cold Room"
	icon_state = "kitchen_cold"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/service/kitchen/kitchen_backroom
	name = "\improper Kitchen Backroom"
	icon_state = "kitchen_backroom"

/area/station/service/bar
	name = "\improper Bar"
	icon_state = "bar"
	mood_bonus = 5
	mood_message = "I love being in the bar!"
	mood_trait = TRAIT_EXTROVERT
	sound_environment = SOUND_AREA_WOODFLOOR

/area/station/service/bar/Initialize(mapload)
	. = ..()
	GLOB.bar_areas += src

/area/station/service/bar/backroom
	name = "\improper Bar Backroom"
	icon_state = "bar_backroom"

/*
* Entertainment/Library Areas
*/

/area/station/service/theater
	name = "\improper Theater"
	icon_state = "theatre"
	sound_environment = SOUND_AREA_WOODFLOOR

/area/station/service/theater/dressing
	name = "\improper Theater Dressing Room"
	icon_state = "theatre_dressing"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/service/greenroom
	name = "\improper Greenroom"
	icon_state = "theatre_green"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/service/library
	name = "\improper Library"
	icon_state = "library"
	mood_bonus = 5
	mood_message = "I love being in the library!"
	mood_trait = TRAIT_INTROVERT
	area_flags = CULT_PERMITTED | BLOBS_ALLOWED | UNIQUE_AREA
	sound_environment = SOUND_AREA_LARGE_SOFTFLOOR

/area/station/service/library/garden
	name = "\improper Library Garden"
	icon_state = "library_garden"

/area/station/service/library/lounge
	name = "\improper Library Lounge"
	icon_state = "library_lounge"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/service/library/artgallery
	name = "\improper  Art Gallery"
	icon_state = "library_gallery"

/area/station/service/library/private
	name = "\improper Library Private Study"
	icon_state = "library_gallery_private"

/area/station/service/library/printer
	name = "\improper Library Printer Room"
	icon_state = "library"

/*
* Chapel Areas
*/

/area/station/service/chapel
	name = "\improper Chapel"
	icon_state = "chapel"
	mood_bonus = 4
	mood_message = "Being in the chapel brings me peace."
	mood_trait = TRAIT_SPIRITUAL
	ambience_index = AMBIENCE_HOLY
	flags_1 = NONE
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/service/chapel/office
	name = "\improper Chapel Office"
	icon_state = "chapeloffice"

/area/station/service/chapel/dock
	name = "\improper Chapel Dock"
	icon_state = "construction"

/area/station/service/chapel/storage
	name = "\improper Chapel Storage"
	icon_state = "chapelstorage"

/area/station/service/chapel/funeral
	name = "\improper Chapel Funeral Room"
	icon_state = "chapelfuneral"

/*
* Hydroponics/Garden Areas
*/

/area/station/service/hydroponics
	name = "Hydroponics"
	icon_state = "hydro"
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/service/hydroponics/garden
	name = "Garden"
	icon_state = "garden"

/*
* Misc/Unsorted Rooms
*/

/area/station/service/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	area_flags = CULT_PERMITTED | BLOBS_ALLOWED | UNIQUE_AREA
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/service/barber
	name = "\improper Barber"
	icon_state = "barber"

/*
* Abandoned Rooms
*/

/area/station/service/hydroponics/garden/abandoned
	name = "\improper Abandoned Garden"
	icon_state = "abandoned_garden"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED
