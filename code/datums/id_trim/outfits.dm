/**
 * This file contains all the trims associated with outfits.
 */

/// Trim for the assassin outfit.
/datum/id_trim/reaper_assassin
	assignment = "Reaper"
	trim_state = "trim_ert_deathcommando"
	department_color = COLOR_DARK
	subdepartment_color = COLOR_RED // I AM THE VIOLENCE

/datum/id_trim/highlander/New()
	. = ..()
	access = SSid_access.get_region_access_list(list(REGION_ALL_STATION))

/// Trim for the mobster outfit.
/datum/id_trim/mobster
	assignment = "Mobster"
	trim_state = "trim_assistant"

/// Trim for the Tunnel Clown! outfit. Has all access.
/datum/id_trim/tunnel_clown
	assignment = "Tunnel Clown!"
	trim_state = "trim_clown"
	department_color = COLOR_MAGENTA
	subdepartment_color = COLOR_MAGENTA

/datum/id_trim/tunnel_clown/New()
	. = ..()
	access |= SSid_access.get_region_access_list(list(REGION_ALL_STATION))

/// Trim for Bounty Hunters NOT hired by centcom. (?)
/datum/id_trim/bounty_hunter
	assignment = "Bounty Hunter"
	trim_state = "trim_deathcommando"
	department_color = COLOR_PRISONER_ORANGE
	subdepartment_color = COLOR_PRISONER_BLACK

	access = list(ACCESS_HUNTER)

/// Trim for player controlled avatars in the Virtual Domain.
/datum/id_trim/bit_avatar
	assignment = "VR Avatar"
	trim_state = "trim_bitavatar"
	department_color = COLOR_ALMOST_BLACK
	subdepartment_color = COLOR_GREEN
	sechud_icon_state = SECHUD_BITAVATAR

/datum/id_trim/vagabond
	assignment = "Unknown"
	access = list(ACCESS_MAINT_TUNNELS)
	threat_modifier = 1
