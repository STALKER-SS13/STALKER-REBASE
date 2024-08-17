//--------//
//> JOBS <//
//--------//

/datum/job_department/military
	department_name = DEPARTMENT_MILITARY
	department_bitflags = DEPARTMENT_BITFLAG_MILITARY
	department_head = null
	label_class = "Military"
	ui_color = "#227722"


//-- Military Soldier --//
/datum/job/stalker/military
	title = JOB_MILITARY
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	faction = FACTION_MILITARY
	total_positions = -1
	spawn_positions = -1
	config_tag = "MILITARY"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_MILITARY_COMMANDER
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/military)
	outfit = null


//-- Spetsnaz --//
/datum/job/stalker/military/spetsnaz
	title = JOB_MILITARY_SPETSNAZ
	total_positions = 3
	spawn_positions = 2
	supervisors = JOB_MILITARY_COMMANDER
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/freedom_lieutenant


//-- Military Commander --//
/datum/job/stalker/military/commander
	title = JOB_MILITARY_COMMANDER
	total_positions = 2
	spawn_positions = 1
	supervisors = "High Command"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/freedom_lieutenant