/obj/structure/table/stalker
	name = "Erm.. what the deuce?.."

/obj/structure/table/stalker/wood
	desc = "A simple table."
	icon = 'stalker/icons/obj/structure/stol_stalker.dmi'
	icon_state = "stol"
	canSmoothWith = list(/obj/structure/table/stalker/wood)

/obj/structure/table/stalker/wood/bar
	desc = "A homemade bar counter."
	icon = 'stalker/icons/obj/structure/stol_stalker_bar.dmi'
	icon_state = "bar"
	canSmoothWith = list(/obj/structure/table/stalker/wood/bar)

/obj/structure/table/stalker/wood/bar100rentgen
	desc = "A quality bar counter."
	icon = 'stalker/icons/obj/structure/bartables.dmi'
	icon_state = "table"

/obj/structure/table/stalker/wood/bar100rentgen/Initialize()
	. = ..()
	RemoveElement(/datum/element/climbable)

/obj/structure/stalker/okno
	name = "Window"
	desc = "An old wooden window."
	icon = 'stalker/icons/obj/structure/decor.dmi'
	pass_flags = LETPASSTHROW
	var/proj_pass_rate = 40
	density = 0
	opacity = 0
	var/unpassable = 0

/obj/structure/stalker/okno/window1
	icon_state = "okno1"

/obj/structure/stalker/okno/window2
	icon_state = "okno2"

/obj/structure/stalker/okno/window3
	icon_state = "okno3"

/obj/structure/stalker/okno/window4
	icon_state = "okno4"

/obj/structure/stalker/okno/CanPass(atom/movable/mover, turf/target, height=0)//So bullets will fly over and stuff.
	if(height==0)
		return 1
	if(istype(mover, /obj/projectile))
		if(!anchored)
			return 1
		var/obj/projectile/P = mover
		if(P.firer && Adjacent(P.firer))
			return 1
		if(prob(proj_pass_rate))
			return 1
		return 0
	else
		return 0
