//--------//
//> JOBS <//
//--------//

/datum/job_department/mercenaries
	department_name = DEPARTMENT_MERCENARIES
	department_bitflags = DEPARTMENT_BITFLAG_MERCENARIES
	department_head = /datum/job/stalker/mercenary/boss
	label_class = "Mercenaries"
	ui_color = "#5454c4"

//-- Mercenary --//
/datum/job/stalker/mercenary
	title = JOB_MERCENARY
	description = "Mercenaries are experienced fighters from all walks of life who offer their services as hired soldiers. They are perhaps ex-military soldiers, ex-special forces operators, or possibly underground fighters such as elite resistance/guerrilla troops, a private military company or notorious terrorists of various nations who offer their services to the highest bidder. Because mercenaries have no established code of ethics to abide to, each mercenary group's sense of morality could be quite different from another."
	faction = FACTION_MERCENARIES
	total_positions = -1
	spawn_positions = -1
	config_tag = "MERCENARIES"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_MERCENARY_BOSS
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/mercenaries)
	outfit = /datum/outfit/job/mercenary


//-- Mercenary Boss --//
/datum/job/stalker/mercenary/boss
	title = JOB_MERCENARY_BOSS
	total_positions = 4
	spawn_positions = 2
	supervisors = "Mysterious Contractor"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/mercenary_boss




//-----------//
//> OUTFITS <//
//-----------//


//-- Mercenary --//
/datum/outfit/job/mercenary
	name = JOB_MERCENARY
	jobtype = /datum/job/stalker/mercenary

/datum/outfit/job/mercenary/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list(
		/obj/item/food/konserva/shproti,
		/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 2,
		/obj/item/flashlight/seclite = 1,
		/obj/item/restraints/handcuffs,
		/obj/item/clothing/accessory/patch/mercenaries,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/tourist
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	suit_store = /obj/item/gun/ballistic/automatic/mp5
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	head = /obj/item/clothing/head/costume/ushanka
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null


//-- Mercenary Boss--//
/datum/outfit/job/mercenary_boss
	name = JOB_MERCENARY_BOSS
	jobtype = /datum/job/stalker/mercenary/boss

/datum/outfit/job/mercenary_boss/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list(
		/obj/item/food/baton,
		/obj/item/ammo_box/magazine/stalker/m556x45 = 2,
		/obj/item/flashlight/seclite = 1,
		/obj/item/restraints/handcuffs,
		/obj/item/clothing/accessory/patch/mercenaries,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/knife/hunting
	suit = /obj/item/clothing/suit/assaultmerc
	suit_store = /obj/item/gun/ballistic/automatic/tpc301
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	head = /obj/item/clothing/head/helmet/assaultmerc
	l_pocket = null
	r_pocket = null
	l_hand = null
	r_hand = null