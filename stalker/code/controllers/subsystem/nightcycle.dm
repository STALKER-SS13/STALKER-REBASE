/*  6:00 AM 	- 	21600
	6:45 AM 	- 	24300
	11:45 AM 	- 	42300
	4:45 PM 	- 	60300
	9:45 PM 	- 	78300
	10:30 PM 	- 	81000 */
#define CYCLE_SUNRISE 	216000
#define CYCLE_MORNING 	243000
#define CYCLE_DAYTIME 	423000
#define CYCLE_AFTERNOON 603000
#define CYCLE_SUNSET 	783000
#define CYCLE_NIGHTTIME 810000

SUBSYSTEM_DEF(nightcycle)
	name = "Day/Night Cycle"
	wait = 4
	can_fire = TRUE
	var/currentTime
	var/sunColour
	var/sunPower
	var/sunRange = 4
	var/currentColumn
	var/working = 3
	var/doColumns = 2 //number of columns to do at a time

/datum/controller/subsystem/nightcycle/fire(resumed = FALSE)
	if (working)
		doWork()
		return
	if (nextBracket())
		working = 1
		currentColumn = 1

/datum/controller/subsystem/nightcycle/proc/nextBracket()
	var/Time = station_time()
	var/newTime

	switch (Time)
		if (CYCLE_SUNRISE 	to CYCLE_MORNING - 1)
			newTime = "SUNRISE"
		if (CYCLE_MORNING 	to CYCLE_DAYTIME 	- 1)
			newTime = "MORNING"
		if (CYCLE_DAYTIME 	to CYCLE_AFTERNOON	- 1)
			newTime = "DAYTIME"
		if (CYCLE_AFTERNOON to CYCLE_SUNSET 	- 1)
			newTime = "AFTERNOON"
		if (CYCLE_SUNSET 	to CYCLE_NIGHTTIME - 1)
			newTime = "SUNSET"
		else
			newTime = "NIGHTTIME"

	if (newTime != currentTime)
		currentTime = newTime
		updateLight(currentTime)
		. = TRUE

/datum/controller/subsystem/nightcycle/proc/doWork()
	var/list/currentTurfs = list()
	var/x = min(currentColumn + doColumns, world.maxx)
	for (var/z in SSmapping.levels_by_trait(ZTRAIT_NIGHTCYCLE))
		currentTurfs += block(locate(currentColumn,1,z), locate(x,world.maxy,z))
	for (var/turf/T in currentTurfs)
		var/area/stalker/A = T.loc
		if(istype(A) && A.day_light)
			T.set_light(A.day_light_range, A.day_light_power * sunPower, sunColour)

	currentColumn = x + 1
	if (currentColumn > world.maxx)
		currentColumn = 1
		working = 0
		return

/datum/controller/subsystem/nightcycle/proc/updateLight(newTime)
	switch (newTime)
		if ("SUNRISE")
			sunColour = "#ffd1b3"
			sunPower = 0.4
		if ("MORNING")
			sunColour = "#fff2e6"
			sunPower = 0.67
		if ("DAYTIME")
			sunColour = "#FFFFFF"
			sunPower = 1.0
		if ("AFTERNOON")
			sunColour = "#fff2e6"
			sunPower = 0.67
		if ("SUNSET")
			sunColour = "#ffcccc"
			sunPower = 0.4
		if("NIGHTTIME")
			sunColour = "#00111a"
			sunPower = 0.13



#undef CYCLE_SUNRISE
#undef CYCLE_MORNING
#undef CYCLE_DAYTIME
#undef CYCLE_AFTERNOON
#undef CYCLE_SUNSET
#undef CYCLE_NIGHTTIME
