/*--------------------*\
|>>>> CERAMIC TILE <<<<|
\*--------------------*/

// Grey Tile //
/turf/open/ceramic_tile
	name = "grey tile"
	desc = "A simple grey tile made of ceramic."
	icon = 'stalker/icons/turf/floors/flooring.dmi'
	icon_state = "tilegrey_1"
	base_icon_state = "tilegrey"
	baseturfs = /turf/open/ceramic_tile
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/ceramic_tile/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_1"
	if(prob(25))
		icon_state = "[base_icon_state]_[rand(2,4)]"



// White Tile //
/turf/open/ceramic_tile/white
	name = "white tile"
	desc = "A simple white tile made of ceramic."
	icon_state = "tilewhite_1"
	base_icon_state = "tilewhite"
	baseturfs = /turf/open/ceramic_tile/white
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS






/*----------------*\
|>>>> CONCRETE <<<<|
\*----------------*/


// Concrete Slab //
/turf/open/concrete_slab
	name = "concrete slab"
	desc = "Concrete poured into the shape of a large, thick rectangle."
	icon = 'stalker/icons/turf/floors/flooring.dmi'
	icon_state = "concreteslab_1"
	base_icon_state = "concreteslab"
	baseturfs = /turf/open/concrete_slab
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/concrete_slab/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"






/*------------*\
|>>>> ROAD <<<<|
\*------------*/

// Asphalt //
/turf/open/asphalt
	name = "asphalt"
	desc = "Asphalt that was poured hot onto the ground and pressed with heavy machinery."
	icon = 'stalker/icons/turf/floors/road.dmi'
	icon_state = "asphalt_1"
	base_icon_state = "asphalt"
	baseturfs = /turf/open/asphalt
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/asphalt/Initialize()
	. = ..()
	switch(rand(1, 100))
		if(1 to 70)
			icon_state = "[base_icon_state]_[rand(1, 3)]"
		if(71 to 95)
			icon_state = "[base_icon_state]_[rand(4, 5)]"
		if(96 to 100)
			icon_state = "[base_icon_state]_6"






/*------------*\
|>>>> WOOD <<<<|
\*------------*/


// Wood Floor //
/turf/open/wood
	name = "wood floor"
	desc = "Wood planks arranged in an alternating pattern."
	icon = 'stalker/icons/turf/floors/flooring.dmi'
	icon_state = "planks_1"
	base_icon_state = "planks"
	baseturfs = /turf/open/wood
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/wood/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1, 3)]"



// Old Wood Floor
/turf/open/wood/old/Initialize()
	. = ..()
	if(prob(25))
		icon_state = "[base_icon_state]broken_[rand(1, 3)]"





/*-------------*\
|>>>> METAL <<<<|
\*-------------*/

// Metal Tile Floor //
/turf/open/metal_tile
	name = "metal plate floor"
	desc = "Metal plates about the size of typical ceramic tiles."
	icon = 'stalker/icons/turf/floors/flooring.dmi'
	icon_state = "metaltile"
	base_icon_state = "metaltile"
	baseturfs = /turf/open/metal_tile
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	footstep = FOOTSTEP_PLATING
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/metal_tile/Initialize()
	. = ..()
	if(prob(25))
		icon_state = "[base_icon_state]-rust[rand(1, 2)]"



// Diamond Plate Floor //
/turf/open/metal_tile/diamond
	name = "diamond plate floor"
	desc = "Called diamond plate due to the pattern it has, but it's just metal..."
	icon_state = "diamondplate_1"
	base_icon_state = "diamondplate"
	baseturfs = /turf/open/metal_tile/diamond
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS



// Metal Grating //
/turf/open/metal_tile/grating
	name = "metal grating"
	desc = "An arrangement of flat metal strips in a grid pattern. Only darkness can be seen below."
	icon_state = "grating"
	base_icon_state = "grating"
	baseturfs = /turf/open/metal_tile/grating
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS




