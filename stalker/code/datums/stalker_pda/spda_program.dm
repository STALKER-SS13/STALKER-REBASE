/datum/stalker_pda_program
	var/name							// The name that will be displayed on the PDA.
	var/tgui							// The TGUI which is to be used by this program.
	var/faction = null					// Null factions means all have access to this program.
	var/obj/item/stalker_pda/PDA = null	// The PDA which owns this program.

/datum/stalker_pda_program/ui_state()
	return GLOB.always_state

/datum/stalker_pda_program/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, tgui)
		ui.open()

/datum/stalker_pda_program/ui_act(action, list/params, datum/tgui/ui)
	. = ..()
	if(.)
		return
	if(action == "return")
		ui.close()
		if(usr)
			ui.close()
			PDA.active_program = null
			PDA.ui_interact(usr)
		return TRUE



/*
/datum/stalker_pda_program/proc/get_user()
	if(PDA && PDA.loc && ishuman(PDA.loc))
		return PDA.loc
	else
		return null

/datum/stalker_pda_program/proc/open()
	var/mob/living/carbon/human/user = get_user()
	if(user)
		ui_interact(user)

/datum/stalker_pda_program/ui_data(mob/user)
	var/list/data = list()

	return data
*/