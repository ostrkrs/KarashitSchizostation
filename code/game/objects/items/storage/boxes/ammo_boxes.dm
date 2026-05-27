/obj/item/storage/box/ammo
	icon_state = "ammobox"
	illustration = null


/obj/item/storage/box/ammo/rubbershot
	name = "box of shotgun shells (Less Lethal - Rubber Shot)"
	desc = "A box full of rubber shot shotgun shells."
	illustration = "rubber"

/obj/item/storage/box/ammo/rubbershot/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/rubbershot(src)


/obj/item/storage/box/ammo/buckshot
	name = "box of shotgun shells (Lethal - Buckshot)"
	desc = "A box full of buckshot shotgun shells."
	illustration = "buckshot"

/obj/item/storage/box/ammo/buckshot/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/buckshot(src)


/obj/item/storage/box/ammo/birdshot
	name = "box of shotgun shells (Lethal - Birdshot)"
	desc = "A box full of birdshot shotgun shells."
	illustration = "birdshot"

/obj/item/storage/box/ammo/birdshot/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/birdshot(src)


/obj/item/storage/box/ammo/slugs
	name = "box of shotgun shells (Lethal - Slugs)"
	desc = "A box full of shotgun slugs."
	illustration = "slug"

/obj/item/storage/box/ammo/slugs/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun(src)


/obj/item/storage/box/ammo/manstoppers
	name = "box of shotgun shells (Lethal - Manstoppers)"
	desc = "A box full of shotgun manstopper slugs."
	illustration = "manstopper"

/obj/item/storage/box/ammo/manstoppers/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/manstopper(src)


/obj/item/storage/box/ammo/beanbags
	name = "box of shotgun shells (Less Lethal - Beanbag)"
	desc = "A box full of beanbag shotgun shells."
	illustration = "beanbag"

/obj/item/storage/box/ammo/beanbags/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/beanbag(src)


/obj/item/storage/box/ammo/breacher_slugs
	name = "box of shotgun shells (Breachers)"
	desc = "A box full of breaching slugs, designed for rapid entry, not very effective against anything else."
	illustration = "breach"

/obj/item/storage/box/ammo/breacher_slugs/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/breacher(src)


/obj/item/storage/box/ammo/large_darts
	name = "box of shotgun shells (Darts)"
	desc = "A box full of shotgun darts with increased chemical storage capacity."
	illustration = "dart"

/obj/item/storage/box/ammo/large_darts/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/dart/large(src)


/obj/item/storage/box/ammo/flechettes
	name = "box of shotgun shells (Lethal - Flechette)"
	desc = "A box full of shotgun flechettes."
	illustration = "flechette"

/obj/item/storage/box/ammo/flechettes/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/flechette(src)


/obj/item/storage/box/ammo/incendiary
	name = "box of shotgun shells (Lethal - Incendiary)"
	desc = "A box full of incendiary shotgun shells."
	illustration = "incendiary"

/obj/item/storage/box/ammo/incendiary/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/incendiary(src)


/obj/item/storage/box/ammo/dragons_breath
	name = "box of shotgun shells (Lethal - Dragon's Breath)"
	desc = "A box full of dragon's breath shotgun shells."
	illustration = "dragonsbreath"

/obj/item/storage/box/ammo/dragons_breath/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/dragonsbreath(src)
