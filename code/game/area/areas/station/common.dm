/area/station/commons
	name = "\improper Crew Facilities"
	icon_state = "commons"
	sound_environment = SOUND_AREA_STANDARD_STATION
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/*
* Dorm Areas
*/

/area/station/commons/dorms
	name = "\improper Dormitories"
	icon_state = "dorms"

/area/station/commons/dorms/medbay
	name = "\improper Medbay Dorms Room"

/area/station/commons/dorms/research
	name = "\improper Research Dorms Room"

/area/station/commons/dorms/supply
	name = "\improper Supply Dorms Room"

/area/station/commons/dorms/security
	name = "\improper Security Dorms Room"

/area/station/commons/dorms/engineering
	name = "\improper Engineering Dorms Room"

/area/station/commons/dorms/service
	name = "\improper Service Dorms Room"

/*
* Toilet Areas
*/

/area/station/commons/hygiene
	icon_state = "toilet"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/commons/hygiene/restrooms
	name = "\improper Unisex Restrooms"
	icon_state = "toilet"

/area/station/commons/hygiene/auxiliary_restrooms
	name = "\improper Auxiliary Unisex Restrooms"
	icon_state = "toilet"

/area/station/commons/hygiene/shower
	name = "\improper Shower Room"
	icon_state = "shower"

/area/station/commons/hygiene/sauna
	name = "\improper Sauna"
	icon_state = "sauna"

/*
* Rec and Locker Rooms
*/

/area/station/commons/locker
	name = "\improper Locker Room"
	icon_state = "locker"

/area/station/commons/lounge
	name = "\improper Bar Lounge"
	icon_state = "lounge"
	mood_bonus = 5
	mood_message = "I love being in the bar!"
	mood_trait = TRAIT_EXTROVERT
	sound_environment = SOUND_AREA_SMALL_SOFTFLOOR

/*
* Fitness and Recreacion Rooms
*/

/area/station/commons/fitness
	name = "\improper Fitness Room"
	icon_state = "fitness"

/area/station/commons/fitness/locker_room
	name = "\improper Unisex Locker Room"
	icon_state = "locker"

/area/station/commons/fitness/locker_room/male
	name = "\improper Male Locker Room"
	icon_state = "locker_male"

/area/station/commons/fitness/locker_room/female
	name = "\improper Female Locker Room"
	icon_state = "locker_female"

/area/station/commons/fitness/recreation
	name = "\improper Recreation Area"
	icon_state = "rec"

/area/station/commons/fitness/recreation/entertainment
	name = "\improper Entertainment Center"
	icon_state = "entertainment"

/area/station/commons/fitness/recreation/pool
	name = "\improper Swimming Pool"
	icon_state = "pool"

/area/station/commons/fitness/recreation/lasertag
	name = "\improper Laser Tag Arena"
	icon_state = "lasertag"

/*
* Vacant Rooms
*/

/area/station/commons/vacant_room
	name = "\improper Vacant Room"
	icon_state = "vacant_room"
	ambience_index = AMBIENCE_MAINT

/area/station/commons/vacant_room/office
	name = "\improper Vacant Office"
	icon_state = "vacant_office"

/area/station/commons/vacant_room/commissary
	name = "\improper Vacant Commissary"
	icon_state = "vacant_commissary"

/*
* Storage Rooms
*/

/area/station/commons/storage
	name = "\improper Commons Storage"

/area/station/commons/storage/tools
	name = "\improper Auxiliary Tool Storage"
	icon_state = "tool_storage"

/area/station/commons/storage/primary
	name = "\improper Primary Tool Storage"
	icon_state = "primary_storage"

/area/station/commons/storage/art
	name = "\improper Art Supply Storage"
	icon_state = "art_storage"

/area/station/commons/storage/emergency/starboard
	name = "\improper Starboard Emergency Storage"
	icon_state = "emergency_storage"

/area/station/commons/storage/emergency/port
	name = "\improper Port Emergency Storage"
	icon_state = "emergency_storage"

/area/station/commons/storage/mining
	name = "\improper Public Mining Storage"
	icon_state = "mining_storage"

/*
* Cryptosleep Areas
*/

/area/station/commons/cryptosleep
	name = "\improper Cryptosleep Chambers"
	icon_state = "cryptosleep"

/area/station/commons/cryptosleep/primary
	name = "\improper Primary Cryptosleep Chambers"

/area/station/commons/cryptosleep/secondary
	name = "\improper Secondary Cryptosleep Chambers"
