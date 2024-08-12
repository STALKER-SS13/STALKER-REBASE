/turf
	var/list/autotile_with = null	// Overlays are drawn from the first item in the list to the last
	var/autotile_icon = null
	var/autotile_state = null
	var/autotile_links = null

/turf/Initialize(mapload)
	. = ..()
	update_icon()

/turf/update_icon()
	. = ..()
	if(autotile_with)
		// 9 bit values assigned to autotile_state
		var/list/links = list()

		// Assign Linkages
		for(var/i = -1; i <= 1; i++)
			for(var/j = -1; j <= 1; j++)
				if(i == 0 && j == 0)
					continue
				var/turf/T = get_turf(locate(x + j, y + i, z))
				if(T && T.autotile_state && T.autotile_icon && autotile_with.Find(T.type))
					var/height = links.Find(T.type)
					if(!height)
						var/comparison = autotile_with.Find(T.type)
						var/target = 0
						while(links.len - target > 0)	// Order the Overlays
							var/t_height = autotile_with.Find(links[links.len - target])
							if(t_height > comparison)
								break
							target++
						links.Insert((links.len - target) + 1, T.type)
						links[T.type] = 0
					links[T.type] |= 1 << ((i * 3) - j + 4)

		// Generate overlays
		autotile_links = links
		autotile_overlays()

/turf/proc/autotile_overlays()
	for(var/path in autotile_links)
		var/turf/T = path
		overlays += image(initial(T.autotile_icon), src, "[initial(T.autotile_state)]-[autotile_links[path]]")
