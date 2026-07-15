/obj/structure/closet/secure_closet/captains
	name = "captain's locker"
	icon_state = "cap"
	req_access = list(ACCESS_CAPTAIN)

/obj/structure/closet/secure_closet/captains/PopulateContents()
	..()

	new /obj/item/storage/backpack/captain(src)
	new /obj/item/storage/backpack/satchel/cap(src)
	new /obj/item/storage/backpack/duffelbag/captain(src)
	new /obj/item/storage/backpack/messenger/cap(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/storage/bag/garment/captain(src)
	new /obj/item/computer_disk/command/captain(src)
	new /obj/item/radio/headset/heads/captain/alt(src)
	new /obj/item/radio/headset/heads/captain(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/storage/photo_album/captain(src)

/obj/structure/closet/secure_closet/captains/populate_contents_immediate()
	new /obj/item/gun/energy/laser(src)
	new /obj/item/storage/belt/sheath/sabre(src)


/obj/structure/closet/secure_closet/hop
	name = "head of personnel's locker"
	icon_state = "hop"
	req_access = list(ACCESS_HOP)

/obj/structure/closet/secure_closet/hop/PopulateContents()
	..()
	new /obj/item/dog_bone(src)
	new /obj/item/storage/bag/garment/hop(src)
	new /obj/item/computer_disk/command/hop(src)
	new /obj/item/radio/headset/heads/hop(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/door_remote/head_of_personnel(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)
	new /obj/item/storage/photo_album/hop(src)
	new /obj/item/storage/lockbox/medal/hop(src)

/obj/structure/closet/secure_closet/hop/populate_contents_immediate()
	new /obj/item/gun/energy/laser(src)


/obj/structure/closet/secure_closet/iso
	name = "internal security operative's locker"
	icon_state = "iso"
	req_access = list(ACCESS_ISO)

/obj/structure/closet/secure_closet/iso/PopulateContents()
	..()
	new /obj/item/radio/headset/headset_comsec(src)
	new /obj/item/radio/headset/headset_comsec/alt(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/storage/bag/garment/iso(src)

/obj/structure/closet/secure_closet/iso/populate_contents_immediate()
	new /obj/item/gun/energy/laser(src)
	new /obj/item/gun/energy/taser(src)


/obj/structure/closet/secure_closet/iaa
	name = "internal affairs agent's locker"
	icon_state = "iaa"
	req_access = list(ACCESS_IAA)

/obj/structure/closet/secure_closet/iaa/PopulateContents()
	..()
	new /obj/item/storage/briefcase/secure(src)
	new /obj/item/radio/headset/headset_comsec(src)
	new /obj/item/storage/bag/garment/iaa(src)
	new /obj/item/reagent_containers/cup/fish_feed(src)
	for(var/i in 1 to 2)
		new /obj/item/storage/box/evidence(src)
