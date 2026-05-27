// Honker

/obj/projectile/bullet/honker
	name = "banana"
	damage = 0
	movement_type = FLYING
	projectile_piercing = ALL
	hitsound = 'sound/items/bikehorn.ogg'
	icon = 'icons/obj/service/hydroponics/harvest.dmi'
	icon_state = "banana"
	range = 200
	embed_type = null
	shrapnel_type = null

/obj/projectile/bullet/honker/Initialize(mapload)
	. = ..()
	SpinAnimation()

/obj/projectile/bullet/honker/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	var/mob/M = target
	if(istype(M))
		if(M.can_block_magic())
			return BULLET_ACT_BLOCK
		else
			M.slip(100, M.loc, GALOSHES_DONT_HELP|SLIDE)

// Mime

/obj/projectile/bullet/mime
	damage = 40

/obj/projectile/bullet/mime/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(!isliving(target))
		return

	var/mob/living/living_target = target
	living_target.set_silence_if_lower(20 SECONDS)
