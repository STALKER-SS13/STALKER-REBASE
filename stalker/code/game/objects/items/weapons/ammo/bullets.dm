// range: 1 turf = 4
/obj/projectile/bullet/bullet9x18
	damage = 18

/obj/projectile/bullet/bullet9x18/zombie
	hitscan = FALSE

/obj/projectile/bullet/bullet9x18P
	damage = 16
	armour_penetration = 20

/obj/projectile/bullet/bullet545
	damage = 30

/obj/projectile/bullet/bullet762x39
	damage = 35

/obj/projectile/bullet/bullet762x39/zombie
	hitscan = FALSE

/obj/projectile/bullet/bullet762x39AP
	damage = 35
	armour_penetration = 25

/obj/projectile/bullet/bullet545AP
	damage = 25
	armour_penetration = 25

/obj/projectile/bullet/bullet12x70
	name = "pellet"
	damage = 17
	armour_penetration = -20

/obj/projectile/bullet/bullet12x70/zombie
	armour_penetration = -30
	hitscan = FALSE

/obj/projectile/bullet/bullet12x70p
	name = "slug"
	damage = 70

/obj/projectile/bullet/bullet12x70d
	name = "dart"
	damage = 50
	armour_penetration = 25

/obj/projectile/bullet/bullet9x19
	damage = 21

/obj/projectile/bullet/bullet9x19P
	damage = 18
	armour_penetration = 20

/obj/projectile/bullet/bullet9x39
	damage = 22
	armour_penetration = 40

/obj/projectile/bullet/bulletacp45
	damage = 25

/obj/projectile/bullet/bulletacp45P
	damage = 22
	armour_penetration = 20

/obj/projectile/bullet/testgun
	damage = 10
	range = 50

/obj/projectile/bullet/bullet556x45
	damage = 26
	armour_penetration = 15

/obj/projectile/bullet/bullet556x45/zombie
	hitscan = FALSE

/obj/projectile/bullet/bullet556x45AP
	damage = 23
	armour_penetration = 35

/obj/projectile/bullet/bulletmag44
	damage = 41

/obj/projectile/bullet/bulletmag44FMJ
	damage = 35
	armour_penetration = 25

/obj/projectile/bullet/bullet762x25
	damage = 15
	armour_penetration = 15

/obj/projectile/bullet/bullet762x54
	damage = 75
	armour_penetration = 50

//DShK - Just a PKM
/obj/projectile/bullet/checkpoint
	damage = 64
	armour_penetration = 20

/obj/projectile/bullet/bullet762x51
	damage = 65
	armour_penetration = 40

/obj/projectile/bullet/tungsten_slug
	damage = 75
	icon_state = "tungstenbolt"
	armour_penetration = 30

/obj/projectile/bullet/fragment
	name = "fragment"
	hitscan = FALSE
	damage = 25
	armour_penetration = 25

/obj/projectile/bullet/p90
	damage = 28
	armour_penetration = 5

/obj/projectile/bullet/c500cal
	damage = 60
	armour_penetration = 20


/obj/projectile/bullet/c500calbuck
	damage = 25
	armour_penetration = 10

/obj/projectile/bullet/pellet/bullet12x70
	name = "buckshot pellet"
	damage = 17
	wound_bonus = 5
	bare_wound_bonus = 5
	wound_falloff_tile = -2.5 // low damage + additional dropoff will already curb wounding potential anything past point blank