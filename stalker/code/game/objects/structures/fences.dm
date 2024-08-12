/*------------------------------*\
|>>>> NON-DIRECTIONAL FENCES <<<<|
\*------------------------------*/


/obj/structure/grille/fence
	name = "fence"
	desc = "A generic fence."
	icon = 'stalker/icons/obj/structure/fences.dmi'
	icon_state = "metal"
	density = TRUE
	anchored = TRUE
	layer = CLOSED_DOOR_LAYER
	resistance_flags = INDESTRUCTIBLE
	var/proj_pass_chance = 80
	var/list/connections = list("n" = FALSE, "s" = FALSE, "e" = FALSE, "w" = FALSE)
	var/obj/structure/grille/fence/list/connected_obj = list("n" = null, "s" = null, "e" = null, "w" = null)
	var/v_total = 0	// Total vertical connections
	var/h_total = 0	// Total horizontal connections

/obj/structure/grille/fence/CanPass(atom/movable/mover, turf/target, height=0)
	if(istype(mover) && (mover.pass_flags == PASSGRILLE))
		return TRUE
	else if(istype(mover, /obj/projectile) && density)
		return prob(proj_pass_chance)
	else
		return !density

/obj/structure/grille/fence/Initialize()
	. = ..()
	autotile()
	update_icon()

/obj/structure/grille/fence/proc/autotile()

	//-- Find Connections --//

	// North
	for(var/obj/structure/S in locate(x, y+1, z))
		if(istype(S, type))
			connections["n"] = TRUE
			v_total++
			connected_obj["n"] = S
			connected_obj["n"].connections["s"] = TRUE
			connected_obj["n"].connected_obj["s"] = src
			connected_obj["n"].update_icon()
			break
	// South
	for(var/obj/structure/S in locate(x, y-1, z))
		if(istype(S, type))
			connections["s"] = TRUE
			v_total++
			connected_obj["s"] = S
			connected_obj["s"].connections["n"] = TRUE
			connected_obj["s"].connected_obj["n"] = src
			connected_obj["s"].update_icon()
			break

	// East
	for(var/obj/structure/S in locate(x+1, y, z))
		if(istype(S, type))
			connections["e"] = TRUE
			h_total++
			connected_obj["e"] = S
			connected_obj["e"].connections["w"] = TRUE
			connected_obj["e"].connected_obj["w"] = src
			connected_obj["e"].update_icon()
			break
	// West
	for(var/obj/structure/S in locate(x-1, y, z))
		if(istype(S, type))
			connections["w"] = TRUE
			h_total++
			connected_obj["w"] = S
			connected_obj["w"].connections["e"] = TRUE
			connected_obj["w"].connected_obj["e"] = src
			connected_obj["w"].update_icon()
			break

/obj/structure/grille/fence/update_icon()
	. = ..()
	icon_state = initial(icon_state)
	var/c_string = ""
	for(var/key in connections)
		if(connections[key])
			c_string += key
	if(c_string != "")
		icon_state += "_[c_string]"

/obj/structure/grille/fence/Destroy()
	if(connected_obj["n"])
		connected_obj["n"].connections["s"] = FALSE
		connected_obj["n"].connected_obj["s"] = null
		connected_obj["n"].v_total--
		connected_obj["n"].update_icon()
	if(connected_obj["s"])
		connected_obj["s"].connections["n"] = FALSE
		connected_obj["s"].connected_obj["n"] = null
		connected_obj["s"].v_total--
		connected_obj["s"].update_icon()
	if(connected_obj["e"])
		connected_obj["e"].connections["w"] = FALSE
		connected_obj["e"].connected_obj["w"] = null
		connected_obj["e"].h_total--
		connected_obj["e"].update_icon()
	if(connected_obj["w"])
		connected_obj["w"].connections["e"] = FALSE
		connected_obj["w"].connected_obj["e"] = null
		connected_obj["w"].h_total--
		connected_obj["w"].update_icon()
	return ..()





// Iron Fence //
/obj/structure/grille/fence/iron
	name = "iron fence"
	desc = "A tough and rigid iron fence. I cant climb over this."
	icon = 'stalker/icons/obj/structure/fences.dmi'
	icon_state = "metal"

/obj/structure/grille/fence/iron/update_icon()
	. = ..()
	if(icon_state == "[initial(icon_state)]_ew")
		icon_state += "[rand(1, 4)]"






/*--------------------------*\
|>>>> DIRECTIONAL FENCES <<<<|
\*--------------------------*/

/obj/structure/grille/fence/directional
	name = "fence"
	desc = "A generic fence."
	icon = 'stalker/icons/obj/structure/dir_fences.dmi'
	icon_state = "fence1"
	var/hdir = null	// Horizontal Direction: null = none, 1 = "E", 2 = "W"

/obj/structure/grille/fence/directional/autotile()

	//-- Find Connections --//
	. =..()

	//-- Determine Direction --//

	// Direction is only relevant under these conditions
	if(v_total > 0 && !hdir)
		if(h_total > 0)
			var/_hdir = rand(1, 2)
			if(h_total == 1)
				if(connections["e"])
					_hdir = 2
				else if(connections["w"])
					_hdir = 1
			else
				hdir = _hdir
			if(connections["n"])
				var/obj/structure/grille/fence/directional/fence = connected_obj["n"]
				fence.update_directions(_hdir, 0, 1)
			if(connections["s"])
				var/obj/structure/grille/fence/directional/fence = connected_obj["s"]
				fence.update_directions(_hdir, 0, -1)

/obj/structure/grille/fence/directional/proc/update_directions(var/_hdir, var/xshift = 0, var/yshift = 0)
	var/vertical_total = connections["n"] + connections["s"]
	var/horizontal_total = connections["e"] + connections["w"]
	if(vertical_total > 0 && horizontal_total != 1)
		hdir = _hdir
		update_icon()
	for(var/obj/structure/S in locate(x+xshift, y+yshift, z))
		if(istype(S, type))
			var/obj/structure/grille/fence/directional/fence = S
			fence.update_directions(_hdir, xshift, yshift)
			break

/obj/structure/grille/fence/directional/update_icon()
	. = ..()
	if(hdir)
		icon_state += "-[connections[hdir + 2]]"




// Concrete Fence
/obj/structure/grille/fence/directional/concrete
	name = "concrete fence"
	icon = 'stalker/icons/obj/structure/dir_fences.dmi'
	desc = "A sturdy concrete fence."
	icon_state = "concrete"
	proj_pass_chance = 0
	opacity = TRUE