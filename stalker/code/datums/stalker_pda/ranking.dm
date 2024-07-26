/datum/stalker_pda_program/ranking
	name = "Rankings"
	tgui = "StalkerPDA_Ranking"

/datum/stalker_pda_program/ranking/ui_data(mob/user)
	var/list/data = list()

	var/list/profiles = list()
	for(var/datum/stalker_profile/profile in GLOB.stalker_profiles)
		profiles.Add(list(list(
			"name" = profile.name,
			"faction" = profile.faction[1],
			"experience" = profile.experience,
			"money" = profile.money,
			)))
	data["profiles"] = profiles

	return data

/*
/datum/stalker_pda_program/ranking/ui_data(mob/user)
	. = ..()
	var/list/profiles = list()
	for(var/datum/stalker_profile/profile in GLOB.stalker_profiles)
		profiles.Add(list(list(
			"name" = profile.name,
			"faction" = profile.faction,
			"experience" = profile.experience,
			"money" = profile.money,
			)))
	.["profiles"] = profiles
*/