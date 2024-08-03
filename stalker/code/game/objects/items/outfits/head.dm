/*-------------*\
|>>>> ARMOR <<<<|
\*-------------*/


// Steel Helmet //
/obj/item/clothing/head/helmet/steel
	name = "Steel Helmet"
	desc = "A desperately outdated steel army helmet without any additions. Provides no protection against anomalies or radiation, but can deflect bullets. This helmet was never particularly popular in the Zone, except for use in brief armed conflicts between factions."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "steelhelmet"
	inhand_icon_state = "steel_helmet"
	armor_type = /datum/armor/light_combat
	flags_inv = HIDEHAIR
	flags_cover = null
	resistance_flags = UNACIDABLE


// SSH-68 //
/obj/item/clothing/head/helmet/ssh
	name = "SSH-68"
	desc = "The SSh-68 replaced the general-army SSh-60 helmet. It differs from its predecessor in greater durability, a large inclination of the front part and short side boards."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "ssh-68"
	inhand_icon_state = "ssh-68"
	armor_type = /datum/armor/light_combat
	flags_inv = HIDEHAIR
	flags_cover = null
	resistance_flags = UNACIDABLE


// TSH-4M //
/obj/item/clothing/head/helmet/tsh
	name = "TSH-4M"
	desc = "This helmet is designed to provide two-way radiotelephone communication in objects with a high level of noise, to protect it from climatic factors and from impacts on structural elements of objects. It has poor protection for the zone's needs, but is very warm."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "TSH-4M"
	inhand_icon_state = "TSH-4M"
	armor_type = /datum/armor/null_hazard
	flags_inv = HIDEHAIR
	flags_cover = null
	resistance_flags = UNACIDABLE|FIRE_PROOF


// Tactical Helmet //
/obj/item/clothing/head/helmet/tactical
	name = "Tactical helmet"
	desc = "French SPECTRA tactical helmet that lacks camouflage. It is not known how it made its way into the Zone. The helmet is designed to provide a squad leader with strategic superiority over the enemy via its many scanners and satellite communications devices, which have not been installed in this particular helmet. Comes with multi-layered Kevlar protection and armored elements to protect electronic components. Includes a respirator and a nightvision device."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "hardhat0_tactical"
	inhand_icon_state = "hardhat0_tactical"
	armor_type = /datum/armor/heavy_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE


// Light Tactical Helmet //
/obj/item/clothing/head/helmet/tactical_light
	name = "Light tactical helmet"
	desc = "A British MK VI model of a tactical helmet that lacks camouflage. It is not known how it made its way into the Zone. Comes with multi-layered Kevlar protection and armored elements to protect electronic components."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "hardhat0_lighttactical"
	inhand_icon_state = "hardhat0_lighttactical"
	armor_type = /datum/armor/medium_combat
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE


// Guardian of Freedom Helmet //
/obj/item/clothing/head/helmet/freedom
	name = "Guardian of Freedom helmet"
	desc = "A British MK VI model of a tactical helmet modified by the Freedom faction. It is not known how it made its way into the Zone. Comes with multi-layered Kevlar protection and armored elements to protect electronic components."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "hardhat0_gof"
	inhand_icon_state = "hardhat0_gof"
	armor_type = /datum/armor/medium_combat
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE


// Mercenary Helmet //
/obj/item/clothing/head/helmet/mercenary
	name = "Mercenary helmet"
	desc = "Schutzhelm 04 made in Switzerland used by the Mercenaries of the Dead City. A high quality model worn mostly by mercenaries. Provides a dependable protection."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "assaultmerc"
	inhand_icon_state = "assault_merc"
	armor_type = /datum/armor/heavy_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE

// Sphera M12 //
/obj/item/clothing/head/helmet/spheram
	name = "Sphera M12"
	desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphera M12 are normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "sphera"
	armor_type = /datum/armor/medium_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE


// SKAT-M9 //
/obj/item/clothing/head/helmet/skat
	name = "SKAT-M9"
	desc = "A slightly advanced version of the Sphera M12. Normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "helmet_skat"
	armor_type = /datum/armor/heavy_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE


// MASKA-1 SCH Helmet //
/obj/item/clothing/head/maska_1
	name = "MASKA-1 SCH helmet"
	desc = "The Maska 1 helmet was in use by the Russian MVD until being largely replaced by the aluminum ZSh-1-2. Now it is more commonly seen being worn by Clear Sky stalkers."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "MASKA-1"
	inhand_icon_state = "MASKA-1"
	armor_type = /datum/armor/medium_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE


// Bucket Helmet //
/obj/item/clothing/head/buckethelmet
	name = "Bucket Helmet"
	desc = "A bucket with two holes to see through. Protects the head from impacts at the cost of looking like an idiot. Come to think of it, maybe this is not the best choice for protection."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "bucket_helmet"
	inhand_icon_state = "bucket_helmet"
	armor_type = /datum/armor/null_combat
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	resistance_flags = FIRE_PROOF




/*----------------*\
|>>>> CLOTHING <<<<|
\*----------------*/

// cap //
/obj/item/clothing/head/gopcap
	name = "cap"
	desc = "Put a fucking bullet in his forehead!"
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "gopcap"
	inhand_icon_state = "gopcap"
	flags_inv = HIDEHAIR


// cap //
/obj/item/clothing/head/soft/jacknoircap
	name = "cap"
	desc = "Who knows how the British made it to Chernobyl?"
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "jacknoirsoft"
	inhand_icon_state = "greysoft"


// Military Beret //
/obj/item/clothing/head/beret_ua
	name = "military beret"
	desc = "A beret made from hard fabric with rubber band on the opening side. It's clean and rigid. Fits well on your skull."
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "beret_ua"