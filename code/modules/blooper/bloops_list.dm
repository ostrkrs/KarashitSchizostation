/// MARK: HUMANS
/datum/blooper/human
	category = BLOOPER_CATEGORY_HUMAN

// Guitar
/datum/blooper/human/mutedc2
	id = BLOOPER_ID_MUTEDC2
	soundpath = 'sound/runtime/instruments/synthesis_samples/guitar/crisis_muted/C2.ogg'

/datum/blooper/human/mutedc3
	id = BLOOPER_ID_MUTEDC3
	soundpath = 'sound/runtime/instruments/synthesis_samples/guitar/crisis_muted/C3.ogg'

/datum/blooper/human/mutedc4
	id = BLOOPER_ID_MUTEDC4
	soundpath = 'sound/runtime/instruments/synthesis_samples/guitar/crisis_muted/C4.ogg'

// Speak
/datum/blooper/human/speak1
	id = BLOOPER_ID_SPEAK1
	soundpath = 'sound/voice/humans/speak_1.ogg'

/datum/blooper/human/speak2
	id = BLOOPER_ID_SPEAK2
	soundpath = 'sound/voice/humans/speak_2.ogg'

/datum/blooper/human/speak3
	id = BLOOPER_ID_SPEAK3
	soundpath = 'sound/voice/humans/speak_3.ogg'

/datum/blooper/human/speak4
	id = BLOOPER_ID_SPEAK4
	soundpath = 'sound/voice/humans/speak_4.ogg'


/// MARK: SILICON
/datum/blooper/silicon
	category = BLOOPER_CATEGORY_SILICON

/datum/blooper/silicon/bottalk
	id = BLOOPER_ID_BOTTALK1
	soundpath = 'sound/voice/silicons/bottalk_1.ogg'
	minspeed = 3
	maxspeed = 9

/datum/blooper/silicon/bottalk/alt1
	id = BLOOPER_ID_BOTTALK2
	soundpath = 'sound/voice/silicons/bottalk_2.ogg'

/datum/blooper/silicon/bottalk/alt2
	id = BLOOPER_ID_BOTTALK3
	soundpath = 'sound/voice/silicons/bottalk_3.ogg'

/datum/blooper/silicon/bottalk/alt3
	id = BLOOPER_ID_BOTTALK4
	soundpath = 'sound/voice/silicons/bottalk_4.ogg'

/datum/blooper/silicon/radio
	id = BLOOPER_ID_RADIO1
	soundpath = 'sound/voice/silicons/radio.ogg'

/datum/blooper/silicon/radio/short
	id = BLOOPER_ID_RADIO2
	soundpath = 'sound/voice/silicons/radio2.ogg'


/// MARK: AI
// Because we don't wanna cyborgs having the same blooper as AIs
/datum/blooper/ai
	id = BLOOPER_ID_RADIO_AI
	soundpath = 'sound/voice/silicons/radio_ai.ogg'


/// MARK: INSECTS
/datum/blooper/insect
	category = BLOOPER_CATEGORY_INSECT

/datum/blooper/insect/chitter
	id = BLOOPER_ID_CHITTERY1
	minspeed = 4
	soundpath = 'sound/mobs/non-humanoids/insect/chitter_1.ogg'

/datum/blooper/insect/chitter/alt
	id = BLOOPER_ID_CHITTERY2
	minspeed = 4
	soundpath = 'sound/mobs/non-humanoids/insect/chitter_2.ogg'

/datum/blooper/roach
	id = BLOOPER_ID_ROACH
	soundpath = 'sound/voice/insects/roach.ogg'


/// MARK: ANIMALS
/datum/blooper/animal
	category = BLOOPER_CATEGORY_ANIMAL

/datum/blooper/animal/cow
	id = BLOOPER_ID_COW
	soundpath = 'sound/voice/animals/cow.ogg'

/datum/blooper/animal/lizard
	id = BLOOPER_ID_LIZARD
	soundpath = 'sound/voice/animals/lizard.ogg'

/datum/blooper/animal/pug
	id = BLOOPER_ID_PUG
	soundpath = 'sound/voice/animals/pug.ogg'

/datum/blooper/animal/pugg
	id = BLOOPER_ID_PUGG
	soundpath = 'sound/voice/animals/pugg.ogg'


/// MARK: SKELETONS
/datum/blooper/skeleton
	category = BLOOPER_CATEGORY_SKELETON

/datum/blooper/skeleton/skelly
	id =  BLOOPER_ID_SKELLY
	soundpath = 'sound/voice/skeleton/skelly.ogg'
