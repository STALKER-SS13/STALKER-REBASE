//--------//
//> JOBS <//
//--------//

/datum/job_department/freedom
	department_name = DEPARTMENT_FREEDOM
	department_bitflags = DEPARTMENT_BITFLAG_FREEDOM
	department_head = /datum/job/stalker/freedom/lieutenant
	label_class = "Freedom"
	ui_color = "#4e8d4e"

//-- Freedom --//
/datum/job/stalker/freedom
	title = JOB_FREEDOM
	description = "Freedom are anarchists and daredevils who declare themselves fighters for a free access to the Zone and consequently find themselves in constant conflict with the army, military stalkers and the Duty faction. These so-called freedom warriors believe in sharing all information about the Zone with the rest of the world and challenge the state's monopoly over the Zone's secrets and wonders."
	faction = FACTION_FREEDOM
	total_positions = -1
	spawn_positions = -1
	config_tag = "FREEDOM"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_FREEDOM_LIEUTENANT
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/freedom)
	outfit = /datum/outfit/job/freedom


//-- Freedom Lieutenant --//
/datum/job/stalker/freedom/lieutenant
	title = JOB_FREEDOM_LIEUTENANT
	total_positions = 4
	spawn_positions = 2
	supervisors = "Major"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/freedom_lieutenant




//-----------//
//> OUTFITS <//
//-----------//


//-- Freedom --//
/datum/outfit/job/freedom
	name = JOB_FREEDOM
	jobtype = /datum/job/stalker/freedom

/datum/outfit/job/freedom/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list(
		/obj/item/flashlight/lantern,
		/obj/item/food/konserva/shproti,
		/obj/item/ammo_box/magazine/stalker/m545 = 2,
		/obj/item/food/baton,
		/obj/item/clothing/accessory/patch/freedom,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/tourist
	suit = /obj/item/clothing/suit/hooded/kombez/sentinel_of_freedom
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = pick(
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/mask/bandana/green,
	)
	head = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null


//-- Freedom Lieutenant --//
/datum/outfit/job/freedom_lieutenant
	name = JOB_FREEDOM_LIEUTENANT
	jobtype = /datum/job/stalker/freedom/lieutenant

/datum/outfit/job/freedom_lieutenant/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list(
		/obj/item/food/baton,
		/obj/item/ammo_box/bmag44,
		/obj/item/restraints/handcuffs,
		/obj/item/flashlight/seclite,
		/obj/item/clothing/accessory/patch/freedom,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/hunting
	suit = /obj/item/clothing/suit/hooded/kombez/wind_of_freedom
	suit_store = /obj/item/gun/ballistic/revolver/anaconda
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = /obj/item/clothing/mask/gas
	head = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null