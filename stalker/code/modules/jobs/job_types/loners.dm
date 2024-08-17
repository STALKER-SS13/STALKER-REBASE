//--------//
//> JOBS <//
//--------//

/datum/job_department/loners
	department_name = DEPARTMENT_LONERS
	department_bitflags = DEPARTMENT_BITFLAG_LONERS
	department_head = null
	label_class = "Loners"
	ui_color = "#d9d982"

//-- STALKER --//
/datum/job/stalker/stalker
	title = JOB_STALKER
	description = "The Loners are those who aren't part of any faction and inhabit the Zone as nomadic, independent stalkers. Even though they are not a proper faction of their own as per se, they often look out for eachother and are friendly with eachother in order to cohabitate the Zone."
	faction = FACTION_LONERS
	total_positions = -1
	spawn_positions = -1
	config_tag = "LONERS"
	job_flags = STATION_JOB_FLAGS
	supervisors = null
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/loners)
	outfit = /datum/outfit/job/stalker




//-----------//
//> OUTFITS <//
//-----------//


//-- STALKER --//
/datum/outfit/job/stalker
	name = JOB_STALKER
	jobtype = /datum/job/stalker

/datum/outfit/job/stalker/pre_equip()
	..()
	backpack = pick(
		/obj/item/storage/backpack/explorer,
		/obj/item/storage/backpack/satchel/explorer,
		/obj/item/storage/backpack/stalker/civilian,
	)
	backpack_contents = list(
		/obj/item/ammo_box/magazine/stalker/tt = 2,
		/obj/item/flashlight/lantern,
		/obj/item/food/kolbasa,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/gun/ballistic/automatic/pistol/tt
	suit = pick(
		/obj/item/clothing/suit/hooded/kozhanka,
		/obj/item/clothing/suit/hooded/kozhanka/white,
	)
	suit_store = /obj/item/gun/ballistic/automatic/mp5
	ears = null
	shoes = pick(
		/obj/item/clothing/shoes/jackboots,
		/obj/item/clothing/shoes/winterboots,
		/obj/item/clothing/shoes/workboots,
	)
	gloves = pick(
		/obj/item/clothing/gloves/color/brown,
		/obj/item/clothing/gloves/color/black,
		/obj/item/clothing/gloves/fingerless,
	)
	mask = pick(
		/obj/item/clothing/mask/bandana/black,
		/obj/item/cigarette/cigar,
	)
	head = pick(
		/obj/item/clothing/head/beanie/orange,
		/obj/item/clothing/head/flatcap,
		/obj/item/clothing/head/beanie/black,
	)
	l_pocket = null
	r_pocket = /obj/item/knife/tourist
	l_hand = null
	r_hand = null

