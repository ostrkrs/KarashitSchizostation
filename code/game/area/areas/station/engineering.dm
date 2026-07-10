/area/station/engineering
	airlock_wires = /datum/wires/airlock/engineering
	ambience_index = AMBIENCE_ENGI
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/engineering/main
	name = "Engineering"
	icon_state = "engine"

/area/station/engineering/lobby
	name = "\improper Engineering Lobby"
	icon_state = "engi_lobby"

/area/station/engineering/smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"

/area/station/engineering/break_room
	name = "\improper Engineering Foyer"
	icon_state = "engine_break"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/engineering/gravity_generator
	name = "\improper Gravity Generator Room"
	icon_state = "grav_gen"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/engineering/transit_tube
	name = "\improper AI Transit Tube"
	icon_state = "transit_tube"

/area/station/engineering/construction
	name = "\improper Construction Area"
	icon_state = "construction"
	ambience_index = AMBIENCE_ENGI
	sound_environment = SOUND_AREA_STANDARD_STATION

//atmospherics
/area/station/engineering/atmos
	name = "Atmospherics"
	icon_state = "atmos"

/area/station/engineering/atmos/pumproom
	name = "\improper Atmospherics Pumping Room"
	icon_state = "atmos_pump_room"

/area/station/engineering/atmos/storage
	name = "\improper Atmospherics Storage Room"
	icon_state = "atmos_storage"

/area/station/engineering/atmos/storage/gas
	name = "\improper Atmospherics Gas Storage"
	icon_state = "atmos_storage_gas"

/area/station/engineering/atmos/hfr_room
	name = "\improper Atmospherics HFR Room"
	icon_state = "atmos_HFR"

/area/station/engineering/atmospherics_engine
	name = "\improper Atmospherics Engine"
	icon_state = "atmos_engine"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

//supermatter
/area/station/engineering/supermatter
	name = "\improper Supermatter Engine"
	icon_state = "engine_sm"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/engineering/supermatter/waste
	name = "\improper Supermatter Waste Chamber"
	icon_state = "engine_sm_waste"

/area/station/engineering/supermatter/room
	name = "\improper Supermatter Engine Room"
	icon_state = "engine_sm_room"
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

//storage
/area/station/engineering/storage
	name = "Engineering Storage"
	icon_state = "engine_storage"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/engineering/storage/tech
	name = "Technical Storage"
	icon_state = "tech_storage"

/area/station/engineering/storage/tcomms
	name = "Telecomms Storage"
	icon_state = "tcom_storage"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
