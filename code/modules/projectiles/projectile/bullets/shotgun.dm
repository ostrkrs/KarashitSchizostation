/obj/projectile/bullet/shotgun_slug
	name = "shotgun slug"
	icon_state = "pellet"
	damage = 45
	armour_penetration = 30
	wound_bonus = 15
	sharpness = SHARP_POINTY

/obj/projectile/bullet/shotgun_manstopper
	name = "manstopper slug"
	damage = 60
	stamina = 40
	wound_bonus = 10
	exposed_wound_bonus = 25
	weak_against_armour = TRUE

/obj/projectile/bullet/shotgun_beanbag
	name = "beanbag slug"
	icon_state = "pellet"
	damage = 10
	stamina = 55
	wound_bonus = 15
	sharpness = NONE
	embed_type = null
	weak_against_armour = TRUE

/obj/projectile/bullet/shotgun_beanbag/a40mm
	name = "rubber slug"
	icon_state = "cannonball"
	damage = 20
	stamina = 160 //BONK
	wound_bonus = 30

/obj/projectile/bullet/incendiary/shotgun
	name = "incendiary slug"
	icon_state = "pellet"
	damage = 35
	leaves_fire_trail = FALSE

/obj/projectile/bullet/incendiary/shotgun/dragonsbreath
	name = "dragon's breath pellet"
	damage = 5
	exposed_wound_bonus = 6
	wound_falloff_tile = -1
	damage_falloff_tile = -0.35
	leaves_fire_trail = TRUE
	sharpness = NONE
	embed_type = null
	weak_against_armour = TRUE

/obj/projectile/bullet/shotgun_frag12
	name ="frag slug"
	icon_state = "pellet"
	damage = 15
	paralyze = 10

/obj/projectile/bullet/shotgun_frag12/on_hit(atom/target, blocked = 0, pierce_hit)
	..()
	explosion(target, devastation_range = -1, light_impact_range = 1, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/projectile/bullet/pellet
	icon_state = "pellet"

/obj/projectile/bullet/pellet/shotgun_buckshot
	name = "buckshot pellet"
	damage = 8
	wound_bonus = 6
	exposed_wound_bonus = 12
	wound_falloff_tile = -1
	damage_falloff_tile = -0.25
	sharpness = SHARP_EDGED

/obj/projectile/bullet/pellet/shotgun_birdshot
	name = "birdshot pellet"
	damage = 4
	wound_bonus = 2
	exposed_wound_bonus = 6
	wound_falloff_tile = -1
	damage_falloff_tile = -0.35
	sharpness = SHARP_EDGED
	weak_against_armour = TRUE

/obj/projectile/bullet/pellet/shotgun_rubbershot
	name = "rubber shot pellet"
	damage = 1
	stamina = 15
	sharpness = NONE
	embed_type = null
	stamina_falloff_tile = -1
	weak_against_armour = TRUE

/obj/projectile/bullet/pellet/shotgun_incapacitate
	name = "incapacitating pellet"
	damage = 1
	stamina = 6
	embed_type = null

/obj/projectile/bullet/pellet/flechette
	name = "flechette"
	damage = 8
	wound_bonus = 20
	exposed_wound_bonus = 25
	armour_penetration = 0
	damage_falloff_tile = -0.1
	wound_falloff_tile = -1
	sharpness = SHARP_POINTY
	weak_against_armour = TRUE
	embed_type = /datum/embedding/bullet/flechette

/datum/embedding/bullet/flechette
	embed_chance = 100
	fall_chance = 0
	jostle_chance = 50
	ignore_throwspeed_threshold = TRUE
	pain_mult = 1
	jostle_pain_mult = 1
	rip_time = 1 SECONDS

// Mech Scattershot

/obj/projectile/bullet/scattershot
	icon_state = "pellet"
	damage = 24

//Breaching Ammo

/obj/projectile/bullet/shotgun_breaching
	name = "breaching round"
	desc = "A breaching round designed to destroy airlocks and windows with only a few shots. Ineffective against other targets."
	hitsound = 'sound/items/weapons/sonic_jackhammer.ogg'
	damage = 20
	wound_bonus = 15
	demolition_mod = 200 //one shot to break a window or grille, or two shots to breach an airlock door
