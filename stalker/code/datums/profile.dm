/datum/stalker_profile
	var/unique_id
	var/name = null
	var/faction = null
	var/rating = 0
	var/reputation = 0
	var/money = 0
	var/degree = 0

/datum/stalker_profile/proc/generateUID()
	return 0