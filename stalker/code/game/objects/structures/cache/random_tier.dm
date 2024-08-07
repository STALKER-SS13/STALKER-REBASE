
/*----------------*\
|>>>> MACHINES <<<<|
\*----------------*/

/obj/structure/cache/transformator
	name = "transformer"
	desc = "An old electrical transformer that converts AC voltage down to a lower voltage and higher amperage or vice versa."
	icon_state = "transformer"
	density = TRUE
	anchored = TRUE
	icon_variations = 1

/obj/structure/cache/large_interface	//brokenmachine 1-3
	name = "broken machine"
	desc = "Some sort of large unit with guages, dials, LEDs, buttons, and the likes."
	icon_state = "brokenmachine1"
	density = TRUE
	anchored = TRUE
	icon_variations = 2

/obj/structure/cache/old_machine		//brokenmachine 4-etc
	name = "old machine"
	desc = "Some old machine. Who knows what it is for..."
	icon_state = "old_machine"
	density = TRUE
	anchored = TRUE
	icon_variations = 2

/obj/structure/cache/broken_vendor
	name = "broken vending machine"
	desc = "A broken, dilapidated vending machine."
	icon_state = "vendmachine"
	density = TRUE
	anchored = TRUE
	cache_size = CACHE_NORMAL
	icon_variations = 23




/*-----------------*\
|>>>> FURNITURE <<<<|
\*-----------------*/

/obj/structure/cache/burnt_dresser
	name = "burnt dresser"
	desc = "It is burnt and smells a little of smoke."
	icon_state = "burnt_dresser"
	density = TRUE
	anchored = TRUE

/obj/structure/cache/burnt_cabinet
	name = "burnt cabinet"
	desc = "It is burnt and smells a little of smoke."
	icon_state = "burnt_cabinet"
	density = TRUE
	anchored = TRUE


/obj/structure/cache/rusty_locker
	name = "rusty locker"
	desc = "Not an inch uncovered with rust or rusted out holes."
	icon_state = "rusty_locker"
	density = TRUE
	anchored = TRUE

/obj/structure/cache/chest_drawers
	name = "metal chest drawers"
	desc = "A metal chest of drawers."
	icon_state = "chest_drawers"
	density = TRUE
	anchored = TRUE
	pass_flags = LETPASSTHROW
	cache_size = CACHE_SMALL

/obj/structure/cache/chest_drawers/lage
	name = "large metal chest drawers"
	desc = "Rusty old wardrobe. Covered with grease and dirt."
	icon_state = "chest_drawers_L"
	cache_size = CACHE_NORMAL

/obj/structure/cache/closet
	name = "closet"
	desc = "A tall wooden shelf in poor state."
	icon = 'stalker/icons/obj/structure/decor_32x64.dmi'
	icon_state = "closet"
	density = TRUE
	anchored = TRUE
	cache_size = CACHE_BULKY




/*------------------*\
|>>>> APPLIANCES <<<<|
\*------------------*/

/obj/structure/cache/junk_micro		//-------------------------------------no sprite
	name = "disgusting microwave"
	desc = "Once able to heat up your donk pockets, now good for the scrap yard."
	icon_state = "rusty_microwave"
	density = TRUE
	anchored = TRUE

/obj/structure/cache/junk_jukebox
	name = "broken jukebox"
	desc = "It doesn't look like it will be playing anymore songs."
	icon_state = "broken_jukebox"
	density = TRUE
	anchored = TRUE

/obj/structure/cache/broken_washer
	name = "broken washing machine"
	desc = "Once used to wash clothes, now scrap."
	icon = 'stalker/icons/obj/structure/decor.dmi'
	icon_state = "washer"
	density = TRUE
	anchored = TRUE

/obj/structure/cache/old_gas_stove
	name = "gas stove"
	desc = "A rusty old gas stove. Covered with grease and dirt. It doesn't look like you can use this, but there might be something inside..."
	icon_state = "old_gas_stove"
	density = TRUE
	anchored= TRUE
	cache_size = CACHE_NORMAL




/*---------------------*\
|>>>> MISCELLANEOUS <<<<|
\*---------------------*/

/obj/structure/cache/body
	name = "stalker's body"
	desc = "Gored and rotten - repulsive but he could have something on him."
	icon_state = "deadbody"
	anchored = TRUE
	density = FALSE
	cache_size = CACHE_NORMAL
	icon_variations = 5

/obj/structure/cache/cross
	name = "cross"
	desc = "A wooden cross. Looks like someone is buried here."
	icon_state = "cross"
	density = FALSE
	anchored = TRUE
	cache_size = CACHE_SMALL

/obj/structure/cache/cross/bereza
	icon_state = "birch_cross"

/obj/structure/cache/barrel
	name = "barrel"
	desc = "An old steel barrel."
	icon_state = "barrel"
	density = TRUE
	anchored = TRUE
	cache_size = CACHE_NORMAL

/obj/structure/cache/barrel/red
	name = "red barrel"
	icon_state = "red_barrel"

/obj/structure/cache/tires/
	name = "tire pile"
	desc = "Five heavy old flat tires."
	icon_state = "tires5"
	density = TRUE
	anchored = TRUE
	cache_size = CACHE_SMALL

/obj/structure/cache/tires/t2a
	desc = "A couple heavy old flat tires."
	icon_state = "tires2a"

/obj/structure/cache/tires/t2b
	desc = "A couple heavy old flat tires."
	icon_state = "tires2b"

/obj/structure/cache/tires/t3a
	desc = "A few heavy old flat tires."
	icon_state = "tires3a"

/obj/structure/cache/tires/t3b
	desc = "A few heavy old flat tires."
	icon_state = "tires3b"

/obj/structure/cache/tires/t1
	name = "tire"
	desc = "A single heavy old flat tire."
	icon_state = "tires1"
	density = FALSE

/obj/structure/cache/crate
	name = "wooden crate"
	desc = "An old wooden crate."
	icon_state = "crate"
	density = TRUE
	anchored = TRUE
	cache_size = CACHE_SMALL

/obj/structure/cache/crate/green
	name = "wooden crate"
	desc = "An old green wooden crate."
	icon_state = "green_crate"

/obj/structure/cache/crate/big
	name = "large wooden crate"
	desc = "A large, old, wooden crate."
	icon = 'stalker/icons/obj/structure/decor_32x64.dmi'
	icon_state = "crate"
	layer = ABOVE_ALL_MOB_LAYER
	cache_size = CACHE_BULKY




/*------------------*\
|>>>> RECONSIDER <<<<|
\*------------------*/

/obj/structure/cache/truba
	name = "pipe"
	desc = "An old rusty pipe."
	icon_state = "truba"
	density = FALSE
	anchored = TRUE
	cache_size = CACHE_SMALL

/obj/structure/cache/truba/vert
	icon_state = "truba_v"









