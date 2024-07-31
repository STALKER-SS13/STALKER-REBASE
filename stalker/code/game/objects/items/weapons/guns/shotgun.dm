/*----------------*\
|>>>> SHOTGUNS <<<<|
\*----------------*/



// BM-16 //

/obj/item/gun/ballistic/shotgun/bm16
	name = "\improper BM-16 Long"
	desc = "The original BM16 Long. Heavy and dangerous double barrel shotgun."
	icon_state = "bm16"
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_icon_state = "bm16"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	force = 15
	recoil = 1
	spread = 24
	damagelose = 0.3
	weapon_weight = WEAPON_MEDIUM
	semi_auto = TRUE
	fire_sound = 'stalker/sound/weapons/bm16_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'
	pickup_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'



// TOZ-34 //

/obj/item/gun/ballistic/shotgun/toz34
	name = "\improper TOZ-34"
	desc = "A USSR designed hunting shotgun. Perfect for hunting mutants around the zone."
	icon_state = "toz34"
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_icon_state = "toz34"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	recoil = 0.6
	force = 15
	spread = 12
	damagelose = 0.15
	weapon_weight = WEAPON_MEDIUM
	semi_auto = TRUE
	fire_sound = 'stalker/sound/weapons/bm16_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'
	pickup_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'



// Ithaca M37 //

/obj/item/gun/ballistic/shotgun/ithaca  //  Ithaca M37
	name = "\improper Ithaca M37"
	desc = " A basic american made pump-action shotgun modeled after the Remmington M17."
	icon_state = "ithacam37"
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_icon_state = "ithacam37"
	slot_flags = ITEM_SLOT_BACK
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/stalker/ithaca
	recoil = 1
	force = 15
	spread = 24
	damagelose = 0.3
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'stalker/sound/weapons/winchester1300_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/chaser_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/ithacam37_pump.ogg'
	pickup_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'



// Chaser-13 //

/obj/item/gun/ballistic/shotgun/chaser  //  Winchester 1300
	name = "\improper Chaser-13"
	desc = "A very reliable U.S. made smoothbore pump-action shotgun. It is very reliable in hostile environments with its design and chemical-resistant coating."
	icon_state = "chaser"
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_icon_state = "chaser"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/chaser
	recoil = 0.8
	force = 15
	spread = 20
	damagelose = 0.3
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'stalker/sound/weapons/winchester1300_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/chaser_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/chaser_pump.ogg'
	pickup_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'



// SPAS-12 //

/obj/item/gun/ballistic/shotgun/spas12
	name = "\improper Franchi SPAS-12"
	desc = "An Italian-made semi-automatic combat shotgun designed for rugged conditions"
	icon_state = "spsa"
	lefthand_file = 'icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_icon_state = "spsa"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/spas12
	recoil = 0.8
	spread = 16
	force = 15
	damagelose = 0.35
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'stalker/sound/weapons/spsa_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/spsa_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/spsa_pump.ogg'
	pickup_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'