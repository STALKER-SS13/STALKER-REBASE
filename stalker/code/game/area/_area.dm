/area/stalker
	name = "Strange Location"
	icon = 'stalker/icons/area/areas.dmi'
	icon_state = "away"
	has_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	sound_environment = SOUND_ENVIRONMENT_CITY
	requires_power = TRUE
	var/safezone = FALSE		// If this is a safezone, mobs will get the pacifist trait upon entering
	var/day_light_power	= 1		// Multiplier for default daylight power.
	var/day_light_range = 1		// Multiplier for default daylight range.
	var/day_light = FALSE		// Whether turfs in this are produce day light.
	var/blowout = TRUE			// Whether a blowout can occur here.

/area/stalker/Entered(atom/movable/arrived, area/old_area)
	. = ..()
	if(isliving(arrived))
		if(safezone)
			ADD_TRAIT(arrived, TRAIT_PACIFISM, AREA_TRAIT)
			to_chat(arrived, span_notice("You are now in a safe zone. You will not be able to attack other stalkers."))
		if(blowout)
			if(!HAS_TRAIT(arrived, TRAIT_BLOWOUT_SUSCEPTIBLE))
				if(SSblowouts.blowout_stage)
					to_chat(arrived, span_danger(span_big("You are being affected by the emission!")))
			ADD_TRAIT(arrived, TRAIT_BLOWOUT_SUSCEPTIBLE, AREA_TRAIT)

/area/stalker/Exited(atom/movable/gone, direction)
	. = ..()
	if(isliving(gone))
		if(safezone)
			REMOVE_TRAIT(gone, TRAIT_PACIFISM, AREA_TRAIT)
			to_chat(gone, span_notice("You are out of the safe zone. You will be able to attack other stalkers."))
		if(blowout)
			REMOVE_TRAIT(gone, TRAIT_BLOWOUT_SUSCEPTIBLE, AREA_TRAIT)
			if(!HAS_TRAIT(gone, TRAIT_BLOWOUT_SUSCEPTIBLE))
				if(SSblowouts.blowout_stage)
					to_chat(gone, span_notice(span_big("You are now safe from emissions.")))