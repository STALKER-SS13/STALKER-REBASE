/mob/living/Destroy()
	if(HAS_TRAIT(src, TRAIT_BLOWOUT_SUSCEPTIBLE))
		SSblowouts.blowout_affected_mobs -= src
	return ..()

/mob/living/register_init_signals()
	. = ..()
	RegisterSignal(src, SIGNAL_ADDTRAIT(TRAIT_BLOWOUT_SUSCEPTIBLE), PROC_REF(on_blowout_susceptible_trait_gain))
	RegisterSignal(src, SIGNAL_ADDTRAIT(TRAIT_BLOWOUT_SUSCEPTIBLE), PROC_REF(on_blowout_susceptible_trait_loss))

/// Called when [TRAIT_BLOWOUT_SUSCEPTIBLE] is added to the mob.
/mob/living/proc/on_blowout_susceptible_trait_gain(datum/source)
	SIGNAL_HANDLER
	SSblowouts.blowout_affected_mobs += src
	if(SSblowouts.blowout_stage)
		on_blowout_start()
	RegisterSignal(src, COMSIG_BLOWOUT_START, PROC_REF(on_blowout_start))
	RegisterSignal(src, COMSIG_BLOWOUT_END, PROC_REF(on_blowout_end))

/// Called when [TRAIT_BLOWOUT_SUSCEPTIBLE] is removed from the mob.
/mob/living/proc/on_blowout_susceptible_trait_loss(datum/source)
	SIGNAL_HANDLER
	SSblowouts.blowout_affected_mobs -= src
	UnregisterSignal(src, COMSIG_BLOWOUT_START)
	UnregisterSignal(src, COMSIG_BLOWOUT_END)
	on_blowout_end()

/// Adds the funny client colour
/mob/living/proc/on_blowout_start()
	SIGNAL_HANDLER

	add_client_colour(/datum/client_colour/blowout)

/// Removes the funny client colour
/mob/living/proc/on_blowout_end()
	SIGNAL_HANDLER

	remove_client_colour(/datum/client_colour/blowout)