/obj/item/stack/medical/gauze/bint
	desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "bint"
	amount = 2
	max_amount = 2
	self_delay = 10


///>>> PILLS <<<///

//// UPDATE PILLS TO MODERN TG


/obj/item/reagent_containers/pill/iron
	name = "iron pill"
	desc = "Used to accelerate the treatment of blood deficiency."
	icon_state = "pill17"
	list_reagents = list("iron" = 20)
	rename_with_volume = FALSE

/obj/item/reagent_containers/pill/painkiller
	name = "analgesic pill"
	desc = "Used to suppress pain. Causes stomach cramps after ingestion, eat beforehand!"
	icon_state = "pill17"
	list_reagents = list("mine_salve" = 15)
	rename_with_volume = FALSE

/obj/item/storage/pill_bottle/iron
	name = "bottle of iron pills"
	desc = "Contains pills used to counter blood deficiency."

/obj/item/storage/pill_bottle/iron/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/iron(src)

/obj/item/storage/pill_bottle/bicaridine
	name = "bottle of bicaridine pills"
	desc = "Contains pills used to counter brute damage."

/obj/item/storage/pill_bottle/bicaridine/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/bicaridine(src)

/obj/item/storage/pill_bottle/kelotane
	name = "bottle of kelotane pills"
	desc = "Contains pills used to counter burn damage."

/obj/item/storage/pill_bottle/kelotane/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/kelotane(src)

/obj/item/storage/pill_bottle/salbutamol
	name = "bottle of salbutamol pills"
	desc = "Contains pills used to counter after-blood loss tiredness and oxygen deficiency."

/obj/item/storage/pill_bottle/salbutamol/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/salbutamol(src)

/obj/item/storage/pill_bottle/painkiller
	name = "bottle of analgesic pills"
	desc = "Contains pills used to relieve pain."

/obj/item/storage/pill_bottle/painkiller/PopulateContents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/pill/painkiller(src)

/obj/item/reagent_containers/pill/bicaridine
	name = "bicaridine pill"
	desc = "Used to treat brute damage."
	icon_state = "pill17"
	list_reagents = list("bicaridine" = 20)
	rename_with_volume = FALSE

/obj/item/reagent_containers/pill/kelotane
	name = "kelotane pill"
	desc = "Used to treat burn damage."
	icon_state = "pill19"
	list_reagents = list("kelotane" = 20)
	rename_with_volume = FALSE



// Infantry Medkit //

/obj/item/storage/firstaid/ifak
	name = "infantry first-aid kit"
	desc = "An infantry first-aid kit containing all a STALKER needs to stabilize their wounds!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "ifak"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/firstaid/ifak/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 3
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.set_holdable(list(
		/obj/item/stack/medical,
		/obj/item/reagent_containers/pill))

/obj/item/storage/firstaid/ifak/PopulateContents()
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh(src)
	new /obj/item/reagent_containers/pill/stalker/injector/blood(src)
	new /obj/item/reagent_containers/pill/stalker/injector/painkiller(src)
	new /obj/item/reagent_containers/pill/stalker/injector/oxygen(src)
	new /obj/item/reagent_containers/pill/stalker/injector/epinephrine(src)



// Scientific Medkit //

/obj/item/storage/firstaid/ecologists
	name = "scientific medical kit"
	desc = "An advanced doctor's bag filled to the brim with everything a STALKER would every need, want or desire with in the Zone!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "scikit"
	w_class = WEIGHT_CLASS_BULKY
	throw_speed = 1
	throw_range = 4

/obj/item/storage/firstaid/ecologists/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 3
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.set_holdable(list(
		/obj/item/stack/medical,
		/obj/item/reagent_containers/pill/stalker/injector,
		/obj/item/reagent_containers/pill/stalker/pillbottle,
		/obj/item/storage/pill_bottle))

/obj/item/storage/firstaid/ecologists/PopulateContents()
	new /obj/item/reagent_containers/pill/stalker/injector/scimedicalinjector(src)
	new /obj/item/reagent_containers/pill/stalker/injector/scimedicalinjector(src)
	new /obj/item/reagent_containers/pill/stalker/injector/blood(src)
	new /obj/item/reagent_containers/pill/stalker/injector/blood(src)
	new /obj/item/storage/pill_bottle/bicaridine(src)
	new /obj/item/storage/pill_bottle/kelotane(src)
	new /obj/item/storage/pill_bottle/salbutamol(src)
	new /obj/item/storage/pill_bottle/iron(src)
	new /obj/item/storage/pill_bottle/painkiller(src)
	new /obj/item/storage/pill_bottle/charcoal(src)
	new /obj/item/storage/pill_bottle/epinephrine(src)
	new /obj/item/storage/pill_bottle/penacid(src)



//>>> MEDICAL REWORK <<<///

// AI-2
/obj/item/storage/firstaid/ai2
	name = "AI-2 Medkit"
	desc = "A first aid kit designed originally for radiological disaster. A common and affordable medical staple in the Zone!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "aptechkar"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/firstaid/ai2/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 3
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.set_holdable(list(
		/obj/item/reagent_containers/pill/stalker/injector,
		/obj/item/reagent_containers/pill/stalker/pillbottle))

/obj/item/storage/firstaid/ai2/PopulateContents()
	new /obj/item/reagent_containers/pill/stalker/injector/ai2(src)
	new /obj/item/reagent_containers/pill/stalker/pillbottle/radprotectorai2(src)
	new /obj/item/reagent_containers/pill/stalker/pillbottle/antiradai2(src)



// ARMY-MEDKIT //

/obj/item/storage/firstaid/armymedkit
	name = "Army Medkit"
	desc = "A first aid kit designed for combat situations. It contains superior relief to the AI-2, but contains no radiological medication."
	icon = 'stalker/icons/items.dmi'
	icon_state = "aptechkab"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/firstaid/armymedkit/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 3
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.set_holdable(list(
		/obj/item/reagent_containers/pill/stalker/injector,
		/obj/item/reagent_containers/pill/stalker/pillbottle))

/obj/item/storage/firstaid/armymedkit/PopulateContents()
	new /obj/item/reagent_containers/pill/stalker/injector/blood(src)
	new /obj/item/reagent_containers/pill/stalker/injector/armymedicalinjector(src)
	new /obj/item/reagent_containers/pill/stalker/injector/painkiller(src)



// SCIENTIFIC MEDKIT //

/obj/item/storage/firstaid/sciencemedkit
	name = "Scientific Medkit"
	desc = "A first aid kit designed by a company intandem with the Ecologists. This state of the art kit contains everything to save a Stalkers Life!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "aptechkay"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/firstaid/sciencemedkit/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 3
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.set_holdable(list(
		/obj/item/reagent_containers/pill/stalker/injector,
		/obj/item/reagent_containers/pill/stalker/pillbottle))

/obj/item/storage/firstaid/sciencemedkit/PopulateContents()
	new /obj/item/reagent_containers/pill/stalker/injector/scimedicalinjector(src)
	new /obj/item/reagent_containers/pill/stalker/injector/sciradinjector(src)
	new /obj/item/reagent_containers/pill/stalker/injector/oxygen(src)
