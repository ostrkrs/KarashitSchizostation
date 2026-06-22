///Hud type with targeting dol and a nutrition bar
/datum/hud/ooze/New(mob/living/owner)
	. = ..()

	zone_select = new /atom/movable/screen/zone_sel(null, src)
	zone_select.icon = ui_style
	zone_select.update_appearance()
	static_inventory += zone_select

	alien_phoron_display = new /atom/movable/screen/ooze_nutrition_display(null, src)
	infodisplay += alien_phoron_display

/atom/movable/screen/ooze_nutrition_display
	icon = 'icons/hud/screen_alien.dmi'
	icon_state = "power_display"
	name = "nutrition"
	screen_loc = ui_alien_phoron_display
