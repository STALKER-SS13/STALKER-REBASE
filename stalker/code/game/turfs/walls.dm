/mob/living/carbon/proc/update_top_overlay()
	if(src.loc && istype(src.loc, /turf/open/stalker/floor/water))
		remove_overlay(BODY_FRONT_LAYER)
		var/icon/I
		if(src.body_position == LYING_DOWN)
			I = turn(icon('stalker/icons/water.dmi', "human_overlay_turned"), - src.body_position)
		else
			I = icon('stalker/icons/water.dmi', "human_overlay")

		overlays_standing[BODY_FRONT_LAYER] = mutable_appearance(I, "", - BODY_FRONT_LAYER)
		apply_overlay(BODY_FRONT_LAYER)
	else
		remove_overlay(BODY_FRONT_LAYER)


/turf/closed/wall/stalker
	canSmoothWith = list(
	/turf/closed/wall/stalker/beton,
	/turf/closed/wall/stalker/bricks,
	/turf/closed/wall/stalker/bricks_yellow,
	/turf/closed/wall/stalker/bricks_white,
	/turf/closed/wall/stalker/beton_agro,
	/turf/closed/wall/stalker/brick,
	/turf/closed/wall/stalker/brickdark,
	/turf/closed/wall/stalker/superstore,
	/turf/closed/wall/stalker/store,
	/turf/closed/wall/stalker/log
	///obj/structure/stalker/okno/whitebrick/odin,
	///obj/structure/stalker/okno/whitebrick/dva,
	///obj/structure/stalker/okno/whitebrick/tri,
	///obj/structure/stalker/okno/whitebrick/double1,
	///obj/structure/stalker/okno/whitebrick/double2,
	///obj/structure/stalker/okno/redbrick/odin,
	///obj/structure/stalker/okno/redbrick/dva,
	///obj/structure/stalker/okno/redbrick/double1,
	///obj/structure/stalker/okno/redbrick/double2)
	)
	resistance_flags = INDESTRUCTIBLE
	flags_1 = RICOCHET_HARD

/turf/closed/wall/stalker/Initialize()
	..()
	if(locate(/obj/structure/stalker/okno) in contents)
		opacity = 0
		//windowed = TRUE

/turf/closed/wall/stalker/beton
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/turfs/walls/beton_tg.dmi'
	icon_state = "beton"
	canSmoothWith = list(
	/turf/closed/wall/stalker/beton,
	/turf/closed/wall/stalker/beton_agro
	)

/turf/closed/wall/stalker/bricks
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/turfs/walls/bricks_tg.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks
	)

/turf/closed/wall/stalker/bricks_yellow
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/turfs/walls/bricks_tg_yellow.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks_yellow
	)

/turf/closed/wall/stalker/bricks_white
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/turfs/walls/bricks_tg_white.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks_white
	)

/turf/closed/wall/stalker/beton_agro
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/turfs/walls/beton_w_tg.dmi'
	icon_state = "beton"
	canSmoothWith = list(/turf/closed/wall/stalker/beton_agro)

/turf/closed/wall/stalker/ship
	name = "hull"
	desc = "A huge chunk of hull"
	icon = 'stalker/icons/turfs/walls/barzha.dmi'
	icon_state = "hull"
	canSmoothWith = list(/turf/closed/wall/stalker/ship)

/turf/closed/wall/stalker/log
	name = "log wall"
	desc = "A log wall"
	icon = 'stalker/icons/turfs/walls/log.dmi'
	icon_state = "log"
	canSmoothWith = list(/turf/closed/wall/stalker/log)

/turf/closed/wall/stalker/store
	name = "concrete wall"
	desc = "A concrete wall"
	icon = 'stalker/icons/turfs/walls/store.dmi'
	icon_state = "store"
	canSmoothWith = list(/turf/closed/wall/stalker/store)

/turf/closed/wall/stalker/superstore
	name = "concrete wall"
	desc = "A concrete wall"
	icon = 'stalker/icons/turfs/walls/superstore.dmi'
	icon_state = "supermart"
	canSmoothWith = list(/turf/closed/wall/stalker/superstore)

/turf/closed/wall/stalker/brickdark
	name = "brick wall"
	desc = "A dark brick wall"
	icon = 'stalker/icons/turfs/walls/brick_walldark.dmi'
	icon_state = "brickwall"
	canSmoothWith = list(/turf/closed/wall/stalker/brickdark)

/turf/closed/wall/stalker/brick
	name = "brick wall"
	desc = "A brick wall"
	icon = 'stalker/icons/turfs/walls/brick_wall.dmi'
	icon_state = "brickwall"
	canSmoothWith = list(/turf/closed/wall/stalker/brick)