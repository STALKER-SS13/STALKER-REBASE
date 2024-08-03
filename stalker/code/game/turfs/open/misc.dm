/turf/open/path
	name = "sandy path"
	desc = "A sandy path to walk upon."
	icon = 'stalker/icons/obj/structure/paths.dmi'
	icon_state = "tropa"
	base_icon_state = "tropa"
	baseturfs = /turf/open/path
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND

var/global/list/TropaEdgeCache

/turf/open/path/New()
	if(!TropaEdgeCache || !TropaEdgeCache.len)
		TropaEdgeCache = list()
		TropaEdgeCache.len = 10
		TropaEdgeCache[NORTH] = image(src.icon, "tropa_side_n", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[SOUTH] = image(src.icon, "tropa_side_s", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[EAST] = image(src.icon, "tropa_side_e", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[WEST] = image(src.icon, "tropa_side_w", layer = HIGH_TURF_LAYER)

	spawn(1)
		var/turf/T
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i))
				continue
			if(layer > get_step(src, 2**i).layer)
				T = get_step(src, 2**i)
				if(T)
					T.overlays += TropaEdgeCache[2**i]
	return