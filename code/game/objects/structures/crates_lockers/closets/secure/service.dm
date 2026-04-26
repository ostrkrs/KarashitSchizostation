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
