// .357

/obj/item/ammo_casing/c357
	name = ".357 bullet casing"
	desc = "A .357 bullet casing."
	icon_state = "357_casing"
	caliber = CALIBER_357
	projectile_type = /obj/projectile/bullet/c357

/obj/item/ammo_casing/c357/spent
	projectile_type = null

// .38

/obj/item/ammo_casing/c38
	name = ".38 bullet casing"
	desc = "A .38 bullet casing."
	caliber = CALIBER_38
	projectile_type = /obj/projectile/bullet/c38

/obj/item/ammo_casing/c38/trac
	name = ".38 TRAC bullet casing"
	desc = "A .38 \"TRAC\" bullet casing."
	projectile_type = /obj/projectile/bullet/c38/trac

/obj/item/ammo_casing/c38/rubber
	name = ".38 rubber bullet casing"
	desc = "A .38 rubber bullet casing."
	projectile_type = /obj/projectile/bullet/c38/rubber

/obj/item/ammo_casing/c38/hp
	name = ".38 hollow-point bullet casing"
	desc = "A .38 hollow-point bullet casing."
	projectile_type = /obj/projectile/bullet/c38/hp

//gatfruit
/obj/item/ammo_casing/pea
	name = "pea bullet casing"
	desc = "A bizarre pea bullet."
	caliber = CALIBER_PEA
	icon_state = "pea"
	projectile_type = /obj/projectile/bullet/pea
	/// Damage we achieve at 100 potency
	var/max_damage = 15
	/// Damage set by the plant
	var/damage = 15 //max potency, is set

/obj/item/ammo_casing/pea/Initialize(mapload)
	. = ..()
	create_reagents(60, SEALED_CONTAINER)

/obj/item/ammo_casing/pea/ready_proj(atom/target, mob/living/user, quiet, zone_override, atom/fired_from)
	. = ..()
	if(isnull(loaded_projectile))
		return
	loaded_projectile.damage = damage

/obj/item/ammo_casing/pea/attack_self(mob/user)
	. = ..()
	if(isnull(loaded_projectile))
		return
	var/obj/item/food/grown/peas/peas = new(user.drop_location())
	user.put_in_hands(peas)
	to_chat(user, span_notice("You separate [peas] from [src]."))
	loaded_projectile = null
	update_appearance()
