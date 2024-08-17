//--------//
//> JOBS <//
//--------//

/datum/job_department/duty
	department_name = DEPARTMENT_DUTY
	department_bitflags = DEPARTMENT_BITFLAG_DUTY
	department_head = /datum/job/stalker/duty/lieutenant
	label_class = "Duty"
	ui_color = "#aa3131"

//-- Duty --//
/datum/job/stalker/duty
	title = JOB_DUTY
	description = "Duty is a paramilitary clan of stalkers operating in the Zone with members living according to a code. Their ranks are composed of ex-military and stalkers who wish to bring order to the Zone and keep it from spreading further. They are contrasted by other factions, such as Freedom or the Ecologists, who see the Zone as a miracle. Its members consider protecting the outside world from the Zone's dangers their primary objective."
	faction = FACTION_DUTY
	total_positions = -1
	spawn_positions = -1
	config_tag = "DUTY"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_DUTY_LIEUTENANT
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/duty)
	outfit = /datum/outfit/job/duty


//-- Duty Bartender --//
/datum/job/stalker/duty/bartender
	title = JOB_DUTY_BARTENDER
	total_positions = 1
	spawn_positions = 1
	supervisors = JOB_DUTY_LIEUTENANT
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/duty_bartender


//-- Duty Lieutenant --//
/datum/job/stalker/duty/lieutenant
	title = JOB_DUTY_LIEUTENANT
	total_positions = 4
	spawn_positions = 2
	supervisors = "Major"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/duty_lieutenant




//-----------//
//> OUTFITS <//
//-----------//


//-- Duty --//
/datum/outfit/job/duty
	name = JOB_DUTY
	jobtype = /datum/job/stalker/duty

/datum/outfit/job/duty/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/duty
	backpack_contents = list(
		/obj/item/food/konserva/shproti,
		/obj/item/flashlight/lantern,
		/obj/item/ammo_box/b545,
		/obj/item/ammo_box/magazine/stalker/m545 = 2,
		/obj/item/clothing/accessory/patch/duty,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/tourist
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	mask = null
	head = pick(
		/obj/item/clothing/head/beret,
		/obj/item/clothing/head/costume/ushanka,
	)
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null


//-- Duty Bartender --//
/datum/outfit/job/duty_bartender
	name = JOB_DUTY_BARTENDER
	jobtype = /datum/job/stalker/duty/bartender

/datum/outfit/job/duty_bartender/pre_equip()
	..()
	back = null
	backpack_contents = null
	id_trim = /obj/item/stalker_pda
	uniform = /obj/item/clothing/under/suit/sidor
	belt = /obj/item/gun/ballistic/automatic/pistol/cora
	suit = /obj/item/clothing/suit/jacket/sidor
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	ears = null
	shoes = /obj/item/clothing/shoes/sneakers/black
	gloves = null
	mask = null
	head = null
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null


//-- Duty Lieutenant --//
/datum/outfit/job/duty_lieutenant
	name = JOB_DUTY_LIEUTENANT
	jobtype = /datum/job/stalker/duty/lieutenant

/datum/outfit/job/duty_lieutenant/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/duty
	backpack_contents = list(
		/obj/item/food/baton,
		/obj/item/ammo_box/bmag44,
		/obj/item/restraints/handcuffs,
		/obj/item/flashlight/seclite,
		/obj/item/clothing/accessory/patch/duty,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/hunting
	suit = /obj/item/clothing/suit/psz9d
	suit_store = /obj/item/gun/ballistic/revolver/anaconda
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/bandana/black
	head = /obj/item/clothing/head/helmet/sphera
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null