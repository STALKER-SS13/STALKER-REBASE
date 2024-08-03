/*--------------*\
|>>>> KNIVES <<<<|
\*--------------*/


// Tourist Knife
/obj/item/knife/tourist
	name = "tourist knife"
	desc = "Cheap knife but good enough for a tourist."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "knife"
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	attack_verb_simple = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = SHARP_EDGED


// Bayonet //
/obj/item/knife/bayonet
	name = "bayonet"
	desc = "Dangerous, but bad at butchering mutants."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "bayonet"
	force = 25
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_POINTY


// Throwing Knife //
/obj/item/knife/throwing
	name = "throwing knife"
	desc = "A small knife which is best thrown rather than used in close combat."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "throwing_knife"
	force = 8
	throwforce = 24
	throw_speed = 4
	embed_type = /datum/embed_data/combat_knife
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("penetrated", "stabbed", "skewered", "pierced")
	attack_verb_simple = list("penetrated", "stabbed", "skewered", "pierced")
	sharpness = SHARP_EDGED


// Bowie Knife //
/obj/item/knife/bowie
	name = "bowie knife"
	desc = "Day bow bow ... chicka chi-kow!"
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "knife_bowie"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "knife_bowie"
	force = 25
	throwforce = 25
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED


// Bolo Knife //
/obj/item/knife/bolo
	name = "bolo knife"
	desc = "A large cutting tool of Filipino origin similar to the machete. It is used particularly in the Philippines, the jungles of Indonesia, Malaysia and Brunei, as well as in the sugar fields of Cuba."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "bolo"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "bolo"
	force = 33
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED


// Trench Knife //
/obj/item/knife/trench
	name = "trench knife"
	desc = "Dangerous, made for the trenches."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "knife_trench"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "knife_trench"
	force = 25
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED




/*--------------*\
|>>>> BLADES <<<<|
\*--------------*/


// Machete //
/obj/item/knife/machete
	name = "machete"
	desc = "Great for hacking your problems away."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "machete"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "machete"
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_NORMAL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED




/*-------------------------*\
|>>>> SCRAP & MAKESHIFT <<<<|
\*-------------------------*/


// Metal Pipe //
/obj/item/melee/pipe
	name = "metal pipe"
	desc = "A rusty metal pipe which can be used to beat mutants and stalkers."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "pipe"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "nullrod"
	force = 20
	throwforce = 15
	wound_bonus = -10
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb_continuous = list("attacked", "smacked", "beat", "bludgened")
	attack_verb_simple = list("attacked", "smacked", "beat", "bludgened")


// Tire Iron //
/obj/item/melee/tireiron
	name = "tire iron"
	desc = "A rusty metal tire iron which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "tire_iron"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "tireiron"
	force = 24
	throwforce = 15
	wound_bonus = -10
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb_continuous = list("attacked", "smacked", "beat", "bludgened")
	attack_verb_simple = list("attacked", "smacked", "beat", "bludgened")


// Large Wrench //
/obj/item/melee/largewrench
	name = "large wrench"
	desc = "A rusty metal wrench which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "red_wrench"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "bigwrench"
	force = 24
	throwforce = 15
	wound_bonus = -10
	w_class = WEIGHT_CLASS_NORMAL
	attack_verb_continuous = list("attacked", "smacked", "beat", "bludgened")
	attack_verb_simple = list("attacked", "smacked", "beat", "bludgened")


// Entrenching Shovel //
/obj/item/shovel/entrenching_tool
	name = "entrenching tool"
	desc = "The most useful tool in the trenches!"
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "entrenching_tool"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	inhand_icon_state = "entrenching_tool"
	force = 30
	throwforce = 15
	wound_bonus = 10
	w_class = WEIGHT_CLASS_NORMAL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED




/*-----------------------*\
|>>>> HATCHETS & AXES <<<<|
\*-----------------------*/


// Ancient Hatchet //
/obj/item/hatchet/ancienthatchet
	name = "ancient hatchet"
	desc = "An old looking hand axe, still seems sturdy and sharp."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "ancient_hatchet"
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	inhand_icon_state = "hatchet"
	force = 24
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	attack_verb_continuous = list("attacked", "stabbed", "torn", "ripped")
	attack_verb_simple = list("attacked", "stabbed", "torn", "ripped")
	sharpness = SHARP_EDGED


/obj/item/fireaxe/old
	name = "old fire axe"
	desc = "An old looking fire axe axe, still seems sturdy and sharp."
	icon = 'stalker/icons/obj/item/melee_weapons.dmi'
	icon_state = "old_fireaxe"
	base_icon_state = "old_fireaxe"