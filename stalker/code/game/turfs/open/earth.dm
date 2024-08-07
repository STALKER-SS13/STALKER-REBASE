

// Grass //
/turf/open/grass
	name = "grass"
	desc = "Just some dirt covered in grass."
	icon = 'stalker/icons/turf/floors/earth.dmi'
	icon_state = "grass_1"
	base_icon_state = "grass"
	baseturfs = /turf/open/grass
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY


/turf/open/grass/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"
	if(!locate(/obj/structure) in src)
		switch(rand(1, 100))
			if(1 to 15)
				switch(rand(1, 100))
					if(1 to 25)
						new /obj/structure/flora/bush/fullgrass/style_random(get_turf(src))
					if(26 to 50)
						new /obj/structure/flora/bush/sparsegrass/style_random(get_turf(src))
					if(51 to 65)
						new /obj/structure/flora/bush/grassy/style_random(get_turf(src))
					if(66 to 85)
						new /obj/structure/flora/bush/sunny/style_random(get_turf(src))
					if(86 to 100)
						new /obj/structure/flora/root(get_turf(src))
			if(16 to 17)
				switch(rand(1, 10))
					if(1 to 7)
						new /obj/structure/flora/stalker_tree(get_turf(src))
					if(8)
						new /obj/structure/flora/tree/jungle/small/style_random(get_turf(src))
					if(9 to 10)
						new /obj/structure/tree_stump(get_turf(src))
			if(100)
				switch(rand(0, 11))
					if (1)
						new /obj/structure/flora/root/wild_potato(get_turf(src))
					if (2)
						new /obj/structure/flora/root/wild_tato(get_turf(src))
					if (3)
						new /obj/structure/flora/root/wild_fungus(get_turf(src))
					if (4)
						new /obj/structure/flora/root/wild_berries(get_turf(src))
					if (5)
						new /obj/structure/flora/root/wild_bayleaf(get_turf(src))
					if (6)
						new /obj/structure/flora/root/wild_carrot(get_turf(src))
					if (7)
						new /obj/structure/flora/root/wild_parsnip(get_turf(src))
					if (8)
						new /obj/structure/flora/root/wild_whitebeet(get_turf(src))
					if (9)
						new /obj/structure/flora/root/wild_redbeet(get_turf(src))
					if (10)
						new /obj/structure/flora/root/wild_garlic(get_turf(src))
					if (11)
						new /obj/structure/flora/root/wild_onion(get_turf(src))



// Dirt //
/turf/open/soil
	name = "soil"
	desc = "Fresh, moist, dirt."
	icon = 'stalker/icons/turf/floors/earth.dmi'
	icon_state = "dirt_1"
	base_icon_state = "dirt"
	baseturfs = /turf/open/soil
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/soil/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"



// Dirt //
/turf/open/arid_soil
	name = "arid soil"
	desc = "Soil with all water removed from it due to chronic heat or an extreme event."
	icon = 'stalker/icons/turf/floors/earth.dmi'
	icon_state = "drydirt_1"
	base_icon_state = "drydirt"
	baseturfs = /turf/open/arid_soil
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/arid_soil/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"



// Mud //
/turf/open/mud
	name = "mud"
	desc = "Soil with an excess of water causing it to become pasty."
	icon = 'stalker/icons/turf/floors/earth.dmi'
	icon_state = "mud_1"
	base_icon_state = "mud"
	baseturfs = /turf/open/mud
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/mud/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"



// Gravel //
/turf/open/gravel
	name = "gravel"
	desc = "Rocky earth."
	icon = 'stalker/icons/turf/floors/earth.dmi'
	icon_state = "gravel_1"
	base_icon_state = "gravel"
	baseturfs = /turf/open/gravel
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/gravel/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 2)]"