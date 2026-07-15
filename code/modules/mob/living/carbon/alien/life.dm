/mob/living/carbon/alien/Life(seconds_per_tick = SSMOBS_DT, times_fired)
	. = ..()
	if(!.) //dead or deleted
		return
	findQueen()

/mob/living/carbon/alien/check_breath(datum/gas_mixture/breath)
	if(HAS_TRAIT(src, TRAIT_GODMODE))
		return

	if(!breath || (breath.total_moles() == 0))
		//Aliens breathe in vaccuum
		return 0

	if(health <= HEALTH_THRESHOLD_CRIT)
		adjustOxyLoss(2)

	var/phoron_used = 0
	var/plas_detect_threshold = 0.02
	var/breath_pressure = (breath.total_moles()*R_IDEAL_GAS_EQUATION*breath.temperature)/BREATH_VOLUME
	var/list/breath_gases = breath.gases

	breath.assert_gases(/datum/gas/phoron, /datum/gas/oxygen)

	//Partial pressure of the phoron in our breath
	var/Phoron_pp = (breath_gases[/datum/gas/phoron][MOLES]/breath.total_moles())*breath_pressure

	if(Phoron_pp > plas_detect_threshold) // Detect phoron in air
		adjustPhoron(breath_gases[/datum/gas/phoron][MOLES]*250)
		throw_alert(ALERT_XENO_PHORON, /atom/movable/screen/alert/alien_plas)

		phoron_used = breath_gases[/datum/gas/phoron][MOLES]

	else
		clear_alert(ALERT_XENO_PHORON)

	//Breathe in phoron and out oxygen
	breath_gases[/datum/gas/phoron][MOLES] -= phoron_used
	breath_gases[/datum/gas/oxygen][MOLES] += phoron_used

	breath.garbage_collect()

	//BREATH TEMPERATURE
	handle_breath_temperature(breath)

/mob/living/carbon/alien/adult/Life(seconds_per_tick, times_fired)
	. = ..()
	if(QDELETED(src))
		return
	handle_organs(seconds_per_tick, times_fired)
