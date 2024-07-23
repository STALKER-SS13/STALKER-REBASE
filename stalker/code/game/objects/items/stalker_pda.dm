/obj/item/stalker_pda
	name = "PDA"
	desc = "A personal data assistant for all of your digital needs."
	icon = 'icons/obj/machines/computer.dmi'
	icon_state = "laptop"
	light_on = FALSE
	interaction_flags_mouse_drop = NEED_HANDS | ALLOW_RESTING
	slot_flags = ITEM_SLOT_ID

	var/mob/living/carbon/human/owner = null
	var/datum/stalker_profile/profile = null
	var/password = null
	var/hacked = 0

/obj/item/stalker_pda/attack_hand(mob/living/user)
	if(src.loc == user)
		attack_self(user)
	else
		..()

/obj/item/stalker_pda/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, ui)
		ui.open()


/obj/item/stalker_pda/ui_data(mob/user)
	var/list/data = list()

	data["username"] = profile.name

	return data


/obj/item/stalker_pda/ui_act(action, params)
	if(..())
		return
	if(action == "X")
		var/X = params["X"]
		return TRUE
	update_icon()