GLOBAL_LIST_INIT(stalker_loot, create_stalker_loot_list())

/proc/create_stalker_loot_list()
	var/list/datums = list()
	for(var/path in subtypesof(/datum/stalker_loot))
		var/datum/stalker_loot/datum = new path()
		if(!datum.item_path)
			qdel(datum)
			continue
		if(datums.len < datum.tier)
			datums.len = datum.tier
			for(var/i = 1; i <= datums.len, i++)
				if(!datums[i])
					datums[i] = list()
		datums[datum.tier].Add(datum)
	return datums

/datum/stalker_loot
	var/name = null					// The name displayed on the sidormat (null = item's initial name)
	var/desc = null					// The description displayed on the sidormat (null = item's initial description)
	var/item_path = null			// The type path of this item [DO NOT GIVE CATEGORIES ITEM PATHS!!!]
	var/value = 0					// The theoretical value of this item
	var/vendor_available = FALSE	// Whether this item is available in the vendor
	var/experience_lock = 0			// Experience needed for this item to be available
	var/faction = null				// Factions this item is available to (null = everyone)
	var/stock = 5					// The item's initial and maximum stock in the sidormat
	var/restock_time = 1			// The time until one unit of this item is back in stock (restock_time * 5 MINUTES)
	var/tier = LOOT_TIER_TRASH		// The tier of this item