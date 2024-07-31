/obj/item/storage/belt/artifact
	name = "artifact belt"
	desc = "Special belt for artifacts."
	icon_state = "artifactbelt"
	worn_icon_state = "utility"

/obj/item/storage/belt/artifact/Initialize(mapload)
	. = ..()
	create_storage(
		storage_type = /datum/storage/stalker_artifact_belt,
		max_specific_storage = WEIGHT_CLASS_NORMAL,
		max_total_storage = 5,
		canhold = list(
			/obj/item/artifact
		),
	)

/obj/item/storage/belt/artifact/small
	name = "small artifact belt"
	desc = "Special belt for artifacts."
	icon_state = "artifactbeltsmall"
	worn_icon_state = "artifacts"

/obj/item/storage/belt/artifact/small/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 2



/*------------------------*\
|> Artifact Storage Datum <|
\*------------------------*/



/datum/storage/stalker_artifact_belt


/datum/storage/stalker_artifact_belt/handle_enter(datum/source, obj/item/arrived)
	. = ..()

	if(istype(arrived, /obj/item/artifact))
		START_PROCESSING(SSobj, arrived)

/datum/storage/stalker_artifact_belt/handle_exit(datum/source, obj/item/arrived)
	. = ..()

	if(istype(arrived, /obj/item/artifact))
		STOP_PROCESSING(SSobj, arrived)