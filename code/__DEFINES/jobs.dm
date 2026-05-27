#define JOB_AVAILABLE 0
#define JOB_UNAVAILABLE_GENERIC 1
#define JOB_UNAVAILABLE_BANNED 2
#define JOB_UNAVAILABLE_PLAYTIME 3
#define JOB_UNAVAILABLE_ACCOUNTAGE 4
#define JOB_UNAVAILABLE_SLOTFULL 5
/// Job unavailable due to incompatibility with an antag role.
#define JOB_UNAVAILABLE_ANTAG_INCOMPAT 6
/// Checks for character age.
#define JOB_UNAVAILABLE_AGE 7

/// Used when the `get_job_unavailable_error_message` proc can't make sense of a given code.
#define GENERIC_JOB_UNAVAILABLE_ERROR "Error: Unknown job availability."

// Human authority settings
// If you want to add another setting, make sure to also add it to the if chain in /datum/job_config_type/human_authority/validate_value()
#define JOB_AUTHORITY_HUMANS_ONLY "HUMANS_ONLY"
#define JOB_AUTHORITY_NON_HUMANS_ALLOWED "NON_HUMANS_ALLOWED"

#define DEFAULT_RELIGION "Christianity"
#define DEFAULT_DEITY "Space Jesus"
#define DEFAULT_BIBLE "Default Bible Name"
#define DEFAULT_BIBLE_REPLACE(religion) "The Holy Book of [religion]"

#define JOB_DISPLAY_ORDER_DEFAULT 0

// Keys for jobconfig.toml
#define JOB_CONFIG_PLAYTIME_REQUIREMENTS "Playtime Requirements"
#define JOB_CONFIG_REQUIRED_ACCOUNT_AGE "Required Account Age"
#define JOB_CONFIG_REQUIRED_CHARACTER_AGE "Required Character Age"
#define JOB_CONFIG_SPAWN_POSITIONS "Spawn Positions"
#define JOB_CONFIG_TOTAL_POSITIONS "Total Positions"
#define JOB_CONFIG_HUMAN_AUTHORITY "Human Authority Whitelist Setting"

/**
 * =======================
 * WARNING WARNING WARNING
 * WARNING WARNING WARNING
 * WARNING WARNING WARNING
 * =======================
 * These names are used as keys in many locations in the database
 * you cannot change them trivially without breaking job bans and
 * role time tracking, if you do this and get it wrong you will die
 * and it will hurt the entire time
 */

//No department
#define JOB_ASSISTANT "Assistant"
#define JOB_CIVILIAN "Civilian"
#define JOB_INTERN "Intern"
#define JOB_OFFDUTY "Off-Duty"
#define JOB_PASSENGER "Passenger"
#define JOB_RETIRED "Retired"
#define JOB_TOURIST "Tourist"
#define JOB_VISITOR "Visitor"

#define JOB_PRISONER "Prisoner"

//Heads
#define JOB_CAPTAIN "Captain"
#define JOB_HEAD_OF_SECURITY "Head of Security"
#define JOB_RESEARCH_DIRECTOR "Research Director"
#define JOB_CHIEF_ENGINEER "Chief Engineer"
#define JOB_CHIEF_MEDICAL_OFFICER "Chief Medical Officer"
#define JOB_QUARTERMASTER "Quartermaster"
#define JOB_STEWARD "Steward"
// #define JOB_EXPLORATION_LEADER "Exploration Leader" - TODO: exploration department and jobs

//Command
#define JOB_HEAD_OF_PERSONNEL "Head of Personnel"
#define JOB_CREW_SUPERVISOR "Crew Supervisor"
#define JOB_EMPLOYMENT_MANAGER "Employment Manager"

#define JOB_INTERNAL_AFFAIRS_AGENT "Internal Affairs Agent"
#define JOB_HUMAN_RESOURCES_AGENT "Human Resources Agent"

#define JOB_INTERNAL_SECURITY_OPERATIVE "Internal Security Operative"
#define JOB_COMPLIENCE_ENFORCER_AGENT "Compliance Enforcer Agent"

#define JOB_BRIDGE_ASSISTANT "Bridge Assistant"
#define JOB_VETERAN_ADVISOR "Veteran Security Advisor"

//Silicon
#define JOB_AI "AI"

#define JOB_CYBORG "Cyborg"
#define JOB_DROID "Droid"
#define JOB_ROBOT "Robot"

#define JOB_PERSONAL_AI "Personal AI"
#define JOB_HUMAN_AI "Big Brother"

//Security
#define JOB_WARDEN "Warden"
#define JOB_ARMORY_CUSTODIAN "Armory Custodian"
#define JOB_BRIG_OVERSEER "Brig Overseer"
#define JOB_CORRECTIONS_OFFICER "Corrections Officer"
#define JOB_PRISON_SUPERVISOR "Prison Supervisor"

#define JOB_CRIMINALIST "Criminalist"
#define JOB_CRIMINAL_INVESTIGATOR "Criminal Investigator"
#define JOB_FORENSIC_TECHNICIAN "Forensic Technician"

#define JOB_SECURITY_OFFICER "Security Officer"
#define JOB_SECURITY_GUARD "Security Guard"
#define JOB_SECURITY_OPERATIVE "Security Operative"

/* - TODO: security cadet job
#define JOB_SECURITY_CADET "Security Cadet"
#define JOB_SECURITY_ASSISTANT "Security Assistant"
#define JOB_SECURITY_RECRUIT "Security Recruit"
*/

//Engineering
#define JOB_DECK_ENGINEER "Deck Engineer"
#define JOB_ELECTRICIAN "Electrician"
#define JOB_ENGINE_TECHNICIAN "Engine Technician"
#define JOB_EVA_TECHNICIAN "EVA Technician"
#define JOB_REPAIR_TECHNICIAN "Repair Technician"
#define JOB_MAINTENANCE_TECHNICIAN "Maintenance Technician"
#define JOB_MECHANIC "Mechanic"

#define JOB_ATMOSPHERIC_TECHNICIAN "Atmospheric Technician"
#define JOB_EMERGENCY_FIRE_RESPONDER "Emergency Fire Responder"
#define JOB_LIFE_SUPPORT_TECHNICIAN "Life Support Technician"
#define JOB_ENVIRONMENTAL_CONTROL_SPECIALIST "Environmental Control Specialist"

//Medical
#define JOB_CORONER "Coroner"
#define JOB_DECEDENT_ANALYST "Decedent Analyst"
#define JOB_DIENER "Diener"
#define JOB_POSTMORTEM_SPECIALIST "Postmortem Specialist"
#define JOB_MORTUARY_AUDITOR "Mortuary Auditor"

#define JOB_MEDICAL_DOCTOR "Medical Doctor"
#define JOB_MEDICAL_PRACTITIONER "Medical Practitioner"
#define JOB_PHYSICIAN "Physician"
#define JOB_TREATMENT_SPECIALIST "Treatment Specialist"
#define JOB_NURSE "Nurse"
#define JOB_SURGEON "Surgeon"

#define JOB_PARAMEDIC "Paramedic"
#define JOB_CORPSMAN "Corpsman"
#define JOB_EMERGENCY_MEDICAL_RESPONDER "Emergency Medical Responder"
#define JOB_SEARCH_AND_RESCUE_TECHNICIAN "Search and Rescue Technician"

#define JOB_CHEMIST "Chemist"
#define JOB_PHARMACIST "Pharmacist"
#define JOB_PHARMACOLOGIST "Pharmacologist"

#define JOB_PSYCHOLOGIST "Psychologist"
#define JOB_PSYCHIATRIST "Psychiatrist"
#define JOB_THERAPIST "Therapist"
#define JOB_MENTALIST "Mentalist"

//Science
#define JOB_SCIENTIST "Scientist"
#define JOB_ANOMALIST "Anomalist"
#define JOB_CIRCUITRY_ENGINEER "Circuitry Engineer"
#define JOB_CYTOTOLOGIST "Cytologist"
#define JOB_LAB_TECHNICIAN "Lab Technician"
#define JOB_XENOARCHAEOLOGIST "Xenoarchaeologist"
#define JOB_XENOBIOTOLOGIST "Xenobiologist"
#define JOB_XENOBOTANIST "Xenobotanist"

#define JOB_ROBOTICIST "Roboticist"
#define JOB_BIOMECHANICAL_ENGINEER "Biomechanical Engineer"
#define JOB_CYBERNETICIST "Cyberneticist"
#define JOB_MECHATRONIC_ENGINEER "Mechatronic Engineer"

#define JOB_GENETICIST "Geneticist"
#define JOB_GENETIC_ENGINEER "Genetic Engineer"
#define JOB_GENOME_RESEARCHER "Genome Researcher"
#define JOB_MUTATION_RESEARCHER "Mutation Researcher"

//Supply
#define JOB_CARGO_TECHNICIAN "Cargo Technician"
#define JOB_DECK_LOADER "Deck Loader"
#define JOB_DELIVERER "Deliverer"
#define JOB_SUPPLY_TECHNICIAN "Supply Technician"
#define JOB_WAREHOUSE_TECHNICIAN "Warehouse Technician"

#define JOB_CARGO_GORILLA "Cargo Gorilla"

#define JOB_SHAFT_MINER "Shaft Miner"
#define JOB_SHAFT_EXCAVATION_TECHNICIAN "Excavation Technician"
#define JOB_SHAFT_SPELUNKER "Spelunker"

#define JOB_BITRUNNER "Bitrunner"

/* - TODO: exploration department and jobs
//Exploration
#define JOB_EXPLORATION_PILOT "Exploration Pilot"
#define JOB_EXPEDITIONARY_HELMSMAN "Expeditionary Helmsman"
#define JOB_EXPLORATION_NAVIGATOR "Exploration Navigator"

#define JOB_EXPLORER "Explorer"
#define JOB_FIELD_RESEARCHER "Field Researcher"
#define JOB_EXPEDITIONEER "Expeditioneer"
#define JOB_SALVAGE_TECHNICIAN "Salvage Technician"

#define JOB_EXPLORATION_MEDIC "Exploration Medic"
#define JOB_FIELD_MEDIC "Field Medic"
#define JOB_EXPEDITION_CORPSMAN "Expeditionary Corpsman"

#define JOB_EXPLORATION_ENGINEER "Exploration Engineer"
#define JOB_FIELD_ENGINEER "Field Engineer"
#define JOB_EXPEDITION_ENGINEER "Expeditionary Repairsman"
*/

//Service
#define JOB_BARTENDER "Bartender"
#define JOB_BARISTA "Barista"
#define JOB_BARKEEPER "Barkeeper"
#define JOB_BREWER "Brewer"
#define JOB_MIXOLOGIST "Mixologist"

#define JOB_BOTANIST "Botanist"
#define JOB_FLORIST "Florist"
#define JOB_GARDENER "Gardener"
#define JOB_HERBALIST "Herbalist"
#define JOB_HYDROPONICIST "Hydroponicist"
#define JOB_MYCOLOGIST "Mycologist"

#define JOB_COOK "Cook"
#define JOB_BAKER "Baker"
#define JOB_BUTCHER "Butcher"
#define JOB_CHEF "Chef"
#define JOB_CULINARY_ARTIST "Culinary Artist"
#define JOB_CONFECTIONER "Confectioner"
#define JOB_GASTRONOMIST "Gastronomist"

#define JOB_JANITOR "Janitor"
#define JOB_CLEANER "Cleaner"
#define JOB_CUSTODIAN "Custodian"
#define JOB_CUSTODIAL_TECHNICIAN "Custodial Technician"
#define JOB_SANITATION_TECHNICIAN "Sanitation Technician"

#define JOB_CLOWN "Clown"
#define JOB_JESTER "Jester"
#define JOB_JOKER "Joker"

#define JOB_MIME "Mime"
#define JOB_PANTOMIMIST "Pantomimist"

#define JOB_CURATOR "Curator"
#define JOB_JOURNALIST "Journalist"
#define JOB_LIBRARIAN "Librarian"
#define JOB_PUBLICIST "Publicist"
#define JOB_REPORTER "Reporter"

#define JOB_CHAPLAIN "Chaplain"
#define JOB_CLERIC "Cleric"
#define JOB_PRIEST "Priest"
#define JOB_SPIRITUAL_AGENT "Spiritual Agent"
#define JOB_RELIGIOUS_CONSULTANT "Religious Consultant"
#define JOB_RITUALIST "Ritualist"

#define JOB_PUN_PUN "Pun Pun"

//ERTs
#define JOB_ERT_DEATHSQUAD "Death Commando"
#define JOB_ERT_COMMANDER "Emergency Response Team Commander"
#define JOB_ERT_OFFICER "Security Response Officer"
#define JOB_ERT_ENGINEER "Engineering Response Officer"
#define JOB_ERT_MEDICAL_DOCTOR "Medical Response Officer"
#define JOB_ERT_CHAPLAIN "Religious Response Officer"
#define JOB_ERT_JANITOR "Janitorial Response Officer"
#define JOB_ERT_CLOWN "Entertainment Response Officer"

//CentCom
#define JOB_CENTCOM "Central Command"
#define JOB_CENTCOM_OFFICIAL "CentCom Official"
#define JOB_CENTCOM_ADMIRAL "Admiral"
#define JOB_CENTCOM_COMMANDER "CentCom Commander"
#define JOB_CENTCOM_VIP "VIP Guest"
#define JOB_CENTCOM_BARTENDER "CentCom Bartender"
#define JOB_CENTCOM_CUSTODIAN "Custodian"
#define JOB_CENTCOM_THUNDERDOME_OVERSEER "Thunderdome Overseer"
#define JOB_CENTCOM_MEDICAL_DOCTOR "Medical Officer"
#define JOB_CENTCOM_RESEARCH_OFFICER "Research Officer"
#define JOB_CENTCOM_SPECIAL_OFFICER "Special Ops Officer"
#define JOB_CENTCOM_PRIVATE_SECURITY "Private Security Force"

//Lost crew
#define JOB_LOSTCREW_ENGINEER "Visiting Engineer"
#define JOB_LOSTCREW_MEDICAL "Visiting Doctor"
#define JOB_LOSTCREW_SECURITY "Visiting Officer"
#define JOB_LOSTCREW_SCIENCE "Visiting Scientist"
#define JOB_LOSTCREW_CARGO "Visiting Technician"
#define JOB_LOSTCREW_CIVILLIAN "Visiting Civillian"

/**
 * Alt job titles, should not causing any issues if changed
 * Just make sure to include initial job title in the top of the list
 */
///No department
#define JOB_CIVILIAN_ALT_TITLES list( \
	JOB_ASSISTANT, \
	JOB_CIVILIAN, \
	JOB_INTERN, \
	JOB_OFFDUTY, \
	JOB_PASSENGER, \
	JOB_RETIRED, \
	JOB_TOURIST, \
	JOB_VISITOR, \
)
///Command
#define JOB_HEAD_OF_PERSONNEL_ALT_TITLES list( \
	JOB_HEAD_OF_PERSONNEL, \
	JOB_CREW_SUPERVISOR, \
	JOB_EMPLOYMENT_MANAGER, \
)
#define JOB_INTERNAL_AFFAIRS_AGENT_ALT_TITLES list( \
	JOB_INTERNAL_AFFAIRS_AGENT, \
	JOB_HUMAN_RESOURCES_AGENT, \
)
#define JOB_INTERNAL_SECURITY_OPERATIVE_ALT_TITLES list( \
	JOB_INTERNAL_SECURITY_OPERATIVE, \
	JOB_COMPLIENCE_ENFORCER_AGENT, \
)
///Silicon
#define JOB_CYBORG_ALT_TITLES list( \
	JOB_CYBORG, \
	JOB_DROID, \
	JOB_ROBOT, \
)
///Security
#define JOB_WARDEN_ALT_TITLES list( \
	JOB_WARDEN, \
	JOB_ARMORY_CUSTODIAN, \
	JOB_BRIG_OVERSEER, \
	JOB_CORRECTIONS_OFFICER, \
	JOB_PRISON_SUPERVISOR, \
)
#define JOB_CRIMINALIST_ALT_TITLES list( \
	JOB_CRIMINALIST, \
	JOB_CRIMINAL_INVESTIGATOR, \
	JOB_FORENSIC_TECHNICIAN, \
)
#define JOB_SECURITY_OFFICER_ALT_TITLES list( \
	JOB_SECURITY_OFFICER, \
	JOB_SECURITY_GUARD, \
	JOB_SECURITY_OPERATIVE, \
)
///Engineering
#define JOB_DECK_ENGINEER_ALT_TITLES list( \
	JOB_DECK_ENGINEER, \
	JOB_ELECTRICIAN, \
	JOB_ENGINE_TECHNICIAN, \
	JOB_EVA_TECHNICIAN, \
	JOB_REPAIR_TECHNICIAN, \
	JOB_MAINTENANCE_TECHNICIAN, \
	JOB_MECHANIC, \
)
#define JOB_ATMOSPHERIC_TECHNICIAN_ALT_TITLES list( \
	JOB_ATMOSPHERIC_TECHNICIAN, \
	JOB_EMERGENCY_FIRE_RESPONDER, \
	JOB_LIFE_SUPPORT_TECHNICIAN, \
	JOB_ENVIRONMENTAL_CONTROL_SPECIALIST, \
)
///Medical
#define JOB_CORONER_ALT_TITLES list( \
	JOB_CORONER, \
	JOB_DECEDENT_ANALYST, \
	JOB_DIENER, \
	JOB_POSTMORTEM_SPECIALIST, \
	JOB_MORTUARY_AUDITOR, \
)
#define JOB_MEDICAL_DOCTOR_ALT_TITLES list( \
	JOB_MEDICAL_DOCTOR, \
	JOB_MEDICAL_PRACTITIONER, \
	JOB_PHYSICIAN, \
	JOB_TREATMENT_SPECIALIST, \
	JOB_NURSE, \
	JOB_SURGEON, \
)
#define JOB_PARAMEDIC_ALT_TITLES list( \
	JOB_PARAMEDIC, \
	JOB_CORPSMAN, \
	JOB_EMERGENCY_MEDICAL_RESPONDER, \
	JOB_SEARCH_AND_RESCUE_TECHNICIAN, \
)
#define JOB_CHEMIST_ALT_TITLES list( \
	JOB_CHEMIST, \
	JOB_PHARMACIST, \
	JOB_PHARMACOLOGIST, \
)
///Science
#define JOB_SCIENTIST_ALT_TITLES list( \
	JOB_SCIENTIST, \
	JOB_ANOMALIST, \
	JOB_CIRCUITRY_ENGINEER, \
	JOB_CYTOTOLOGIST, \
	JOB_LAB_TECHNICIAN, \
	JOB_XENOARCHAEOLOGIST, \
	JOB_XENOBIOTOLOGIST, \
	JOB_XENOBOTANIST, \
)
#define JOB_ROBOTICIST_ALT_TITLES list( \
	JOB_ROBOTICIST, \
	JOB_BIOMECHANICAL_ENGINEER, \
	JOB_CYBERNETICIST, \
	JOB_MECHATRONIC_ENGINEER, \
)
#define JOB_GENETICIST_ALT_TITLES list( \
	JOB_GENETICIST, \
	JOB_GENETIC_ENGINEER, \
	JOB_GENOME_RESEARCHER, \
	JOB_MUTATION_RESEARCHER, \
)
///Supply
#define JOB_CARGO_TECHNICIAN_ALT_TITLES list( \
	JOB_CARGO_TECHNICIAN, \
	JOB_DECK_LOADER, \
	JOB_DELIVERER, \
	JOB_SUPPLY_TECHNICIAN, \
	JOB_WAREHOUSE_TECHNICIAN, \
)
#define JOB_SHAFT_MINER_ALT_TITLES list( \
	JOB_SHAFT_MINER, \
	JOB_SHAFT_EXCAVATION_TECHNICIAN, \
	JOB_SHAFT_SPELUNKER, \
)
///Service
#define JOB_BARTENDER_ALT_TITLES list( \
	JOB_BARTENDER, \
	JOB_BARISTA, \
	JOB_BARKEEPER, \
	JOB_BREWER, \
	JOB_MIXOLOGIST, \
)
#define JOB_BOTANIST_ALT_TITLES list( \
	JOB_BOTANIST, \
	JOB_FLORIST, \
	JOB_GARDENER, \
	JOB_HERBALIST, \
	JOB_HYDROPONICIST, \
	JOB_MYCOLOGIST, \
)
#define JOB_COOK_ALT_TITLES list( \
	JOB_COOK, \
	JOB_BAKER, \
	JOB_BUTCHER, \
	JOB_CHEF, \
	JOB_CULINARY_ARTIST, \
	JOB_CONFECTIONER, \
	JOB_GASTRONOMIST, \
)
#define JOB_JANITOR_ALT_TITLES list( \
	JOB_JANITOR, \
	JOB_CLEANER, \
	JOB_CUSTODIAN, \
	JOB_CUSTODIAL_TECHNICIAN, \
	JOB_SANITATION_TECHNICIAN, \
)
#define JOB_CLOWN_ALT_TITLES list( \
	JOB_CLOWN, \
	JOB_JESTER, \
	JOB_JOKER, \
)
#define JOB_MIME_ALT_TITLES list( \
	JOB_MIME, \
	JOB_PANTOMIMIST, \
)
#define JOB_CURATOR_ALT_TITLES list( \
	JOB_CURATOR, \
	JOB_JOURNALIST, \
	JOB_LIBRARIAN, \
	JOB_PUBLICIST, \
	JOB_REPORTER, \
)
#define JOB_CHAPLAIN_ALT_TITLES list( \
	JOB_CHAPLAIN, \
	JOB_CLERIC, \
	JOB_PRIEST, \
	JOB_SPIRITUAL_AGENT, \
	JOB_RELIGIOUS_CONSULTANT, \
	JOB_RITUALIST, \
)
#define JOB_PSYCHOLOGIST_ALT_TITLES list( \
	JOB_PSYCHOLOGIST, \
	JOB_PSYCHIATRIST, \
	JOB_THERAPIST, \
	JOB_MENTALIST, \
)

#define JOB_GROUP_ENGINEERS list( \
	JOB_DECK_ENGINEER, \
	JOB_ATMOSPHERIC_TECHNICIAN, \
)

//Bots
#define JOB_MEDIBOT "Medibot"

#define JOB_DISPLAY_ORDER_ASSISTANT 1
#define JOB_DISPLAY_ORDER_CAPTAIN 2
#define JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL 3
#define JOB_DISPLAY_ORDER_IAA 4
#define JOB_DISPLAY_ORDER_ISO 5
#define JOB_DISPLAY_ORDER_BRIDGE_ASSISTANT 6
#define JOB_DISPLAY_ORDER_STEWARD 7
#define JOB_DISPLAY_ORDER_BARTENDER 8
#define JOB_DISPLAY_ORDER_BOTANIST 9
#define JOB_DISPLAY_ORDER_COOK 10
#define JOB_DISPLAY_ORDER_JANITOR 11
#define JOB_DISPLAY_ORDER_CLOWN 12
#define JOB_DISPLAY_ORDER_MIME 13
#define JOB_DISPLAY_ORDER_CURATOR 14
#define JOB_DISPLAY_ORDER_CHAPLAIN 15
#define JOB_DISPLAY_ORDER_PUN_PUN 16
#define JOB_DISPLAY_ORDER_AI 17
#define JOB_DISPLAY_ORDER_CYBORG 18
#define JOB_DISPLAY_ORDER_CHIEF_ENGINEER 19
#define JOB_DISPLAY_ORDER_DECK_ENGINEER 20
#define JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN 21
#define JOB_DISPLAY_ORDER_QUARTERMASTER 22
#define JOB_DISPLAY_ORDER_CARGO_TECHNICIAN 23
#define JOB_DISPLAY_ORDER_SHAFT_MINER 24
#define JOB_DISPLAY_ORDER_BITRUNNER 25
#define JOB_DISPLAY_ORDER_CARGO_GORILLA 26
#define JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER 27
#define JOB_DISPLAY_ORDER_MEDICAL_DOCTOR 28
#define JOB_DISPLAY_ORDER_PARAMEDIC 29
#define JOB_DISPLAY_ORDER_CHEMIST 30
#define JOB_DISPLAY_ORDER_CORONER 31
#define JOB_DISPLAY_ORDER_PSYCHOLOGIST 32
#define JOB_DISPLAY_ORDER_RESEARCH_DIRECTOR 33
#define JOB_DISPLAY_ORDER_SCIENTIST 34
#define JOB_DISPLAY_ORDER_ROBOTICIST 35
#define JOB_DISPLAY_ORDER_GENETICIST 36
#define JOB_DISPLAY_ORDER_HEAD_OF_SECURITY 37
#define JOB_DISPLAY_ORDER_VETERAN_ADVISOR 38
#define JOB_DISPLAY_ORDER_WARDEN 39
#define JOB_DISPLAY_ORDER_CRIMINALIST 40
#define JOB_DISPLAY_ORDER_SECURITY_OFFICER 41
#define JOB_DISPLAY_ORDER_PRISONER 42

#define DEPARTMENT_UNASSIGNED "No Department"

#define DEPARTMENT_BITFLAG_SECURITY (1<<0)
#define DEPARTMENT_SECURITY "Security"
#define DEPARTMENT_BITFLAG_COMMAND (1<<1)
#define DEPARTMENT_COMMAND "Command"
#define DEPARTMENT_BITFLAG_SERVICE (1<<2)
#define DEPARTMENT_SERVICE "Service"
#define DEPARTMENT_BITFLAG_CARGO (1<<3)
#define DEPARTMENT_CARGO "Cargo"
#define DEPARTMENT_BITFLAG_ENGINEERING (1<<4)
#define DEPARTMENT_ENGINEERING "Engineering"
#define DEPARTMENT_BITFLAG_SCIENCE (1<<5)
#define DEPARTMENT_SCIENCE "Science"
#define DEPARTMENT_BITFLAG_MEDICAL (1<<6)
#define DEPARTMENT_MEDICAL "Medical"
#define DEPARTMENT_BITFLAG_SILICON (1<<7)
#define DEPARTMENT_SILICON "Silicon"
#define DEPARTMENT_BITFLAG_ASSISTANT (1<<8)
#define DEPARTMENT_ASSISTANT "Assistant"
#define DEPARTMENT_BITFLAG_CAPTAIN (1<<9)
#define DEPARTMENT_CAPTAIN "Captain"

DEFINE_BITFIELD(departments_bitflags, list(
	"SECURITY" = DEPARTMENT_BITFLAG_SECURITY,
	"COMMAND" = DEPARTMENT_BITFLAG_COMMAND,
	"SERVICE" = DEPARTMENT_BITFLAG_SERVICE,
	"CARGO" = DEPARTMENT_BITFLAG_CARGO,
	"ENGINEERING" = DEPARTMENT_BITFLAG_ENGINEERING,
	"SCIENCE" = DEPARTMENT_BITFLAG_SCIENCE,
	"MEDICAL" = DEPARTMENT_BITFLAG_MEDICAL,
	"SILICON" = DEPARTMENT_BITFLAG_SILICON,
	"ASSISTANT" = DEPARTMENT_BITFLAG_ASSISTANT,
	"CAPTAIN" = DEPARTMENT_BITFLAG_CAPTAIN,
))

/* Job datum job_flags */
/// Whether the mob is announced on arrival.
#define JOB_ANNOUNCE_ARRIVAL (1<<0)
/// Whether the mob is added to the crew manifest.
#define JOB_CREW_MANIFEST (1<<1)
/// Whether the mob is equipped through SSjob.equip_rank() on spawn.
#define JOB_EQUIP_RANK (1<<2)
/// Whether the job is considered a regular crew member. Equipment such as AI and cyborgs not included.
#define JOB_CREW_MEMBER (1<<3)
/// Whether this job can be joined through the new_player menu.
#define JOB_NEW_PLAYER_JOINABLE (1<<4)
/// Whether this job appears in bold in the job menu.
#define JOB_BOLD_SELECT_TEXT (1<<5)
/// Reopens this position if we lose the player at roundstart.
#define JOB_REOPEN_ON_ROUNDSTART_LOSS (1<<6)
/// If the player with this job can have quirks assigned to him or not. Relevant for new player joinable jobs and roundstart antags.
#define JOB_ASSIGN_QUIRKS (1<<7)
/// Whether this job can be an intern.
#define JOB_CAN_BE_INTERN (1<<8)
/// This job cannot have more slots opened by the Head of Personnel (but admins or other random events can still do this).
#define JOB_CANNOT_OPEN_SLOTS (1<<9)
/// This job will not display on the job menu when there are no slots available, instead of appearing greyed out
#define JOB_HIDE_WHEN_EMPTY (1<<10)
/// This job cannot be signed up for at round start or recorded in your preferences
#define JOB_LATEJOIN_ONLY (1<<11)
/// This job is a head of staff.
#define JOB_HEAD_OF_STAFF (1<<12)
/// This job will NEVER be selected as an antag role
#define JOB_ANTAG_BLACKLISTED (1<<13)
/// This job will never be selected as an antag role IF config `protect_roles_from_antagonist` is set
#define JOB_ANTAG_PROTECTED (1<<14)

DEFINE_BITFIELD(job_flags, list(
	"JOB_ANNOUNCE_ARRIVAL" = JOB_ANNOUNCE_ARRIVAL,
	"JOB_CREW_MANIFEST" = JOB_CREW_MANIFEST,
	"JOB_EQUIP_RANK" = JOB_EQUIP_RANK,
	"JOB_CREW_MEMBER" = JOB_CREW_MEMBER,
	"JOB_NEW_PLAYER_JOINABLE" = JOB_NEW_PLAYER_JOINABLE,
	"JOB_BOLD_SELECT_TEXT" = JOB_BOLD_SELECT_TEXT,
	"JOB_REOPEN_ON_ROUNDSTART_LOSS" = JOB_REOPEN_ON_ROUNDSTART_LOSS,
	"JOB_ASSIGN_QUIRKS" = JOB_ASSIGN_QUIRKS,
	"JOB_CAN_BE_INTERN" = JOB_CAN_BE_INTERN,
	"JOB_CANNOT_OPEN_SLOTS" = JOB_CANNOT_OPEN_SLOTS,
	"JOB_HIDE_WHEN_EMPTY" = JOB_HIDE_WHEN_EMPTY,
	"JOB_LATEJOIN_ONLY" = JOB_LATEJOIN_ONLY,
	"JOB_HEAD_OF_STAFF" = JOB_HEAD_OF_STAFF,
))

/// Combination flag for jobs which are considered regular crew members of the ship.
#define SHIP_JOB_FLAGS (JOB_ANNOUNCE_ARRIVAL|JOB_CREW_MANIFEST|JOB_EQUIP_RANK|JOB_CREW_MEMBER|JOB_NEW_PLAYER_JOINABLE|JOB_REOPEN_ON_ROUNDSTART_LOSS|JOB_ASSIGN_QUIRKS|JOB_CAN_BE_INTERN)
/// Combination flag for jobs which are considered heads of staff.
#define HEAD_OF_STAFF_JOB_FLAGS (JOB_BOLD_SELECT_TEXT|JOB_CANNOT_OPEN_SLOTS|JOB_HEAD_OF_STAFF)
/// Combination flag for jobs which are enabled by ship traits.
#define SHIP_TRAIT_JOB_FLAGS (JOB_CANNOT_OPEN_SLOTS|JOB_HIDE_WHEN_EMPTY|JOB_LATEJOIN_ONLY&~JOB_REOPEN_ON_ROUNDSTART_LOSS)

#define FACTION_NONE "None"
#define FACTION_SHIP "Ship"

// Variable macros used to declare who is the supervisor for a given job, announced to the player when they join as any given job.
#define SUPERVISOR_CAPTAIN "the Captain"
#define SUPERVISOR_CE "the Chief Engineer"
#define SUPERVISOR_CMO "the Chief Medical Officer"
#define SUPERVISOR_HOP "the Head of Personnel"
#define SUPERVISOR_HOS "the Head of Security"
#define SUPERVISOR_QM "the Quartermaster"
#define SUPERVISOR_RD "the Research Director"
#define SUPERVISOR_STEWARD "the Steward"

/// Mind traits that should be shared by every head of staff. has to be this way cause byond lists lol
#define HEAD_OF_STAFF_MIND_TRAITS TRAIT_FAST_TYING, TRAIT_HIGH_VALUE_RANSOM
#define MEDICAL_MIND_TRAITS TRAIT_DESENSITIZED
#define SECURITY_MIND_TRAITS TRAIT_DESENSITIZED
