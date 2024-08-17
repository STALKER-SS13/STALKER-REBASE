/*-----------------*\
|>>>> GAS MASKS <<<<|
\*-----------------*/


// Stalker Gas Mask //
/obj/item/clothing/mask/gas/stalker
	name = "gas mask"
	desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by rookies and veterans of all factions due to its universal functionality. Does not provide any physical protection."
	icon = 'stalker/icons/obj/item/clothing/mask.dmi'
	worn_icon = 'stalker/icons/mob/clothing/mask.dmi'
	icon_state = "gasmask_stalker"
	armor_type = /datum/armor/null_hazard
	flags_inv = HIDEHAIR
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	resistance_flags = UNACIDABLE|FIRE_PROOF
	tint = 1


// GP-4 Gas Mask //
/obj/item/clothing/mask/gas/stalker/gp4
	name = "GP-4 gas mask"
	desc = "The Soviet GP-4 is another mask in the Soviet GP series. It was made to be issued to civilians due to the rising panic about the Cold War. This model is extremely common in the Zone and is favored by many stalkers due to its relative reliability and light weight."
	icon_state = "gasmask_gp4"


// GP-5 Gas Mask //
/obj/item/clothing/mask/gas/stalker/gp5
	name = "GP-5 gas mask"
	desc = "Similar to the GP-4, this mask incudes an ShM-62 filter. Unforunately, this filter is dosed with asbestos and the casing is known to degrade lead into the filter. If it's your only option, look for a filter using activated charcoal."
	icon_state = "gasmask_gp5"


// Mercenary Gas Mask //
/obj/item/clothing/mask/gas/stalker/mercenary
	name = "gas mask"
	desc = "A western plastic and rubber gas mask, filters out air from radioactive particles and poisonous substances. Used by mercenaries by standard. Does not provide any physical protection whatsoever."
	icon_state = "gasmask_merc"


// Respirator //
/obj/item/clothing/mask/gas/stalker/respirator
	name = "respirator"
	desc = "A very old and outdated respiration that still functions somehow. Can provide basic protection, but wont do wonders. Its better than nothing"
	icon_state = "respirator"


// Renegade Ballistic Mask //
/obj/item/clothing/mask/gas/stalker/renegademask
	name = "renegade ballistic mask"
	desc = "A mask of lightweight but durable material that gives you a chance to survive a stray bullet to the face. It has two non-bullet holes. The mask looks intimidating, and very solid."
	icon_state = "renegade_mask"
