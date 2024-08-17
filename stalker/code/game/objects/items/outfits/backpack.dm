//-- Tourist --//
/obj/item/storage/backpack/stalker
	name = "backpack"
	desc = "A regular tourist backpack that will provide you with inventory. Can hold 21 items."
	icon = 'stalker/icons/obj/item/clothing/backpack.dmi'
	worn_icon = 'stalker/icons/mob/clothing/backpack.dmi'
	icon_state = "backpack-tourist"
	w_class = WEIGHT_CLASS_HUGE

/obj/item/storage/backpack/stalker/Initialize()
	. = ..()
	atom_storage.max_total_storage = 30
	atom_storage.max_specific_storage = WEIGHT_CLASS_BULKY
	atom_storage.max_slots = 21
	atom_storage.numerical_stacking = TRUE


//-- Civilian --//
/obj/item/storage/backpack/stalker/civilian
	name = "civilian backpack"
	desc = "A regular camping backpack popular among those who just arrived in the Zone. Can hold small amounts of items."
	icon_state = "backpack-civilian"
	slowdown = 0.1

/obj/item/storage/backpack/stalker/civilian/Initialize()
	. = ..()
	atom_storage.max_total_storage = 20


//-- Duty --//
/obj/item/storage/backpack/stalker/duty
	name = "duty backpack"
	desc = "A spacious backpack with lots of pockets, worn by members of the Duty faction."
	icon_state = "backpack-duty"
	slowdown = 0.1

/obj/item/storage/backpack/stalker/duty/Initialize()
	. = ..()
	atom_storage.max_total_storage = 20


//-- Professional --//
/obj/item/storage/backpack/stalker/professional
	name = "professional backpack"
	desc = "A heavy-duty military surplus backpack. You can carry a small supply-room in this. Holds a serious amounts of items. Due to its bulkiness, slows the user down a bit."
	icon_state = "backpack-professional"
	slowdown = 0.1

/obj/item/storage/backpack/stalker/professional/Initialize()
	. = ..()
	atom_storage.max_total_storage = 55


//-- Rucksack --//
/obj/item/storage/backpack/stalker/rucksack
	name = "rucksack"
	desc = "A tourist-targeted duffel bag with enough space to hold a few days of supplies.Can hold a bit more than civlian backpack."
	icon_state = "backpack-rucksack"
	slowdown = 0.3

/obj/item/storage/backpack/stalker/rucksack/Initialize()
	. = ..()
	atom_storage.max_total_storage = 60
	atom_storage.max_slots = 30





//-- Civilian Satchel --//
/obj/item/storage/backpack/satchel/stalker
	name = "tourist bag"
	desc = "A tourist-targeted duffel bag with enough space to hold a few days of supplies.Can hold a bit more than civlian backpack."
	icon = 'stalker/icons/obj/item/clothing/backpack.dmi'
	worn_icon = 'stalker/icons/mob/clothing/backpack.dmi'
	icon_state = "satchel-civilian"
	w_class = WEIGHT_CLASS_HUGE

/obj/item/storage/backpack/satchel/stalker/Initialize()
	. = ..()
	atom_storage.max_total_storage = 18
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL
	atom_storage.max_slots = 21
	atom_storage.numerical_stacking = TRUE