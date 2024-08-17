/*----------------------*\
|>>>> HOODED JACKETS <<<<|
\*----------------------*/


// Leather Jacket //
/obj/item/clothing/suit/hooded/kozhanka
	name = "leather jacket"
	desc = "Common garb of a novice stalker. It won’t save you from bullets or anomalies, but it’s still better than being naked."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "kozhanka"
	inhand_icon_state = "det_suit"
	flags_inv = null
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE
	hoodtype = /obj/item/clothing/head/hooded/kozhanka
	allowed = list(
		/obj/item/gun/ballistic,
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/restraints/handcuffs,
		/obj/item/flashlight/seclite,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/lighter,
		/obj/item/knife,
	)

/obj/item/clothing/head/hooded/kozhanka
	name = "jacket hood"
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "winterhood_kozhanka"
	flags_inv = HIDEHAIR|HIDEEARS
	flags_cover = null
	resistance_flags = UNACIDABLE


// Winter Jacket //
/obj/item/clothing/suit/hooded/kozhanka/winter
	name = "winter jacket"
	icon_state = "kozhanka_white"
	inhand_icon_state = "labcoat"
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/winter

/obj/item/clothing/head/hooded/kozhanka/winter
	icon_state = "winterhood_kozhanka"


// White Jacket //
/obj/item/clothing/suit/hooded/kozhanka/white
	name = "white jacket"
	icon_state = "kozhanka_winter"
	inhand_icon_state = "labcoat"
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/white

/obj/item/clothing/head/hooded/kozhanka/white
	icon_state = "winterhood_kozhanka_wh"


// Duty Jacket //
/obj/item/clothing/suit/hooded/kozhanka/duty
	name = "duty jacket"
	icon_state = "kozhanka_duty"
	inhand_icon_state = "labcoat"
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/duty

/obj/item/clothing/head/hooded/kozhanka/duty
	icon_state = "winterhood_duty"


// Bandit Jacket //
/obj/item/clothing/suit/hooded/kozhanka/bandit
	name = "bandit jacket"
	desc = "Traditional bandit clothing - a leather jacket with armor pieces sewed in. The protection it provides is completely inadequate for the harsh conditions of the Zone."
	icon_state = "banditjacket"
	inhand_icon_state = "ro_suit"
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/bandit

/obj/item/clothing/head/hooded/kozhanka/bandit
	icon_state = "winterhood_banditjacket"


// Chainmail Jacket //
/obj/item/clothing/suit/hooded/kozhanka/bandit/chainmail
	name = "bandit jacket"
	desc = "Traditional bandit clothing - a leather jacket with armor pieces sewed in. The protection it provides is completely inadequate for the harsh conditions of the Zone."
	armor_type = /datum/armor/light_combat
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/bandit/chainmail

/obj/item/clothing/head/hooded/kozhanka/bandit/chainmail
	armor_type = /datum/armor/light_combat


// Bandit Coat //
/obj/item/clothing/suit/hooded/kozhanka/bandit_coat
	icon_state = "banditcoat"
	desc = "A regular leather trench coat. Does not protect wearer against any dangers in the zone, but it happens to look aesthetically superior."
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/bandit_coat

/obj/item/clothing/head/hooded/kozhanka/bandit_coat
	icon_state = "winterhood_banditcoat"


// Brown Bandit Coat //
/obj/item/clothing/suit/hooded/kozhanka/bandit_coat/brown
	icon_state = "banditcoat_brown"
	desc = "A regular brown leather trench coat. Does not protect wearer against any dangers in the zone, but it happens to look aesthetically superior."
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/bandit_coat/brown

/obj/item/clothing/head/hooded/kozhanka/bandit_coat/brown
	icon_state = "winterhood_banditcoatbrown"


// Anomaly Jacket //
/obj/item/clothing/suit/hooded/kozhanka/anomaly
	name = "anomaly jacket"
	desc = "This jacket was removed from the corpse of one of the stalkers who died in the 'jelly' anomaly. After lying in an anomaly for a long time, the jacket has acquired the ability to speed up the wearer's metabolism."
	armor_type = /datum/armor/light_hazard
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/anomaly

/obj/item/clothing/head/hooded/kozhanka/anomaly
	armor_type = /datum/armor/light_hazard


// Renegade Coat //
/obj/item/clothing/suit/hooded/kozhanka/renegade
	name = "renegade coat"
	desc = "A tan trenchcoat with light armor plates and shoulder pads strapped onto it. Apart of looking cool, it provides light protection against bullets and melee attacks. Has a very minor anti-radiation & Biological protection. Better than nothing."
	icon_state = "renegadecoat"
	inhand_icon_state = "renegadecoat_t"
	armor_type = /datum/armor/null_combat
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/renegade

/obj/item/clothing/head/hooded/kozhanka/renegade
	icon_state = "winterhood_renegade"
	armor_type = /datum/armor/null_combat


// Tan Coat //
/obj/item/clothing/suit/hooded/kozhanka/tan
	name = "tan coat"
	desc = "A tan trenchcoat with light armor plates and shoulder pads strapped on it. Apart of looking cool, it provides light protection against bullets and melee attacks. Has a very minor anti-radiation & Biological protection. Better than nothing."
	icon_state = "tancoat"
	inhand_icon_state = "tancoat_t"
	armor_type = /datum/armor/null_combat
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/tan

/obj/item/clothing/head/hooded/kozhanka/tan
	icon_state = "winterhood_tancoat"
	armor_type = /datum/armor/null_combat


// Ghillie Suit //
/obj/item/clothing/suit/hooded/kozhanka/ghillie
	name = "ghillie suit"
	desc = "A ghillie suit is a type of camouflage clothing designed to resemble the background environment such as foliage, snow or sand. Such suits rarely come into use in the Zone due to their general bulkiness and incredible uncomfortability, yet they're especially valued by sniper due to their ability to hide you among the grass."
	icon_state = "ghillie"
	inhand_icon_state = "ghillie"
	hoodtype = /obj/item/clothing/head/hooded/kozhanka/ghillie

/obj/item/clothing/head/hooded/kozhanka/ghillie
	icon_state = "ghillie"






/*--------------*\
|>>>> KOMBEZ <<<<|
\*--------------*/


// Sunrise //
/obj/item/clothing/suit/hooded/kombez
	name = "Sunrise"
	desc = "A gold standard suit of every Loner. Most common medium-grade suit of every Loner. Provides solid protection from what zone has to offer including bullets and melee. A decent choice for a zone dweller. "
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "kombez"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/light_combat
	hoodtype = /obj/item/clothing/head/hooded/kombez
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE

/obj/item/clothing/head/hooded/kombez
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "winterhood_kombez"
	armor_type = /datum/armor/light_combat
	flags_inv = HIDEEARS|HIDEHAIR


// Mercenary //
/obj/item/clothing/suit/hooded/kombez/mercenary
	name = "mercenary armor"
	desc = "Stalker suit from the Merc faction. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "mercenary"
	inhand_icon_state = "syndicate-black"
	armor_type = /datum/armor/light_combat
	hoodtype = /obj/item/clothing/head/hooded/kombez/mercenary

/obj/item/clothing/head/hooded/kombez/mercenary
	icon_state = "winterhood_mercenary"
	armor_type = /datum/armor/light_combat


// Wind of Freedom //
/obj/item/clothing/suit/hooded/kombez/wind_of_freedom
	name = "Wind of Freedom"
	desc = "This stalker bodysuit with reinforced body armor made by Freedom craftsmen represents a good compromise between combat and anomaly protection. The built-in body armor comprises armor plating and ten Kevlar layers, capable of stopping a pistol bullet. The suit uses the relatively expensive Sovereign compound for anomaly protection. Comes with an artifact container."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "wind_of_freedom"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/medium_combat
	hoodtype = /obj/item/clothing/head/hooded/kombez/wind_of_freedom
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = UNACIDABLE

/obj/item/clothing/head/hooded/kombez/wind_of_freedom
	icon_state = "winterhood_wind_of_freedom"
	armor_type = /datum/armor/medium_combat


// Sentinel of Freedom //
/obj/item/clothing/suit/hooded/kombez/sentinel_of_freedom
	name = "Sentinel of Freedom"
	desc = "This lightweight stalker bodysuit is made by Freedom craftsmen. The suit's fabric is treated with Horizon, a special solution developed by the faction by trial and error to increase resistance to anomalies. Like the Sunrise suit, the Wind of Freedom comes with built-in body armor and artifact containers."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "sentinel"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/light_combat
	hoodtype = /obj/item/clothing/head/hooded/kombez/sentinel_of_freedom
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = UNACIDABLE

/obj/item/clothing/head/hooded/kombez/sentinel_of_freedom
	icon_state = "winterhood_sentinel"
	armor_type = /datum/armor/light_combat

/obj/item/clothing/suit/hooded/kombez/ps5m
	name = "PS5-M"
	desc = "This modern version of the Duty bodysuit is better suited for stalker recruits who are used to lightweight suits. Unlike the PSZ series, this suit provides good protection against anomalies while also being capable of stopping a pistol bullet. The suit cannot be modified with an artifact container, but may be upgraded with a combat support system instead."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "ps5m"
	inhand_icon_state = "syndicate-black-red"
	armor_type = /datum/armor/light_combat
	hoodtype = /obj/item/clothing/head/hooded/kombez/ps5m
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = UNACIDABLE

/obj/item/clothing/head/hooded/kombez/ps5m
	icon_state = "winterhood_ps5m"
	armor_type = /datum/armor/light_combat



/*---------------*\
|>>>> JACKETS <<<<|
\*---------------*/


// Leather Jacket //
/obj/item/clothing/suit/kozhanka
	name = "leather jacket"
	desc = "A bare leather jacket from outside of the zone. Has no beneficial properties whatsoever apart of protection from basic elements."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "tourist1"
	inhand_icon_state = "det_suit"
	flags_inv = null
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = UNACIDABLE


// Green Winter Jacket //
/obj/item/clothing/suit/kozhanka/tourist
	name = "green winter coat"
	desc = "Thick winter coat from outside of the zone. Does'nt have any properties usable in the zone."
	icon_state = "tourist2"


// Gorka Jacket //
/obj/item/clothing/suit/kozhanka/gorka
	name = "gorka jacket"
	desc = "A gorka jacket in good condition. Apart of protecting you from the elements of nature, it does not hold any beneficial properties from the zone at all."
	icon_state = "tourist3"

// Sidorovich's Vest //
/obj/item/clothing/suit/jacket/sidor
	name = "old vest"
	desc = "A kosher vest made of chimera leather. Provides absolutely no protection from the zone. "
	icon_state = "sidor_vest"
	inhand_icon_state = "det_suit"
	body_parts_covered = CHEST
	cold_protection = CHEST
	heat_protection = CHEST
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT




/*-------------*\
|>>>> ARMOR <<<<|
\*-------------*/


// Army Body Armor //
/obj/item/clothing/suit/army
	name = "military body armor"
	desc = "Standard army body armor issued to all military personnel guarding the perimeter of the Zone. Provides good protection against bullets and melee weapons, absolutely unsuitable for forays deep into the Zone, since it has almost no protection against the effects of anomalous fields."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "army_armor1"
	inhand_icon_state = "armor"
	armor_type = /datum/armor/light_combat
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE

/obj/item/clothing/suit/army/New()
	..()
	icon_state = "army_armor[rand(1, 2)]"


// Mercenary Heavy Armor //
/obj/item/clothing/suit/assaultmerc
	name = "mecenary heavy armor"
	desc = "Heavy armor used by mercenaries, which includes a multi-layered ballistic vest with collar and forearm protectors, as well as a pair of neoprene-plastic bracers and greaves to protect against local bites. You are not sure if such a suit will protect well against anomalies, but for the conditions of the zone, it is difficult to find better combat armor. "
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "assaultmerc"
	inhand_icon_state = "syndicate-black"
	armor_type = /datum/armor/heavy_combat
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE


// PSZ-9D //
/obj/item/clothing/suit/psz9d
	name = "PSZ-9D"
	desc = "Produced by one of Kiev's defence research institutes and commissioned by the Duty faction. It is as simple and reliable as the standard PSZ-9 model, but due to the new materials, it provides good protection from various harmful impacts, including firearm damage. The vest still needs some work because it has no breathing protection system."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "psz9d"
	inhand_icon_state = "syndicate-black"
	armor_type = /datum/armor/heavy_combat
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE

// 6B2 //
/obj/item/clothing/suit/sixb2
	name = "6B2"
	desc = "The 6B2 bulletproof vest was developed at the request of the USSR Ministry of Defense in 1980, after which it was supplied to the Soviet Army. The vest was used in all branches of the Soviet Army during the Afghan War of 1979-1989, and still remains in service in some post-Soviet states. The bulletproof vest has an average area of protection, has a height adjustment in the shoulder section, and is fastened on the user with Velcro."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "6b2"
	inhand_icon_state = "6b2"
	armor_type = /datum/armor/medium_combat
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN
	resistance_flags = UNACIDABLE


// Defender II Vest //
/obj/item/clothing/suit/d2
	name = "Defender II vest"
	desc = "Experience in  the First Chechen War has shown that personnel need durable protection, which includes both front and back plates and neck and groin protection, because even one fragmentary injury might cause death. For this problem. FORT TECHNOLOGY issued the Defender 2 vest, which became standard equipment element in different SF units of FSB, FSO and Rusguard. It provides users with optimal protection coverage and includes detachable neck protectors and groin pads. This particular one comes with a groin pad."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "d2"
	inhand_icon_state = "d2"
	armor_type = /datum/armor/heavy_combat
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN
	resistance_flags = UNACIDABLE


// Military Vest //
/obj/item/clothing/suit/mil
	name = "military vest"
	desc = "A poor protective outfit contracted by government bureaucrats outsourcing to the lowest bidder. Typically issued to helicopter pilots, tank drivers, rear-echelon personnel, conscripts and enlisted servicemen. Provides adequate protection from small mutants. Although its overall combat protection is better than the leather jackets commonly found on the rookies of other factions, that really isn't saying much."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "milbodyarmor"
	inhand_icon_state = "milbodyarmor"
	armor_type = /datum/armor/light_combat
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN
	resistance_flags = UNACIDABLE


// Ballistic Vest //
/obj/item/clothing/suit/ballistic
	name = "ballistic vest"
	desc = "Ballistic vest commonly used by the Merc faction. Its design is based on the vest used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof vests."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "bodyarmor"
	inhand_icon_state = "bodyarmor"
	armor_type = /datum/armor/medium_combat
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN
	resistance_flags = UNACIDABLE


// Flak Jacket //
/obj/item/clothing/suit/civ
	name = "flak jacket"
	desc = "A dated flak jacket that will provide slight ballistic protection and is poor against damage from mutants and anomalies."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "flakjacket"
	inhand_icon_state = "flakjacket"
	armor_type = /datum/armor/light_combat
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN
	resistance_flags = UNACIDABLE


/obj/item/clothing/suit/berill
	name = "berill-5M"
	desc = "This item comprises military PS5 series body armor with beryllium sputter modified for use in the Zone. Designed for assault operations in highly radioactive areas, it is ineffective in areas of high anomalous activity. The suit makes its way to stalkers through the military, who exchange it for loot. Does not come with an artifact container."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "berill_5m"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/heavy_specops
	flags_inv = null
	flags_cover = CHEST|GROIN
	body_parts_covered = CHEST|GROIN|ARMS
	resistance_flags = UNACIDABLE





/*--------------------*\
|>>>> SEALED SUITS <<<<|
\*--------------------*/

/obj/item/clothing/suit/hooded/sealed
	name = "DEBUG"
	desc = "Sealed suit with closed-cycle breathing system."
	icon = 'stalker/icons/obj/item/clothing/suit.dmi'
	worn_icon = 'stalker/icons/mob/clothing/suit.dmi'
	icon_state = "ssp99"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/null_hazard
	flags_inv = HIDEJUMPSUIT
	flags_cover = null
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE|FIRE_PROOF
	clothing_flags = THICKMATERIAL|SNUG_FIT
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed

/obj/item/clothing/head/hooded/sealed
	name = "DEBUG"
	icon = 'stalker/icons/obj/item/clothing/head.dmi'
	worn_icon = 'stalker/icons/mob/clothing/head.dmi'
	icon_state = "ssp99"
	armor_type = /datum/armor/null_hazard
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	body_parts_covered = HEAD
	cold_protection = HEAD
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE|FIRE_PROOF
	clothing_flags = THICKMATERIAL|SNUG_FIT|HEADINTERNALS|GAS_FILTERING
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT


// SSP-99 Suit //
/obj/item/clothing/suit/hooded/sealed/ssp99
	name = "SSP-99 suit"
	desc = "A SSP-99 chemical protection suit specially designed for the Zone conditions. It is used by scientific expeditions and the eco-stalkers who cooperate with them. It has an integrated air-filtering and air-conditioning system. It is heat and electricity resistant, provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments. It is not designed for combat, but it provides very minimal bullet and melee protections."
	icon_state = "ssp99"
	inhand_icon_state = "syndicate-orange"
	armor_type = /datum/armor/medium_hazard
	hoodtype = /obj/item/clothing/head/hooded/sealed/ssp99

/obj/item/clothing/head/hooded/sealed/ssp99
	name = "SSP-99 helmet"
	icon_state = "ssp99"
	armor_type = /datum/armor/medium_hazard


// SSP-99M Suit //
/obj/item/clothing/suit/hooded/sealed/ssp99/modified
	name = "SSP-99M suit"
	desc = "High quality modified SSP-99 suit. It provides increased body protection from bullet and splinter damage. It is designed for the guards working with scientific expeditions. It provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments and other effects dangerous to the body. This variant provides a decent protection from firearms & melee damage."
	icon_state = "ssp99m"
	inhand_icon_state = "syndicate-green"
	armor_type = /datum/armor/heavy_hazard
	hoodtype = /obj/item/clothing/head/hooded/sealed/ssp99/modified

/obj/item/clothing/head/hooded/sealed/ssp99/modified
	name = "SSP-99 helmet"
	icon_state = "ssp99m"
	armor_type = /datum/armor/heavy_hazard


// SEVA Suit //
/obj/item/clothing/suit/hooded/sealed/seva
	name = "SEVA suit"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. It provides a very fair protection from bullets and lacerations. It comes with a built-in artifact transportation container."
	icon_state = "seva"
	inhand_icon_state = "syndicate-black"
	armor_type = /datum/armor/heavy_zone
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/seva

/obj/item/clothing/head/hooded/sealed/seva
	name = "SEVA helmet"
	icon_state = "seva"
	armor_type = /datum/armor/heavy_zone
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT


// Orange SEVA Suit //
/obj/item/clothing/suit/hooded/sealed/seva/orange
	icon_state = "seva_orange"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/seva/orange

/obj/item/clothing/head/hooded/stalker/sealed/seva/orange
	icon_state = "seva_orange"


// PSZ-9MD Suit //
/obj/item/clothing/suit/hooded/sealed/psz9md
	name = "PSZ-9MD suit"
	desc = "A wonderful protective suit for the Zone. Stalkers appreciate it because it combines excellent anomaly-proof and bullet-proof qualities. It includes the PSZ-9d suit, a closed cycle breathing system and an integrated system of anomalous field suppression. It provides quality bullet and splinter protection."
	icon_state = "psz9md"
	inhand_icon_state = "syndicate-black-red"
	armor_type = /datum/armor/heavy_zone
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	hoodtype = /obj/item/clothing/head/hooded/sealed/psz9md

/obj/item/clothing/head/hooded/sealed/psz9md
	name = "PSZ-9MD helmet"
	icon_state = "psz9md"
	armor_type = /datum/armor/heavy_zone
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT


// Sin Suit // A faction cut from the game... There's no reason to waste sprites but I don't know why it was added...
/obj/item/clothing/suit/hooded/sealed/sin
	name = "Sin suit"
	desc = "A strange sealed suit worn by Sin members. It provides fair all round protection from the zone."
	icon_state = "sin"
	inhand_icon_state = "syndicate-black-red"
	armor_type = /datum/armor/heavy_zone
	hoodtype = /obj/item/clothing/head/hooded/sealed/sin
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT

/obj/item/clothing/head/hooded/sealed/sin
	name = "Sin suit helmet"
	icon_state = "sin"
	armor_type = /datum/armor/heavy_hazard
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT


// Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton
	name = "exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeleton"
	inhand_icon_state = "syndicate-black"
	armor_type = /datum/armor/extreme_specops
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton

/obj/item/clothing/head/hooded/sealed/exoskeleton
	name = "exoskeleton helmet"
	icon_state = "exoskeleton"
	armor_type = /datum/armor/extreme_specops
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT


// Duty Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton/duty
	name = "Duty exoskeleton"
	icon_state = "exoskeleton_duty"
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton/duty

/obj/item/clothing/head/hooded/sealed/exoskeleton/duty
	name = "Duty exoskeleton helmet"
	icon_state = "exoskeleton_duty"


// Freedom Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton/freedom
	name = "Freedom exoskeleton"
	icon_state = "exoskeleton_freedom"
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton/freedom

/obj/item/clothing/head/hooded/sealed/exoskeleton/freedom
	name = "Freedom exoskeleton helmet"
	icon_state = "exoskeleton_freedom"
	armor_type =/datum/armor/extreme_specops


// Mercenary Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton/mercenary
	name = "Mercenary Exoskeleton"
	icon_state = "exoskelet_mercenary"
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton/mercenary

/obj/item/clothing/head/hooded/sealed/exoskeleton/mercenary
	name = "mercenary exoskeleton helmet"
	icon_state = "exoskeleton_mercenary"
	armor_type =/datum/armor/extreme_specops


// Bandit Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton/bandit
	name = "bandit exoskeleton"
	icon_state = "exoskeleton_bandit"
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton/bandit

/obj/item/clothing/head/hooded/sealed/exoskeleton/bandit
	name = "Bandit exoskeleton helmet"
	icon_state = "exoskeleton_bandit"


// Monolith Exoskeleton //
/obj/item/clothing/suit/hooded/sealed/exoskeleton/monolith
	name = "Monolith exoskeleton"
	icon_state = "exoskeleton_monolith"
	hoodtype = /obj/item/clothing/head/hooded/sealed/exoskeleton/monolith

/obj/item/clothing/head/hooded/sealed/exoskeleton/monolith
	name = "monolith exoskeleton helmet"
	icon_state = "exoskeletn_monolith"








/* to add


// Flight Vest //
/obj/item/clothing/suit/toggle/flight
	name = "flight vest"
	desc = "A regional flight jacket. features an added button-in/out liner for extra warmth, along with a cotton-fiber stretch coif. You'd have to wonder how exactly it got here into the zone other than previous disaster."
	icon_state = "flightvest"
	item_state = "flightvest"
	blood_overlay_type = "armor"
	togglename = "buttons"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.15
	armor = list(melee = 45, bullet = 30, laser = 10,burn = 10, bomb = 20, bio = 0, rad = 0, electro = 0, psy = 0)
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)


// Guardian of Freedom//
/obj/item/clothing/suit/guardian_of_freedom
	name = "Guardian of Freedom"
	desc = "A military Berill-5M suit 'liberated' from the military and modified for the freedom faction. Designed for assault operations in highly radioactive areas, it is ineffective in areas of high anomalous activity. The suit makes its way to stalkers through the military, who exchange it for loot. Does not come with an artifact container."
	icon_state = "guardian_of_freedom"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.3
	armor = list("melee" = 40, "bullet" = 60, "laser" = 30, "energy" = 30, "bomb" = 40, "bio" = 35, "rad" = 40, "fire" = 35, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 150
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)


// Monolith Vest //
/obj/item/clothing/suit/hooded/kombez/monolith
	name = "monolith armor"
	desc = "Stalker suit worn by the Monolith. The producer is unknown. Its protective properties are slightly worse then those of the PSZ-9a military bulletproof vest. Its structure is similar to the suit popular with neutral stalkers which combines a bulletproof vest and a radiation protection suit. It provides good protection from gunfire. Its level of anomaly protection is low due to the absence of an air filtering system."
	icon_state = "monolit"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 35, "bullet" = 35, "laser" = 50, "energy" = 30, "bomb" = 40, "bio" = 30, "rad" = 30, "fire" = 30, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/monolith
	durability = 150

/obj/item/clothing/head/hooded/stalker/monolith
	slowdown = 0.025
	armor = list("melee" = 35, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 0, "bio" = 50, "rad" = 30, "fire" = 50, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_monolit"


// Monolith Scientific Suit //
/obj/item/clothing/suit/hooded/sealed/monolith
	name = "monolith scientific suit"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "monolith_scientific"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/monolith
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/monolith
	name = "monolith scientific suit helmet"
	slowdown = 0.5
	armor = list("melee" = 50, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "monolith_scientific_helmet"
	resistance_flags = FIRE_PROOF


// Mercenary Ace Suit // Gamma mod addition
/obj/item/clothing/suit/hooded/sealed/merc
	name = "mercenary ace suit"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "mercace"
	item_state = "mercace"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/merc
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/merc
	name = "merc ace suit helmet"
	slowdown = 0.5
	armor = list("melee" = 50, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "mercace_helmet"
	resistance_flags = FIRE_PROOF


// SKAT-M9 Suit //
/obj/item/clothing/suit/skat
	name = "SKAT-M9 suit"
	desc = "This Skat-9M bulletproof military suit is designed for assault operations in areas of anomalous activity. It includes a PSZ-12p heavy military bulletproof suit, an integrated compensation suit and a Sphera-12M helmet. It provides perfect protection from bullets and splinters and it doesn't decrease the soldier's mobility. It has a balanced system of anomaly protection."
	icon_state = "skat"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	resistance_flags = UNACIDABLE
	slowdown = 0.35
	armor = list("melee" = 60, "bullet" = 70, "laser" = 60, "energy" = 50, "bomb" = 70, "bio" = 35, "rad" = 35, "fire" = 50, "psy" = 0)
	durability = 200
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)


// Ecologist Mercenary Armor //
/obj/item/clothing/suit/hooded/kombez/eco_mercenary
	name = "ecologist mercenary armor"
	desc = "Stalker suit from the Merc faction donning an ecologist armband. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "eco_mercenary"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/eco_mercenary
	durability = 150

/obj/item/clothing/head/hooded/stalker/eco_mercenary
	slowdown = 0.05
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_eco_merc"


// Bandit Armor //
/obj/item/clothing/suit/hooded/kombez/kombez_bandit
	name = "bandit armor"
	desc = "Stalker suit worn by the Bandits. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "combez_bandit"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/kombez_bandit
	durability = 150

/obj/item/clothing/head/hooded/stalker/kombez_bandit
	slowdown = 0.05
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_bandit"


// Renegade Armor //
/obj/item/clothing/suit/hooded/kombez/kombez_renegade
	name = "Renegade armor"
	desc = "Stalker suit worn by the Renegades. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "combez_renegade"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 35, "bullet" = 35, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/kombez_renegade
	durability = 150

/obj/item/clothing/head/hooded/stalker/kombez_renegade
	slowdown = 0.125
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_renegade"


// Mercenary Leader Armor //
/obj/item/clothing/suit/hooded/kombez/mercenary/leader
	name = "mercenary leader armor"
	desc = "The usual armor of a mercenary with a cloak thrown over it, in a very shabby condition. You wonder why no one else thought of wearing a cloak over light armor before... is there really something hindering this?"
	icon_state = "mercleader"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	durability = 150


// Renegade Vest //
/obj/item/clothing/suit/hooded/kombez/kombezrenegadewornd2
	name = "Renegade vest"
	desc = "A revised version of the old suit. Nevertheless, it does not give any guarantees."
	icon_state = "combez_renegade_worn_d2"
	item_state = "combez_renegade_worn_d2"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/banditbrown
	durability = 150
*/