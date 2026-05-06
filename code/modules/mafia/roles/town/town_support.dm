/datum/mafia_role/iaa
	name = "Internal Affairs Agent"
	desc = "You can choose a person to provide extensive legal advice to, preventing night actions."
	revealed_outfit = /datum/outfit/mafia/iaa
	role_type = TOWN_SUPPORT
	hud_icon = SECHUD_IAA
	revealed_icon = "internalaffairsagent"
	winner_award = /datum/award/achievement/mafia/iaa

	role_unique_actions = list(/datum/mafia_ability/roleblock)

/datum/mafia_role/hop
	name = "Head of Personnel"
	desc = "You can reveal yourself once per game, tripling your vote power but becoming unable to be protected!"
	role_type = TOWN_SUPPORT
	role_flags = ROLE_UNIQUE
	role_flags = ROLE_CAN_KILL
	hud_icon = SECHUD_HEAD_OF_PERSONNEL
	revealed_icon = "headofpersonnel"
	revealed_outfit = /datum/outfit/mafia/hop
	winner_award = /datum/award/achievement/mafia/hop

	role_unique_actions = list(/datum/mafia_ability/self_reveal)

/datum/mafia_role/chaplain
	name = "Chaplain"
	desc = "You can communicate with spirits of the dead each night to discover dead crewmember roles."
	role_type = TOWN_INVEST
	team = MAFIA_TEAM_TOWN | MAFIA_TEAM_DEAD
	hud_icon = SECHUD_CHAPLAIN
	revealed_icon = "chaplain"
	revealed_outfit = /datum/outfit/mafia/chaplain
	winner_award = /datum/award/achievement/mafia/chaplain

	role_unique_actions = list(/datum/mafia_ability/seance)
