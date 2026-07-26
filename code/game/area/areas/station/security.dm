// When adding a new area to the security areas, make sure to add it to /datum/bounty/item/security/paperwork as well!

/area/station/security
	airlock_wires = /datum/wires/airlock/security
	ambience_index = AMBIENCE_DANGER
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/security/office
	name = "\improper Security Office"
	icon_state = "security"

/area/station/security/breakroom
	name = "\improper Security Break Room"
	icon_state = "brig"

/area/station/security/lockers
	name = "\improper Security Locker Room"
	icon_state = "securitylockerroom"

/area/station/security/brig
	name = "\improper Brig"
	icon_state = "brig"

/area/station/security/holding_cell
	name = "\improper Holding Cell"
	icon_state = "holding_cell"

/area/station/security/medical
	name = "\improper Security Medical"
	icon_state = "security_medical"

/area/station/security/brig/upper
	name = "\improper Brig Overlook"
	icon_state = "upperbrig"

/area/station/security/brig/lower
	name = "\improper Lower Brig"
	icon_state = "lower_brig"

/area/station/security/brig/entrance
	name = "\improper Brig Entrance"
	icon_state = "brigentry"

/area/station/security/interrogation
	name = "\improper Interrogation Room"
	icon_state = "interrogation"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/security/warden
	name = "Brig Control"
	icon_state = "warden"
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/area/station/security/evidence
	name = "Evidence Storage"
	icon_state = "evidence"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/security/criminalist_office
	name = "\improper Criminalist's Office"
	icon_state = "criminalist"
	ambientsounds = list(
		'sound/ambience/security/ambidet1.ogg',
		'sound/ambience/security/ambidet2.ogg',
		)

/area/station/security/range
	name = "\improper Firing Range"
	icon_state = "firingrange"

/area/station/security/eva
	name = "\improper Security EVA"
	icon_state = "sec_eva"

/area/station/security/execution
	name = "\improper Prisoner Education Chamber"
	icon_state = "execution_room"

/area/station/security/mechbay
	name = "Security Mechbay"
	icon_state = "sec_mechbay"

/*
* Security Checkpoints
*/

/area/station/security/checkpoint
	name = "\improper Security Checkpoint"
	icon_state = "checkpoint"

/area/station/security/checkpoint/escape
	name = "\improper Departures Security Checkpoint"
	icon_state = "checkpoint_esc"

/area/station/security/checkpoint/arrivals
	name = "\improper Arrivals Security Checkpoint"
	icon_state = "checkpoint_arr"

/area/station/security/checkpoint/supply
	name = "Security Post - Cargo Bay"
	icon_state = "checkpoint_supp"

/area/station/security/checkpoint/engineering
	name = "Security Post - Engineering"
	icon_state = "checkpoint_engi"

/area/station/security/checkpoint/medical
	name = "Security Post - Medbay"
	icon_state = "checkpoint_med"

/area/station/security/checkpoint/science
	name = "Security Post - Science"
	icon_state = "checkpoint_sci"

/area/station/security/checkpoint/customs
	name = "Customs"
	icon_state = "customs_point"

/area/station/security/checkpoint/customs/auxiliary
	name = "Auxiliary Customs"
	icon_state = "customs_point_aux"

/area/station/security/checkpoint/customs/fore
	name = "Fore Customs"
	icon_state = "customs_point_fore"

/area/station/security/checkpoint/customs/aft
	name = "Aft Customs"
	icon_state = "customs_point_aft"

/*
* Prison
*/

/area/station/security/prison
	name = "\improper Prison Wing"
	icon_state = "sec_prison"
	area_flags = VALID_TERRITORY | BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED | PERSISTENT_ENGRAVINGS

/area/station/security/prison/toilet
	name = "\improper Prison Toilet"
	icon_state = "sec_prison_safe"

/area/station/security/prison/cells
	name = "\improper Prison Wing Cells"
	icon_state = "sec_prison_safe"

/area/station/security/prison/visit
	name = "\improper Prison Visitation Area"
	icon_state = "prison_visit"

/area/station/security/prison/dining
	name = "\improper Prison Diner"
	icon_state = "prison_mess"

/area/station/security/prison/work
	name = "\improper Prison Work Room"
	icon_state = "prison_work"

/area/station/security/prison/shower
	name = "\improper Prison Shower"
	icon_state = "prison_shower"

/area/station/security/prison/garden
	name = "\improper Prison Garden"
	icon_state = "prison_garden"

/area/station/security/prison/transfer
	name = "\improper Prison Transfer Centre"
	icon_state = "sec_processing"
