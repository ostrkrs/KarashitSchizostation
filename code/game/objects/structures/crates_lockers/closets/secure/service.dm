/obj/structure/closet/secure_closet/steward
	name = "steward's locker"
	req_access = list(ACCESS_STEWARD)
	icon_state = "steward"

/obj/structure/closet/secure_closet/steward/PopulateContents()
	..()
	new /obj/item/storage/lockbox/medal/service(src)
	new /obj/item/radio/headset/heads/steward(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/tank/internals/emergency_oxygen(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/bag/garment/steward(src)


/obj/structure/closet/secure_closet/bar
	name = "booze storage"
	req_access = list(ACCESS_BAR)
	icon_state = "cabinet_secure"
	icon_locked = "cabinet_secure_locked"
	icon_unlocked = "cabinet_secure_unlocked"
	resistance_flags = FLAMMABLE
	max_integrity = 70
	open_sound = 'sound/machines/closet/wooden_closet_open.ogg'
	close_sound = 'sound/machines/closet/wooden_closet_close.ogg'
	open_sound_volume = 25
	close_sound_volume = 50
	door_anim_time = 0 // no animation
	paint_jobs = null

/obj/structure/closet/secure_closet/bar/PopulateContents()
	..()
	for(var/i in 1 to 10)
		new /obj/item/reagent_containers/cup/glass/bottle/beer(src)

/obj/structure/closet/secure_closet/bar/all_access
	req_access = null

/obj/structure/closet/secure_closet/bar/lavaland_bartender_booze/PopulateContents()
	new /obj/item/vending_refill/cigarette(src)
	new /obj/item/vending_refill/boozeomat(src)
	new /obj/item/storage/backpack/duffelbag(src)
	new /obj/item/etherealballdeployer(src)
	for(var/i in 1 to 14)
		new /obj/item/reagent_containers/cup/glass/bottle/beer/light(src)
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/cup/glass/colocup(src)

/obj/structure/closet/secure_closet/bar/lavaland_bartender_clothes
	name = "bartender's locker"

/obj/structure/closet/secure_closet/bar/lavaland_bartender_clothes/PopulateContents()
	new /obj/item/clothing/neck/beads(src)
	new /obj/item/clothing/glasses/sunglasses/reagent(src)
	new /obj/item/clothing/suit/costume/hawaiian(src)
	new /obj/item/clothing/shoes/sandal/beach(src)


/obj/structure/closet/secure_closet/bartender
	name = "bartender's locker"
	req_access = list(ACCESS_BAR)
	icon_state = "bartender"

/obj/structure/closet/secure_closet/bartender/PopulateContents()
	..()
	new /obj/item/storage/box/ammo/beanbags(src)
	new /obj/item/clothing/suit/armor/vest/alt(src)
	new /obj/item/storage/belt/bandolier(src)
	new /obj/item/gun/ballistic/shotgun/doublebarrel(src)
	new /obj/item/etherealballdeployer(src)
