/obj/item/stalker_pda
	name = "\improper STALKER PDA"
	desc = "A personal data assistant for all of your digital needs."
	icon = 'stalker/icons/obj/item/devices.dmi'
	icon_state = "kpk_off"
	light_on = FALSE
	interaction_flags_mouse_drop = NEED_HANDS | ALLOW_RESTING
	slot_flags = ITEM_SLOT_ID

	var/mob/living/carbon/human/owner = null
	var/datum/stalker_profile/profile = null
	var/password = null
	var/linked = FALSE
	var/charge = 1000
	var/active = FALSE
	var/datum/stalker_pda_program/list/available_programs = list()
	var/datum/stalker_pda_program/active_program

/obj/item/stalker_pda/proc/set_owner(var/mob/living/carbon/human/_owner)
	owner = _owner
	if(!owner.stalker_profile)  ///------------------------------------------ temporary, move to where human spawns
		owner.stalker_profile = new /datum/stalker_profile(owner)
	profile = owner.stalker_profile

	for(var/program in available_programs)
		qdel(program)
	available_programs = list()

	for(var/path in subtypesof(/datum/stalker_pda_program))
		var/datum/stalker_pda_program/typed_path = path
		if(initial(typed_path.faction) == null || (initial(typed_path.faction) in owner.faction))
			var/datum/stalker_pda_program/program = new path()
			program.PDA = src
			available_programs.Add(program)

/obj/item/stalker_pda/proc/toggle_active()
	active = !active
	var/toggled = TRUE
	if(active && charge <= 0)
		active = FALSE
		toggled = FALSE
	icon_state = "kpk_[active ? "on" : "off"]"
	return toggled

/obj/item/stalker_pda/attack_self(mob/living/user)
	if(!active && !toggle_active())
		return
	if(owner != user)
		if(!ishuman(user))
			return
		if(!linked)
			set_owner(user)
			linked = TRUE
			to_chat(user, span_notice("You login too \the [src]."))
		else
			to_chat(user, span_notice("\The [src] displays, \"CREDENTIALS INCORRECT\"."))
			return
	if(active_program)
		active_program.ui_interact(user)
		return
	..()
/*
/obj/item/stalker_pda/attack_hand(mob/living/user)
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.wear_id == src)
			return attack_self(user)
	..()
*/
/obj/item/stalker_pda/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "StalkerPDA")
		ui.open()

/obj/item/stalker_pda/ui_data(mob/user)
	var/list/data = list()

	data["name"] = profile.name
	data["faction"] = "[profile.faction[1]]"
	data["experience"] = "[profile.experience]"
	data["money"] = "[profile.money]"

	var/list/programs = list()
	for(var/datum/stalker_pda_program/program in available_programs)
		programs.Add(list(list("name" = program.name)))
	data["programs"] = programs

	return data

/obj/item/stalker_pda/ui_act(action, list/params, datum/tgui/ui)
	. = ..()
	if(.)
		return
	if(action == "openProgram")
		var/name = params["program"]
		for(var/O in available_programs)
			var/datum/stalker_pda_program/program = O
			if(program.name == name)
				ui.close()
				active_program = program
				active_program.ui_interact(usr)
				return TRUE
		return FALSE