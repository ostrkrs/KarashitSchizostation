/area/station/research
	airlock_wires = /datum/wires/airlock/science
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/research/division
	name = "\improper Research Division"
	icon_state = "research"

/area/station/research/division/lobby
	name = "\improper Research Lobby"
	icon_state = "science_lobby"

/area/station/research/division/breakroom
	name = "\improper Research Break Room"
	icon_state = "science_breakroom"

/area/station/research/division/lab
	name = "\improper Research Lab"
	icon_state = "res_lab"

/area/station/research/division/explab
	name = "\improper Experimentation Lab"
	icon_state = "exp_lab"

/area/station/research/division/circuits
	name = "\improper Circuit Lab"
	icon_state = "cir_lab"

/area/station/research/division/abandoned
	name = "\improper Abandoned Research Lab"
	icon_state = "abandoned_sci"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

//xenobiology
/area/station/research/xenobiology
	name = "\improper Xenobiology Lab"
	icon_state = "xenobio"

/area/station/research/xenobiology/hallway
	name = "\improper Xenobiology Hallway"
	icon_state = "xenobio_hall"

/area/station/research/xenobiology/cytology
	name = "\improper Cytology Lab"
	icon_state = "cytology"

//robotics
/area/station/research/robotics
	name = "Robotics"
	icon_state = "robotics"

/area/station/research/robotics/mechbay
	name = "\improper Mech Bay"
	icon_state = "mechbay"

/area/station/research/robotics/lab
	name = "\improper Robotics Lab"
	icon_state = "robo_lab"

/area/station/research/robotics/augments
	name = "\improper Augmentation Theater"
	icon_state = "augment_theare"
	sound_environment = SOUND_AREA_TUNNEL_ENCLOSED

//misc
/area/station/research/genetics
	name = "\improper Genetics Lab"
	icon_state = "genetics"

/area/station/research/server
	name = "\improper Research Division Server Room"
	icon_state = "server"

//ordnance
/area/station/research/ordnance
	name = "\improper Ordnance Lab"
	icon_state = "ord_main"

/area/station/research/ordnance/office
	name = "\improper Ordnance Office"
	icon_state = "ord_office"

/area/station/research/ordnance/storage
	name = "\improper Ordnance Storage"
	icon_state = "ord_storage"

/area/station/research/ordnance/burnchamber
	name = "\improper Ordnance Burn Chamber"
	icon_state = "ord_burn"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/area/station/research/ordnance/freezerchamber
	name = "\improper Ordnance Freezer Chamber"
	icon_state = "ord_freeze"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/area/station/research/ordnance/testlab
	name = "\improper Ordnance Testing Lab"
	icon_state = "ord_test"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/area/station/research/ordnance/bomb
	name = "\improper Ordnance Bomb Site"
	icon_state = "ord_boom"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED | NO_GRAVITY
