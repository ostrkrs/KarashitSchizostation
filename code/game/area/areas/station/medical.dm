/area/station/medical
	ambience_index = AMBIENCE_MEDICAL
	airlock_wires = /datum/wires/airlock/medbay
	sound_environment = SOUND_AREA_STANDARD_STATION

//medbay
/area/station/medical/medbay
	name = "Medbay"
	icon_state = "medbay"

/area/station/medical/medbay/central
	name = "Medbay Central"
	icon_state = "med_central"

/area/station/medical/medbay/lobby
	name = "\improper Medbay Lobby"
	icon_state = "med_lobby"

/area/station/medical/medbay/lower
	name = "\improper Lower Medbay"
	icon_state = "lower_med"

/area/station/medical/medbay/abandoned
	name = "\improper Abandoned Medbay"
	icon_state = "abandoned_medbay"
	ambientsounds = list(
		'sound/ambience/misc/signal.ogg',
		)
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

//hospital
/area/station/medical/hospital
	name = "\improper Hospital"
	icon_state = "patients"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/medical/hospital/room_1
	name = "Patient Room 1"

/area/station/medical/hospital/room_2
	name = "Patient Room 2"

/area/station/medical/hospital/restrooms
	name = "\improper Hospital Restrooms"

//virology
/area/station/medical/virology
	name = "Virology"
	icon_state = "virology"
	ambience_index = AMBIENCE_VIROLOGY

/area/station/medical/virology/isolation
	name = "Virology Isolation"
	icon_state = "virology_isolation"

//chemistry
/area/station/medical/chemistry
	name = "Chemistry"
	icon_state = "chem"

/area/station/medical/chemistry/pharmacy
	name = "\improper Pharmacy"
	icon_state = "pharmacy"

/area/station/medical/chemistry/storage
	name = "\improper Chemical Storage"
	icon_state = "chem_storage"

//surgery
/area/station/medical/surgery
	name = "\improper Operating Room"
	icon_state = "surgery"

/area/station/medical/surgery/theatre
	name = "\improper Surgery Theatre"
	icon_state = "surgery_theatre"

//misc
/area/station/medical/storage
	name = "Medical Storage"
	icon_state = "med_storage"

/area/station/medical/paramedic
	name = "Paramedic Dispatch"
	icon_state = "paramedic"

/area/station/medical/office
	name = "\improper Medical Office"
	icon_state = "med_office"

/area/station/medical/break_room
	name = "\improper Medical Break Room"
	icon_state = "med_break"

/area/station/medical/coldroom
	name = "\improper Medical Cold Room"
	icon_state = "med_coldroom"

/area/station/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience_index = AMBIENCE_SPOOKY
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/medical/cryo
	name = "Cryogenics"
	icon_state = "cryo"

/area/station/medical/treatment_center
	name = "\improper Medbay Treatment Center"
	icon_state = "treatment"

/area/station/medical/psychology
	name = "\improper Psychology Office"
	icon_state = "psychology"
	mood_bonus = 3
	mood_message = "I feel at ease here."
	ambientsounds = list(
		'sound/ambience/aurora_caelus/aurora_caelus_short.ogg',
		)
