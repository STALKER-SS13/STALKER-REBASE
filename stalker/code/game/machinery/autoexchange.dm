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

	// Input User's PDA Data
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		var/obj/item/stalker_pda/spda = H.wear_id
		if(spda && istype(spda) && spda.profile)
			data["hasId"] = TRUE
			data["uname"] = spda.profile.name
			data["umoney"] = spda.profile.money

	// Input Formatted Items & Categories
	data["categories"] = categories_js
	data["items"] = items_js

	// Input "usr_data" Data
	data["cfilter"] = ""
	if(usr_data.Find("[user]"))
		if(usr_data["[user]"].Find("category"))
			data["cfilter"] = usr_data["[user]"]["category"]
		if(usr_data["[user]"].Find("buying"))
			data["buying"] = usr_data["[user]"]["buying"]
		if(usr_data["[user]"].Find("exchange"))
			data["exchange"] = usr_data["[user]"]["exchange"]

	return data

/obj/structure/autoexchange/ui_close(mob/user)
	. = ..()
	usr_data.Remove("[user]")

/obj/structure/autoexchange/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return

	// Add User
	if(!usr_data.Find("[usr]"))
		usr_data["[usr]"] = list()

	// Select Category & Subcategory
	if(action == "category")
		var/category = params["category"]
		usr_data["[usr]"]["category"] = category

	// Add Item to Purchase List
	if(action == "addBuy")
		var/datum/stalker_loot/loot = text2path(params["item"])

		if(!usr_data["[usr]"].Find("buying"))
			usr_data["[usr]"]["buying"] = list()
		var/list/L = usr_data["[usr]"]["buying"]
		L.Add(list(
			list(
				"path" = "[loot]",
				"name" = initial(loot.name),
				"value" = initial(loot.value)
				)
			))
		if(!usr_data["[usr]"].Find("exchange"))
			usr_data["[usr]"]["exchange"] = 0
		usr_data["[usr]"]["exchange"] += initial(loot.value)

	// Remove Item From Purchase List
	if(action == "removeBuy")
		var/datum/stalker_loot/loot = text2path(usr_data["[usr]"]["buying"][params["itemIndex"]]["path"])
		usr_data["[usr]"]["exchange"] -= initial(loot.value)
		var/list/list/buy_list = usr_data["[usr]"]["buying"]
		buy_list.Cut(params["itemIndex"], params["itemIndex"]+1)

	// Sell and Buy Selected Items
	if(action == "completeTransaction" && ishuman(usr))
		var/mob/living/carbon/human/H = usr

		if(!length(usr_data["[usr]"]["buying"]))
			return

		var/cost = 0
		var/list/obj/item/item_paths = list()
		if(usr_data.Find("[usr]") && usr_data["[usr]"].Find("buying"))
			for(var/item_data in usr_data["[usr]"]["buying"])
				cost += item_data["value"]
				var/datum/stalker_loot/loot = text2path(item_data["path"])
				item_paths.Add(initial(loot.item_path))

		var/obj/item/stalker_pda/spda = H.wear_id
		if(!spda || !istype(spda) || !spda.profile)
			to_chat(H, span_warning("You need a logged in PDA in your ID slot!"))
			return
		var/datum/stalker_profile/sprofile = spda.profile

		if(sprofile.money < cost)
			to_chat(H, span_warning("You do not have enough funds for this purchase!"))
			return

		var/lp_w_class = 0	// Largest purchase weight class
		if(H.back || (length(usr_data["[usr]"]["buying"]) && !H.held_items[H.active_hand_index]))
			var/datum/storage/bas = H.back.atom_storage	// Back atom_storage (bas).
			var/purchase_weight = 0
			var/purchase_slots = 0
			var/oversized_items = 0
			for(var/ipath in item_paths)
				var/obj/item/item = ipath
				var/i_w_class = initial(item.w_class)
				if(!lp_w_class || i_w_class > lp_w_class)
					lp_w_class = i_w_class
				purchase_weight += i_w_class
				if(i_w_class > bas.max_specific_storage)
					oversized_items++
			if(!H.held_items[H.active_hand_index])
				purchase_weight -= lp_w_class
				oversized_items--
			if(oversized_items > 0)
				to_chat(H, span_warning("You have [oversized_items] oversized item[(oversized_items > 0) ? "s" : ""]."))
				return
			if(purchase_weight > (bas.max_total_storage - bas.get_total_weight()))
				to_chat(H, span_warning("Your backpack is too overburdened for this purchase!"))
				return
			if(purchase_slots > (bas.max_slots - bas.real_location.contents.len))
				to_chat(H, span_warning("Your backpack does not have enough slots for this purchase!"))
				return

		sprofile.money -= cost
		usr_data["[usr]"]["buying"] = list()
		for(var/ipath in item_paths)
			var/obj/item/i = new ipath(drop_location())
			if(!H.held_items[H.active_hand_index] && initial(i.w_class) >= lp_w_class)
				H.put_in_hands(i)
			else
				H.back.atom_storage.attempt_insert(i, usr, messages = FALSE)
