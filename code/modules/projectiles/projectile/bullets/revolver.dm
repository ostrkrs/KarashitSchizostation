// .38

/obj/projectile/bullet/c38
	name = ".38 bullet"
	damage = 25
	wound_bonus = -20
	exposed_wound_bonus = 10
	embed_type = /datum/embedding/bullet/c38
	embed_falloff_tile = -4

/datum/embedding/bullet/c38
	embed_chance = 25
	fall_chance = 2
	jostle_chance = 2
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 3
	jostle_pain_mult = 5
	rip_time = 1 SECONDS

/obj/projectile/bullet/c38/rubber
	name = ".38 rubber bullet"
	damage = 10
	stamina = 30
	wound_bonus = 0
	exposed_wound_bonus = 0
	shrapnel_type = null
	sharpness = NONE
	embed_type = null

/obj/projectile/bullet/c38/hp
	name = ".38 hollow-point bullet"
	damage = 15
	weak_against_armour = TRUE
	sharpness = SHARP_EDGED
	wound_bonus = 20
	exposed_wound_bonus = 20
	embed_type = /datum/embedding/bullet/c38/hp

/datum/embedding/bullet/c38/hp
	embed_chance = 75
	fall_chance = 3
	jostle_chance = 4
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 5
	jostle_pain_mult = 6
	rip_time = 1 SECONDS

/obj/projectile/bullet/c38/trac
	name = ".38 TRAC bullet"
	damage = 10

/obj/projectile/bullet/c38/trac/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	var/mob/living/carbon/M = target
	if(!istype(M))
		return
	var/obj/item/implant/tracking/c38/imp
	for(var/obj/item/implant/tracking/c38/TI in M.implants) //checks if the target already contains a tracking implant
		imp = TI
		return
	if(!imp)
		imp = new /obj/item/implant/tracking/c38(M)
		imp.implant(M)

// .357

/obj/projectile/bullet/c357
	name = ".357 bullet"
	damage = 45
	wound_bonus = -15

//gatfruit
/obj/projectile/bullet/pea
	name = "pea bullet"
	damage = 15
	weak_against_armour = TRUE
	ricochets_max = 2
	ricochet_chance = 100
	icon_state = "pea"

/obj/projectile/bullet/pea/Initialize(mapload)
	. = ..()
	create_reagents(100, NO_REACT) //same as the fruit itself, wont ever hit that much though i believe

/obj/projectile/bullet/pea/on_hit(mob/living/carbon/target, blocked = 0, pierce_hit)
	if(istype(target) && blocked != 100)
		if(iszombie(target)) // https://www.youtube.com/watch?v=ssZoq1eUK-s
			target.adjustBruteLoss(15)
		if(target.can_inject(target_zone = def_zone)) // Pass the hit zone to see if it can inject by whether it hit the head or the body.
			..()
			reagents.trans_to(target, reagents.total_volume, methods = INJECT)
			return BULLET_ACT_HIT
		blocked = 100
		target.visible_message(span_danger("\The [src] is deflected!"), span_userdanger("You are protected against \the [src]!"))
	. = ..()
	if(reagents.flags & NO_REACT) //first impact on a noncarbon
		reagents.flags &= ~(NO_REACT)
		reagents.handle_reactions()
