/*
	Defines for use in saycode and text formatting.
	Currently contains speech spans and message modes
*/
#define RADIO_EXTENSION "department specific"
#define RADIO_KEY "department specific key"
#define LANGUAGE_EXTENSION "language specific"
///This is a mob that is forcing us to say something, so we can use the mob typing the text for bans rather than the one speaking.
#define MANNEQUIN_CONTROLLED "mannequin controlled"
/// Message mod which contains a list of bonus "mutual understanding" to allow arbitrary understanding of any speech
#define LANGUAGE_MUTUAL_BONUS "language mutual bonus"
#define SAY_MOD_VERB "say_mod_verb"

//Message modes. Each one defines a radio channel, more or less.
//if you use ! as a mode key for some ungodly reason, change the first character for ion_num() so get_message_mode() doesn't freak out with state law prompts - shiz.
#define MODE_HEADSET "headset"
#define MODE_ROBOT "robot"

#define MODE_R_HAND "right hand"
#define MODE_KEY_R_HAND "r"

#define MODE_L_HAND "left hand"
#define MODE_KEY_L_HAND "l"

#define MODE_INTERCOM "intercom"
#define MODE_KEY_INTERCOM "i"
#define MODE_TOKEN_INTERCOM ":i"

#define MODE_BINARY "binary"
#define MODE_KEY_BINARY "b"
#define MODE_TOKEN_BINARY ":b"

#define WHISPER_MODE "the type of whisper"
#define MODE_WHISPER "whisper"
#define MODE_WHISPER_CRIT "whispercrit"

#define MODE_DEPARTMENT "department"
#define MODE_KEY_DEPARTMENT "h"
#define MODE_TOKEN_DEPARTMENT ":h"

#define MODE_ADMIN "admin"
#define MODE_KEY_ADMIN "p"

#define MODE_DEADMIN "deadmin"
#define MODE_KEY_DEADMIN "d"

#define MODE_PUPPET "puppet"
#define MODE_KEY_PUPPET "j"

#define MODE_ALIEN "alientalk"
#define MODE_KEY_ALIEN "a"

#define MODE_HOLOPAD "holopad"
#define MODE_KEY_HOLOPAD "h"

#define MODE_CHANGELING "changeling"
#define MODE_KEY_CHANGELING "g"
#define MODE_TOKEN_CHANGELING ":g"

#define MODE_VOCALCORDS "cords"
#define MODE_KEY_VOCALCORDS "x"

/// Automatically playing a set of lines
#define MODE_SEQUENTIAL "sequential"

#define MODE_MAFIA "mafia"

/// Applies singing characters to the message
#define MODE_SING "sing"
/// A custom say emote is being supplied [value = the emote]
#define MODE_CUSTOM_SAY_EMOTE "custom_say"
/// No message is following, just emote
#define MODE_CUSTOM_SAY_ERASE_INPUT "erase_input"
/// Message is being relayed through another object
#define MODE_RELAY "relayed"

//Spans. Robot speech, italics, etc. Applied in compose_message().
#define SPAN_ROBOT "robot"
#define SPAN_YELL "yell"
#define SPAN_ITALICS "italics"
#define SPAN_SANS "sans"
#define SPAN_PAPYRUS "papyrus"
#define SPAN_REALLYBIG "reallybig"
#define SPAN_COMMAND "command_headset"
#define SPAN_CLOWN "clown"
#define SPAN_SINGING "singing"
#define SPAN_TAPE_RECORDER "tape_recorder"
#define SPAN_SMALL_VOICE "small"
#define SPAN_SOAPBOX "soapbox"
//bitflag #defines for return value of the radio() proc.
/// Makes the message use italics
#define ITALICS (1<<0)
/// Reduces the range of the message to 1
#define REDUCE_RANGE (1<<1)
/// Stops any actual message from being sent
#define NOPASS (1<<2)

/// Range to hear normal messages
#define MESSAGE_RANGE 7
/// Range to hear whispers normally
#define WHISPER_RANGE 1
/// Additional range to partially hear whispers
#define EAVESDROP_EXTRA_RANGE 1 //how much past the specified message_range does the message get starred, whispering only

/// How close intercoms can be for radio code use
#define MODE_RANGE_INTERCOM 1

// A link given to ghost alice to follow bob
#define FOLLOW_LINK(alice, bob) "<a href=byond://?src=[REF(alice)];follow=[REF(bob)]>(F)</a>"
#define TURF_LINK(alice, turfy) "<a href=byond://?src=[REF(alice)];x=[turfy.x];y=[turfy.y];z=[turfy.z]>(T)</a>"
#define FOLLOW_OR_TURF_LINK(alice, bob, turfy) "<a href=byond://?src=[REF(alice)];follow=[REF(bob)];x=[turfy.x];y=[turfy.y];z=[turfy.z]>(F)</a>"

//Don't set this very much higher then 1024 unless you like inviting people in to dos your server with message spam
#define MAX_MESSAGE_LEN 1024
#define MAX_NAME_LEN 42
#define MAX_BROADCAST_LEN 512
#define MAX_CHARTER_LEN 80
#define MAX_PLAQUE_LEN 144
#define MAX_LABEL_LEN 64
#define MAX_DESC_LEN 280

// Audio/Visual Flags. Used to determine what sense are required to notice a message.
#define MSG_VISUAL (1<<0)
#define MSG_AUDIBLE (1<<1)


// Say mode message handling return flags, exist for readability.
/// Say mode has handled the message.
#define SAYMODE_MESSAGE_HANDLED (1<<0)

// Used in visible_message_flags, audible_message_flags and runechat_flags
/// Automatically applies emote related spans/fonts/formatting to the message
#define EMOTE_MESSAGE (1<<0)
/// By default, self_message will respect the visual / audible component of the message.
/// Meaning that if the message is visual, and sourced from a blind mob, they will not see it.
/// This flag skips that behavior, and will always show the self message to the mob.
#define ALWAYS_SHOW_SELF_MESSAGE (1<<1)
/// Applies emphasis formatting to the message.
#define WITH_EMPHASIS_MESSAGE (1<<2)
/// Blocks chat highlighting from being applied to the message sent to the self.
#define BLOCK_SELF_HIGHLIGHT_MESSAGE (1<<3)

///Defines for priorities for the bubble_icon_override comp
#define BUBBLE_ICON_PRIORITY_ACCESSORY 2
#define BUBBLE_ICON_PRIORITY_ORGAN 1

/// BLOOPER defines
#define BLOOPER_DEFAULT_MINPITCH 0.4
#define BLOOPER_DEFAULT_MAXPITCH 2
#define BLOOPER_DEFAULT_MINVARY 0.1
#define BLOOPER_DEFAULT_MAXVARY 0.8
#define BLOOPER_DEFAULT_MINSPEED 2
#define BLOOPER_DEFAULT_MAXSPEED 16

#define BLOOPER_SPEED_BASELINE 4 //Used to calculate delay between BLOOPERs, any BLOOPER speeds below this feature higher BLOOPER density, any speeds above feature lower BLOOPER density. Keeps BLOOPERing length consistent

#define BLOOPER_MAX_BLOOPERS 24
#define BLOOPER_MAX_TIME (1.5 SECONDS) // More or less the amount of time the above takes to process through with a BLOOPER speed of 2.

#define BLOOPER_PITCH_RAND(gend) ((gend == MALE ? rand(60, 120) : (gend == FEMALE ? rand(80, 140) : rand(60,140))) / 100) //Macro for determining random pitch based off gender
#define BLOOPER_VARIANCE_RAND (rand(BLOOPER_DEFAULT_MINVARY * 100, BLOOPER_DEFAULT_MAXVARY * 100) / 100) //Macro for randomizing BLOOPER variance to reduce the amount of copy-pasta necessary for that

#define BLOOPER_DO_VARY(pitch, variance) (rand(((pitch * 100) - (variance*50)), ((pitch*100) + (variance*50))) / 100)

#define BLOOPER_SOUND_FALLOFF_EXPONENT 0.5 //At lower ranges, we want the exponent to be below 1 so that whispers don't sound too awkward. At higher ranges, we want the exponent fairly high to make yelling less obnoxious

/// BLOOPER categories
#define BLOOPER_CATEGORY_HUMAN "blooper_category_human"
#define BLOOPER_CATEGORY_SILICON "blooper_category_silicon"
#define BLOOPER_CATEGORY_INSECT "blooper_category_insect"
#define BLOOPER_CATEGORY_ANIMAL "blooper_category_animal"
#define BLOOPER_CATEGORY_SKELETON "blooper_category_skeleton"

/// BLOOPER IDs
#define BLOOPER_ID_NONE "None"
/// Guitar
#define BLOOPER_ID_MUTEDC2 "Muted String (Low)"
#define BLOOPER_ID_MUTEDC3 "Muted String (Medium)"
#define BLOOPER_ID_MUTEDC4 "Muted String (High)"
/// Speak
#define BLOOPER_ID_SPEAK1 "Speak 1"
#define BLOOPER_ID_SPEAK2 "Speak 2"
#define BLOOPER_ID_SPEAK3 "Speak 3"
#define BLOOPER_ID_SPEAK4 "Speak 4"
/// Bottalk
#define BLOOPER_ID_BOTTALK1 "Bottalk 1"
#define BLOOPER_ID_BOTTALK2 "Bottalk 2"
#define BLOOPER_ID_BOTTALK3 "Bottalk 3"
#define BLOOPER_ID_BOTTALK4 "Bottalk 4"
/// Radio
#define BLOOPER_ID_RADIO1 "Radio 1"
#define BLOOPER_ID_RADIO2 "Radio 2"
#define BLOOPER_ID_RADIO_AI "Radio (AI)"
/// Insect
#define BLOOPER_ID_CHITTERY1 "Chittery 1"
#define BLOOPER_ID_CHITTERY2 "Chittery 2"
#define BLOOPER_ID_ROACH "Roach"
/// Animal
#define BLOOPER_ID_COW "Cow"
#define BLOOPER_ID_LIZARD "Lizard"
#define BLOOPER_ID_PUG "Pug"
#define BLOOPER_ID_PUGG "Pugg"
/// Skeleton
#define BLOOPER_ID_SKELLY "Skelly"
