/datum/action/cooldown/optical_camouflage
	name = "Toggle camouflage"
	desc = "Blend it with your surroundings and become transparent."
	cooldown_time = 10 SECONDS

	button_icon = 'code/modules/serpentids/icons/actions.dmi'
	button_icon_state = "serpentid_stealth"
	var/active = FALSE
	var/camouflage_alpha = 35

/datum/action/cooldown/optical_camouflage/Activate(atom/target)
	. = ..()
	if(!owner)
		return FALSE

	if(isdead(owner) || owner.incapacitated)
		owner.balloon_alert(owner, "Incapacitated!")
		return FALSE

	if(active)
		remove_camouflage()
		return TRUE

	RegisterSignals(owner, list(COMSIG_MOB_ITEM_ATTACK, COMSIG_ATOM_ATTACKBY, COMSIG_ATOM_ATTACK_HAND, COMSIG_ATOM_HITBY, COMSIG_ATOM_HULK_ATTACK, COMSIG_ATOM_ATTACK_PAW, COMSIG_CARBON_CUFF_ATTEMPTED, COMSIG_ATOM_BULLET_ACT, COMSIG_LIVING_EARLY_UNARMED_ATTACK, COMSIG_LIVING_MOB_BUMP, COMSIG_HUMAN_BURNING, COMSIG_LIVING_SLAPPED, COMSIG_MOVABLE_MOVED, COMSIG_LIVING_UNARMED_ATTACK), PROC_REF(remove_camouflage))
	enter_camouflage()
	return TRUE

/datum/action/cooldown/optical_camouflage/Destroy()
	. = ..()
	if(!owner)
		return
	remove_camouflage()

/datum/action/cooldown/optical_camouflage/proc/enter_camouflage()
	owner.visible_message(span_notice("[owner] starts shifting colors and becomes transparent."), span_notice("You blend it with your surroundings."), span_hear("You hear a low hiss."))

	animate(owner, alpha = camouflage_alpha, time = cooldown_time)

	active = TRUE

/datum/action/cooldown/optical_camouflage/proc/remove_camouflage()
	owner.visible_message(span_notice("[owner] stops blending in with surroundings."), span_notice("You become visible again."), span_hear("You hear a low hiss."))
	animate(owner, alpha = 255, time = 1.5 SECONDS)

	UnregisterSignal(owner, list(COMSIG_LIVING_EARLY_UNARMED_ATTACK, COMSIG_MOB_ITEM_ATTACK, COMSIG_ATOM_ATTACKBY, COMSIG_ATOM_ATTACK_HAND, COMSIG_ATOM_BULLET_ACT, COMSIG_ATOM_HITBY, COMSIG_ATOM_HULK_ATTACK, COMSIG_ATOM_ATTACK_PAW, COMSIG_CARBON_CUFF_ATTEMPTED, COMSIG_LIVING_MOB_BUMP, COMSIG_HUMAN_BURNING, COMSIG_LIVING_SLAPPED, COMSIG_MOVABLE_MOVED, COMSIG_LIVING_UNARMED_ATTACK))

	active = FALSE
