//--------//
//> JOBS <//
//--------//

/datum/job_department/monolith
	department_name = DEPARTMENT_MONOLITH
	department_bitflags = DEPARTMENT_BITFLAG_MONOLITH
	department_head = null
	label_class = "Monolith"
	ui_color = "#987695"


//-- Monolith Soldier --//
/datum/job/stalker/monolith
	title = JOB_MONOLITH
	description = "Deranged Monolith worshipping cultists. They will kill anybody who poses a threat the Monolith or intrudes on their territory."
	faction = FACTION_MONOLITH
	total_positions = -1
	spawn_positions = 9
	config_tag = "MONOLITH"
	job_flags = STATION_JOB_FLAGS
	supervisors = JOB_MONOLITH_PREACHER
	exp_granted_type = EXP_TYPE_CREW
	departments_list = list(/datum/job_department/monolith)
	outfit = null


//-- Monolith Preacher --//
/datum/job/stalker/monolith/preacher
	title = JOB_MONOLITH_PREACHER
	total_positions = 2
	spawn_positions = 1
	supervisors = "Monolith"
	exp_granted_type = EXP_TYPE_CREW
	exp_required_type = EXP_TYPE_CREW
	exp_requirements = 180
	outfit = /datum/outfit/job/freedom_lieutenant