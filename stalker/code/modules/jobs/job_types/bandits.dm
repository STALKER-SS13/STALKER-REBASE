//--------//
//> JOBS <//
//--------//

/datum/job_department/bandits
	department_name = DEPARTMENT_BANDITS
	department_bitflags = DEPARTMENT_BITFLAG_BANDITS
	department_head = /datum/job/stalker/bandit/boss
	label_class = "Bandits"
	ui_color = "#61553d"

//-- Bandit --//
/datum/job/stalker/bandit
	title = JOB_BANDIT
	description = "Bandits are a group of mostly ex-criminals who came in the Zone either to escape from the law, trade weapons or make money. They are a force of chaos within the Zone, and are essentially bad people who do bad things to good people."
	faction = FACTION_BANDITS
	total_positions = -1
	spawn_positions = -1
	config_tag = "BANDITS"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_BANDIT_BOSS
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/bandits)
	outfit = /datum/outfit/job/bandit


//-- Bandit Bartender --//
/datum/job/stalker/bandit/bartender
	title = JOB_BANDIT_BARTENDER
	total_positions = 2
	spawn_positions = 1
	supervisors = JOB_BANDIT_BOSS
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/bandit_bartender


//-- Bandit Boss --//
/datum/job/stalker/bandit/boss
	title = JOB_BANDIT_BOSS
	total_positions = 1
	spawn_positions = 1
	supervisors = "Sultan"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/bandit_boss





//-----------//
//> OUTFITS <//
//-----------//


//-- Bandit --//
/datum/outfit/job/bandit
	name = JOB_BANDIT
	jobtype = /datum/job/stalker/bandit

/datum/outfit/job/bandit/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker
	backpack_contents = list(
		/obj/item/food/konserva/shproti,
		/obj/item/flashlight/lantern,
		/obj/item/clothing/accessory/patch/bandits
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = pick(
		/obj/item/knife/tourist,
		/obj/item/knife/butcher,
		/obj/item/crowbar/large,
	)
	suit = /obj/item/clothing/suit/hooded/kozhanka/bandit
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = pick(
		/obj/item/cigarette/cigar/cohiba,
		/obj/item/clothing/mask/bandana/skull,
		/obj/item/clothing/mask/bandana/black,
		/obj/item/clothing/mask/animal/pig,
		/obj/item/clothing/mask/balaclava)
	head = null
	l_pocket = null
	r_pocket = pick(
		/obj/item/gun/ballistic/automatic/pistol/pm,
		/obj/item/gun/ballistic/automatic/pistol/pb1s,
	)
	l_hand = null
	r_hand = null


//-- Bandit Bartender --//
/datum/outfit/job/bandit_bartender
	name = JOB_BANDIT_BARTENDER
	jobtype = /datum/job/stalker/bandit/bartender

/datum/outfit/job/bandit_bartender/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker
	backpack_contents = list(
		/obj/item/food/konserva/shproti,
		/obj/item/ammo_box/b12x70 = 2,
		/obj/item/flashlight/seclite,
		/obj/item/clothing/accessory/patch/bandits,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = /obj/item/gun/ballistic/shotgun/bm16
	suit = /obj/item/clothing/suit/hooded/kozhanka/bandit
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = null
	head = /obj/item/clothing/head/hats/bowler
	l_pocket = null
	r_pocket = /obj/item/reagent_containers/cup/glass/bottle/vodka
	l_hand = null
	r_hand = null


//-- Bandit Boss --//
/datum/outfit/job/bandit_boss
	name = JOB_BANDIT_BOSS
	jobtype = /datum/job/stalker/bandit/boss

/datum/outfit/job/bandit_boss/pre_equip()
	..()
	back = /obj/item/storage/backpack/stalker
	backpack_contents = list(
		/obj/item/food/konserva/shproti,
		/obj/item/ammo_box/magazine/stalker/sc45 = 2,
		/obj/item/flashlight/seclite,
		/obj/item/clothing/accessory/patch/bandits,
	)
	id_trim = /obj/item/stalker_pda
	uniform = STALKER_UNIFORM
	belt = pick(
		/obj/item/knife/butcher,
		/obj/item/crowbar/large,
	)
	suit = /obj/item/clothing/suit/hooded/kozhanka/bandit/chainmail
	ears = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	mask = pick(
		/obj/item/cigarette/cigar/cohiba,
		/obj/item/clothing/mask/bandana/skull,
		/obj/item/clothing/mask/bandana/black,
		/obj/item/clothing/mask/animal/pig,
		/obj/item/clothing/mask/balaclava)
	l_pocket = null
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/sip
	l_hand = null
	r_hand = null