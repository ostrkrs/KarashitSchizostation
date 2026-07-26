///all designs supported by the RTD
GLOBAL_LIST_INIT(floor_designs, list(
	//what players will use most of the time
	"Conventional" = list(
		//The most common types
		"Standard" = list(
			list("name" = "Base", "type" = /obj/item/stack/tile/iron, "tile_cost" = 5),
			list("name" = "Small", "type" = /obj/item/stack/tile/iron/small, "tile_cost" = 5),
			list("name" = "Large", "type" = /obj/item/stack/tile/iron/large, "tile_cost" = 5),
			list("name" = "Diagonal", "type" = /obj/item/stack/tile/iron/diagonal, "tile_cost" = 5),
			list("name" = "Edge", "type" = /obj/item/stack/tile/iron/edge, "tile_cost" = 5),
			list("name" = "Half", "type" = /obj/item/stack/tile/iron/half, "tile_cost" = 5),
			list("name" = "Corner", "type" = /obj/item/stack/tile/iron/corner, "tile_cost" = 5),
			list("name" = "Herringbone", "type" = /obj/item/stack/tile/iron/herringbone, "tile_cost" = 5),
			list("name" = "Ridged", "type" = /obj/item/stack/tile/iron/ridged, "tile_cost" = 5),
			list("name" = "Grid", "type" = /obj/item/stack/tile/iron/grid, "tile_cost" = 5),
			list("name" = "Textured", "type" = /obj/item/stack/tile/iron/textured, "tile_cost" = 5),
			list("name" = "Textured Edge", "type" = /obj/item/stack/tile/iron/textured_edge, "tile_cost" = 5),
			list("name" = "Textured Half", "type" = /obj/item/stack/tile/iron/textured_half, "tile_cost" = 5),
			list("name" = "Textured Corner", "type" = /obj/item/stack/tile/iron/textured_corner, "tile_cost" = 5),
			list("name" = "Textured Large", "type" = /obj/item/stack/tile/iron/textured_large, "tile_cost" = 5),
			list("name" = "Industrial", "type" = /obj/item/stack/tile/iron/industrial, "tile_cost" = 5),
			list("name" = "Industrial Edge", "type" = /obj/item/stack/tile/iron/industrial_edge, "tile_cost" = 5),
			list("name" = "Industrial Half", "type" = /obj/item/stack/tile/iron/industrial_half, "tile_cost" = 5),
			list("name" = "Industrial Corner", "type" = /obj/item/stack/tile/iron/industrial_corner, "tile_cost" = 5),
			list("name" = "Industrial Large", "type" = /obj/item/stack/tile/iron/industrial_large, "tile_cost" = 5),
		),
		//Looks slightly transparent or faded
		"Translucent" = list(
			list("name" = "Smooth", "type" = /obj/item/stack/tile/iron/smooth, "tile_cost" = 5),
			list("name" = "Smooth Edge", "type" = /obj/item/stack/tile/iron/smooth_edge, "tile_cost" = 5),
			list("name" = "Smooth Half", "type" = /obj/item/stack/tile/iron/smooth_half, "tile_cost" = 5),
			list("name" = "Smooth Corner", "type" = /obj/item/stack/tile/iron/smooth_corner, "tile_cost" = 5),
			list("name" = "Smooth Large", "type" = /obj/item/stack/tile/iron/smooth_large, "tile_cost" = 5),
			list("name" = "Freezer", "type" = /obj/item/stack/tile/iron/freezer, "tile_cost" = 5),
			list("name" = "White Freezer", "type" = /obj/item/stack/tile/iron/freezer/alt, "tile_cost" = 5),
			list("name" = "Showroom", "type" = /obj/item/stack/tile/iron/showroomfloor, "tile_cost" = 5),
			list("name" = "Glass", "type" = /obj/item/stack/tile/glass, "tile_cost" = 5),
			list("name" = "Reinforced Glass", "type" = /obj/item/stack/tile/rglass, "tile_cost" = 10)
		),
		"Circuit" = list(
			list("name" = "Blue Circuit", "type" = /obj/item/stack/tile/circuit, "tile_cost" = 15),
			list("name" = "Green Circuit", "type" = /obj/item/stack/tile/circuit/green, "tile_cost" = 15),
			list("name" = "Red Circuit", "type" = /obj/item/stack/tile/circuit/red, "tile_cost" = 15),
		)
	),

	//Floors which are decorated
	"Decorated" = list(
		//Dark Colored tiles
		"Dark Colored" = list(
			list("name" = "Base", "type" = /obj/item/stack/tile/iron/dark, "tile_cost" = 5),
			list("name" = "Small", "type" = /obj/item/stack/tile/iron/dark/small, "tile_cost" = 5),
			list("name" = "Large", "type" = /obj/item/stack/tile/iron/dark/large, "tile_cost" = 5),
			list("name" = "Diagonal", "type" = /obj/item/stack/tile/iron/dark/diagonal, "tile_cost" = 5),
			list("name" = "Edge", "type" = /obj/item/stack/tile/iron/dark/edge, "tile_cost" = 5),
			list("name" = "Half", "type" = /obj/item/stack/tile/iron/dark/half, "tile_cost" = 5),
			list("name" = "Corner" ,"type" = /obj/item/stack/tile/iron/dark/corner, "tile_cost" = 5),
			list("name" = "Herringbone", "type" = /obj/item/stack/tile/iron/dark/herringbone, "tile_cost" = 5),
			list("name" = "Ridged", "type" = /obj/item/stack/tile/iron/dark/ridged, "tile_cost" = 5),
			list("name" = "Grid", "type" = /obj/item/stack/tile/iron/dark/grid, "tile_cost" = 5),
			list("name" = "Textured", "type" = /obj/item/stack/tile/iron/dark/textured, "tile_cost" = 5),
			list("name" = "Textured Edge", "type" = /obj/item/stack/tile/iron/dark/textured_edge, "tile_cost" = 5),
			list("name" = "Textured Half", "type" = /obj/item/stack/tile/iron/dark/textured_half, "tile_cost" = 5),
			list("name" = "Textured Corner", "type" = /obj/item/stack/tile/iron/dark/textured_corner, "tile_cost" = 5),
			list("name" = "Textured Large", "type" = /obj/item/stack/tile/iron/dark/textured_large, "tile_cost" = 5),
		),

		//White Colored tiles
		"White Colored" = list(
			list("name" = "Base", "type" = /obj/item/stack/tile/iron/white, "tile_cost" = 5),
			list("name" = "Small", "type" = /obj/item/stack/tile/iron/white/small, "tile_cost" = 5),
			list("name" = "Large", "type" = /obj/item/stack/tile/iron/white/large, "tile_cost" = 5),
			list("name" = "Diagonal", "type" = /obj/item/stack/tile/iron/white/diagonal, "tile_cost" = 5),
			list("name" = "Edge", "type" = /obj/item/stack/tile/iron/white/edge, "tile_cost" = 5),
			list("name" = "Half", "type" = /obj/item/stack/tile/iron/white/half, "tile_cost" = 5),
			list("name" = "Corner", "type" = /obj/item/stack/tile/iron/white/corner, "tile_cost" = 5),
			list("name" = "Herringbone", "type" = /obj/item/stack/tile/iron/white/herringbone, "tile_cost" = 5),
			list("name" = "Ridged", "type" = /obj/item/stack/tile/iron/white/ridged, "tile_cost" = 5),
			list("name" = "Textured White", "type" = /obj/item/stack/tile/iron/white/textured, "tile_cost" = 5),
			list("name" = "Textured White Edge", "type" = /obj/item/stack/tile/iron/white/textured_edge, "tile_cost" = 5),
			list("name" = "Textured White Half", "type" = /obj/item/stack/tile/iron/white/textured_half, "tile_cost" = 5),
			list("name" = "Textured White Corner", "type" = /obj/item/stack/tile/iron/white/textured_corner, "tile_cost" = 5),
			list("name" = "Textured White Large", "type" = /obj/item/stack/tile/iron/white/textured_large, "tile_cost" = 5),
		)
	),

	//Tiles which you decorate your home with
	"Interior" = list(
		"Kitchen" = list(
			list("name" = "Kitchen", "type" = /obj/item/stack/tile/iron/kitchen, "tile_cost" = 5),
			list("name" = "Kitchen Small", "type" = /obj/item/stack/tile/iron/kitchen/small, "tile_cost" = 5),
			list("name" = "Kitchen Diagonal", "type" = /obj/item/stack/tile/iron/kitchen/diagonal, "tile_cost" = 5),
			list("name" = "Kitchen Herringbone", "type" = /obj/item/stack/tile/iron/kitchen/herringbone, "tile_cost" = 5),
		),

		"Terracotta" = list(
			list("name" = "Terracotta", "type" = /obj/item/stack/tile/iron/terracotta, "tile_cost" = 5),
			list("name" = "Small", "type" = /obj/item/stack/tile/iron/terracotta/small, "tile_cost" = 5),
			list("name" = "Diagonal", "type" = /obj/item/stack/tile/iron/terracotta/diagonal, "tile_cost" = 5),
			list("name" = "Herrigone", "type" = /obj/item/stack/tile/iron/terracotta/herringbone, "tile_cost" = 5),
		),

		"Misc." = list(
			list("name" = "Chapel", "type" = /obj/item/stack/tile/iron/chapel, "tile_cost" = 7),
			list("name" = "Sepia", "type" = /obj/item/stack/tile/iron/sepia, "tile_cost" = 5),
		)
	)
))

/// Lazy-initialize the datum field on all the designs
/proc/populate_rtd_datums()
	for(var/main_root in GLOB.floor_designs)
		for(var/sub_category in GLOB.floor_designs[main_root])
			for(var/list/design in GLOB.floor_designs[main_root][sub_category])
				var/datum/tile_info/tile_data = new /datum/tile_info(design)
				design["datum"] = tile_data
