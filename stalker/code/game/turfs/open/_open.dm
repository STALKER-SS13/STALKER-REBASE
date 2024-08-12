/turf/open/autotile_overlays()
	for(var/path in autotile_links)
		var/num = autotile_links[path]
		if(num & 128)	// 0b010000000
			num &= 191	// 0b010111111
		if(num & 32)	// 0b000100000
			num &= 251	// 0b011111011
		if(num & 8)		// 0b000001000
			num &= 446	// 0b110111110
		if(num & 2)		// 0b000000010
			num &= 506	// 0b111111010

		// Create Overlays
		var/turf/T = path
		overlays += image(initial(T.autotile_icon), src, "[initial(T.autotile_state)]-[num]")