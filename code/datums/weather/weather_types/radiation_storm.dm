//Radiation storms occur when the station passes through an irradiated area, and irradiate anyone not standing in protected areas (maintenance, emergency storage, etc.)
/datum/weather/rad_storm
	name = "radiation storm"
	desc = "A cloud of intense radiation passes through the area dealing rad damage to those who are unprotected."

	telegraph_duration = 40 SECONDS
	telegraph_message = span_danger("The air begins to grow warm.")

	weather_message = span_userdanger("<i>You feel waves of heat wash over you! Find shelter!</i>")
	weather_overlay = "ash_storm"
	weather_duration_lower = 1 MINUTES
	weather_duration_upper = 2.5 MINUTES
	weather_color = "green"
	weather_sound = 'sound/announcer/alarm/bloblarm.ogg'

	end_duration = 10 SECONDS
	end_message = span_notice("The air seems to be cooling off again.")

	area_type = /area
	protected_areas = list(/area/station/maintenance, /area/station/ai_monitored/turret_protected/ai_upload, /area/station/ai_monitored/turret_protected/ai_upload_foyer,
							/area/station/ai_monitored/turret_protected/aisat/maint, /area/station/ai_monitored/command/storage/satellite,
							/area/station/ai_monitored/turret_protected/ai, /area/station/commons/storage/emergency/starboard, /area/station/commons/storage/emergency/port,
							/area/shuttle, /area/station/security/prison/cells, /area/station/security/prison/toilet, /area/mine/maintenance, /area/icemoon/underground, /area/ruin/comms_agent/maint)
	target_trait = ZTRAIT_STATION

	immunity_type = TRAIT_RADSTORM_IMMUNE
	weather_flags = (WEATHER_MOBS | WEATHER_INDOORS)
	/// Chance we get a negative mutation, if we fail we get a positive one
	var/negative_mutation_chance = 90
	/// Chance we mutate
	var/mutate_chance = 40

/datum/weather/rad_storm/telegraph()
	..()
	status_alarm(TRUE)


/datum/weather/rad_storm/weather_act_mob(mob/living/living)
	if(!prob(mutate_chance))
		return

	if(!ishuman(living) || HAS_TRAIT(living, TRAIT_GODMODE))
		return

	var/mob/living/carbon/human/human = living
	if(!human.can_mutate())
		return

	if(HAS_TRAIT(human, TRAIT_RADIMMUNE))
		return

	if (SSradiation.wearing_rad_protected_clothing(human))
		return

	human.random_mutate_unique_identity()
	human.random_mutate_unique_features()

	if(prob(50))
		do_mutate(human)

	return ..()

/datum/weather/rad_storm/end()
	if(..())
		return
	priority_announce("The radiation threat has passed. Please return to your workplaces.", "Anomaly Alert")
	status_alarm(FALSE)

/datum/weather/rad_storm/proc/do_mutate(mob/living/carbon/human/mutant)
	if(prob(negative_mutation_chance))
		mutant.easy_random_mutate(NEGATIVE+MINOR_NEGATIVE)
	else
		mutant.easy_random_mutate(POSITIVE)
	mutant.domutcheck()

/datum/weather/rad_storm/proc/status_alarm(active) //Makes the status displays show the radiation warning for those who missed the announcement.
	if (active)
		send_status_display_radiation_alert()
	else
		clear_status_display_radiation()
