/obj/structure/closet/crate/stalker_stash
	name = "STALKER stash"
	icon_state = "wooden"
	desc = "Stalkers commonly use these crates to hide their loot."
	var/lootcount = 1		//how many items will be spawned
	var/lootdoubles = 1		//if the same item can be spawned twice
	var/list/loot = list()
	var/waspicked = 0
	var/rating_add

/*
/obj/structure/closet/crate/stalker_stash/Initialize()
	..()
	switch(rating_add)
		if(0 to 200)
			loot = GLOB.low_tier_sidormatitems
		if(201 to 400)
			loot = GLOB.medium_tier_sidormatitems
		if(401 to INFINITY)
			loot = GLOB.high_tier_sidormatitems

	if(!loot || !loot.len)
		return

	for(var/i = lootcount, i > 0, i--)
		if(!loot.len)
			break

		var/datum/data/stalker_equipment/lootspawn = pick(loot)

		if(!lootdoubles)
			loot.Remove(lootspawn)

		if(lootspawn)
			new lootspawn.equipment_path(src)
*/

/obj/structure/closet/crate/stalker_stash/low
	lootdoubles = 1
	lootcount = 1
	rating_add = 100

/obj/structure/closet/crate/stalker_stash/medium
	lootdoubles = 1
	lootcount = 2
	rating_add = 250

/obj/structure/closet/crate/stalker_stash/high
	lootdoubles = 0
	lootcount = 2
	rating_add = 500