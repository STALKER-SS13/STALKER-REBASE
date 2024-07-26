GLOBAL_LIST_EMPTY(stalker_profiles)

/datum/stalker_profile
	var/unique_id
	var/name
	var/list/faction
	var/experience
	var/money
	var/mob/living/carbon/human/owner

/datum/stalker_profile/New(user)
	if(istype(user, /mob/living/carbon/human))
		owner = user
	if(!owner || !owner.client || !owner.client.ckey)
		return
	update_profile()
	experience = 0
	money = 0
	unique_id = "[name]-[owner.client.ckey]"

/datum/stalker_profile/proc/update_profile()
	name = owner.real_name
	faction = owner.faction
	GLOB.stalker_profiles.Add(src)
	return 0