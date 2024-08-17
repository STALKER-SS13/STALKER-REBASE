GLOBAL_LIST_EMPTY(stalker_caches)

/obj/structure/cache
	name = "cache"
	desc = "Generates a stash with a certain chance at the start of the round. Tell a developer if you see this."
	icon = 'stalker/icons/obj/structure/caches.dmi'
	icon_state = "error"
	density = TRUE
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE
	var/cache_chance = 0					// Percent chance of a cache spawning in the place of this structure
	var/cache_tier = 0						// The maximum loot tier of the items spawned (0 = random)
	var/cache_size = CACHE_SMALL			// Determins the maximum size of the contents and their quantity
	var/curve_steepness = 100				// The steepness of the loot curve.
	var/icon_variations = 0					// Number of icon state variations. 1st state is icon_state, any variations have a number added to the end.

/obj/structure/cache/Initialize(mapload)
	. = ..()
	create_storage(
		max_specific_storage = WEIGHT_CLASS_TINY + cache_size,
		max_slots = 4 * cache_size,
		max_total_storage = 3 * cache_size,
	)
	GLOB.stalker_caches += src
	refresh_contents()
	update_icon()

/obj/structure/cache/update_icon()
	. = ..()
	if(icon_variations > 0)
		icon_state = initial(icon_state)
		var/r = rand(0, icon_variations)
		if(r > 0)
			icon_state += "[r]"


/obj/structure/cache/Destroy()
	GLOB.stalker_caches -= src
	return ..()

/obj/structure/cache/attack_hand(mob/user)
	. = ..()
	user.visible_message("<span class='notice'>[user] begins to inspect [src]...</span>", "<span class='notice'>You start to inspect [src]...</span>")
	if(do_after(user, 1 SECONDS, src))
		atom_storage.open_storage(user)

/obj/structure/cache/proc/refresh_contents()

	// Random Tier
	if(!cache_tier)
		switch(z)
			if(4 to INFINITY)
				cache_tier = rand(LOOT_TIER_LOW, LOOT_TIER_HIGH)
			if(3)
				cache_tier = rand(LOOT_TIER_TRASH, LOOT_TIER_MEDIUM)
			if(2)
				cache_tier = rand(LOOT_TIER_TRASH, LOOT_TIER_LOW)
			if(1)
				cache_tier = rand(LOOT_TIER_TRASH, LOOT_TIER_MEDIUM)

	// Random Chance
	if(!cache_chance)
		cache_chance += 25 - 5 * cache_tier

	if(!prob(cache_chance))
		return

	for(var/obj/item/I in contents)
		if(atom_storage.attempt_remove(I, get_turf(src), TRUE))
			qdel(I)

	// If the cache fails to find an item to fit the storage too many times it should give up
	var/fail_counter = 0
	while(fail_counter < 3)
		var/r = rand(0,100) / 100
		var/tier = round(((curve_steepness ** (r - 1)) * cache_tier) + (0.5 - (curve_steepness ** -1)), 1)	// Loot curve formula. Ex: steepness=100: round(100^(x-1)*tier_max + 0.49)
		var/datum/stalker_loot/loot_datum = pick(GLOB.stalker_loot[tier])
		var/obj/item/item_path = loot_datum.item_path
		if(initial(item_path.w_class) + atom_storage.get_total_weight() > atom_storage.max_total_storage)
			fail_counter++
			continue
		var/obj/item/I = new item_path()
		if(!atom_storage.attempt_insert(I))
			qdel(I)
			fail_counter++
			continue