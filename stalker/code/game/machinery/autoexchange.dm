/obj/structure/autoexchange
	name = "autoexchange"
	desc = "Buy and sell goods!"
	icon = 'stalker/icons/obj/structure/autoexchange.dmi'
	icon_state = "autoexchange"
	density = TRUE
	anchored = TRUE
	layer = OBJ_LAYER
	pass_flags_self = PASSMACHINE | LETPASSTHROW
	interaction_flags_atom = INTERACT_ATOM_ATTACK_HAND | INTERACT_ATOM_UI_INTERACT
	resistance_flags = INDESTRUCTIBLE
	var/faction_lock = null
	var/list/list/categories_js = list()	// list(list("name" = CATEGORYNAME, "subcategories" = list(list("name" = SUBCATEGORYNAME), ...)), ...)
	var/list/list/items_js = list()			// list(list("category" = "category/subcategory", "path" = PATH, "name" = NAME, "value" = VALUE), ...)
	var/list/list/usr_data = list()			// list("USER" = list("category" = CATEGORY, "buying" = list(list("name" = NAME, "value" = VALUE), ...)), ...)

/obj/structure/autoexchange/Initialize()
	. = ..()
	var/list/list/temp_list = list()

	// Create temporary organized category list
	for(var/path in subtypesof(/datum/stalker_loot))
		var/datum/stalker_loot/loot = path
		if(!initial(loot.vendor_available))
			continue
		if(initial(loot.faction) != null && initial(loot.faction) != faction_lock)
			continue

		var/splitpath = splittext("[path]", "/")

		// Create Category
		if(!temp_list.Find(splitpath[4]))
			if(length(splitpath) > 5)
				temp_list[splitpath[4]] = list()
			else
				temp_list.Add(splitpath[4])
				items_js.Add(list(list("category" = "[splitpath[4]]", "path" = "[path]", "name" = initial(loot.name), "value" = initial(loot.value))))

		// Create Sub-category
		if(length(splitpath) > 5)
			if(!temp_list[splitpath[4]].Find(splitpath[5]))
				temp_list[splitpath[4]].Add(splitpath[5])
			items_js.Add(list(list("category" = "[splitpath[4]]/[splitpath[5]]", "path" = "[path]", "name" = initial(loot.name), "value" = initial(loot.value))))

	// Create JS formatted category list
	for(var/cat in temp_list)
		if(temp_list[cat])
			var/list/subcats = list()
			for(var/s in temp_list[cat])
				subcats.Add(list(list("name" = s)))
			categories_js.Add(list(list("name" = cat, "subcategories" = subcats)))
		else
			categories_js.Add(list(list("name" = cat, "subcategories" = null)))



/obj/structure/autoexchange/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Autoexchange")
		ui.open()

/obj/structure/autoexchange/ui_data(mob/user)
	var/list/data = list()
	//data["money"] = "[profile.money]"
	data["categories"] = categories_js
	data["items"] = items_js

	data["cfilter"] = ""
	if(usr_data.Find("[user]"))
		if(usr_data["[user]"].Find("category"))
			data["cfilter"] = usr_data["[user]"]["category"]
		if(usr_data["[user]"].Find("buying"))
			data["buying"] = usr_data["[user]"]["buying"]
	return data

/obj/structure/autoexchange/ui_close(mob/user)
	. = ..()
	usr_data.Remove("[user]")

/obj/structure/autoexchange/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return

	if(!usr_data.Find("[usr]"))
		usr_data["[usr]"] = list()

	if(action == "category")
		var/category = params["category"]
		usr_data["[usr]"]["category"] = category

	if(action == "addItem")
		var/datum/stalker_loot/loot = text2path(params["item"])

		if(!usr_data["[usr]"].Find("buying"))
			usr_data["[usr]"]["buying"] = list()
		var/list/L = usr_data["[usr]"]["buying"]
		L.Add(list(
			list(
				"name" = initial(loot.name),
				"value" = "[initial(loot.value)]"
				)
			))
