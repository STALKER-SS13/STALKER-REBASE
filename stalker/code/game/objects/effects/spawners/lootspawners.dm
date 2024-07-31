/*------------------------------*\
|>>>> Single-use Lootspawner <<<<|
\*------------------------------*/

/obj/effect/spawner/random/low_value_loot
	name = "loot spawner"
	spawn_loot_double = TRUE
	spawn_loot_count = 5
	spawn_loot_split_pixel_offsets = 4
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/pm = 5,
		/obj/item/gun/ballistic/automatic/pistol/fort12 = 5,
		/obj/item/gun/ballistic/automatic/pistol/pb1s = 5,
		/obj/item/gun/ballistic/automatic/mp5 = 1,
		/obj/item/gun/ballistic/shotgun/bm16 = 7,
		/obj/item/ammo_box/b9x18 = 10,
		/obj/item/ammo_box/b9x18P = 10,
		/obj/item/ammo_box/b12x70 = 10,
		/obj/item/ammo_box/b12x70P = 10,
		/obj/item/ammo_box/b12x70D = 10,
		/obj/item/ammo_box/b9x19 = 10,
		/obj/item/ammo_box/b9x19P = 10,
		/obj/item/clothing/suit/army = 1,
		/obj/item/clothing/mask/gas/stalker = 4,
		/obj/item/food/fermented/tomaty = 20,
		/obj/item/food/goulash/lowgrade = 20,
		/obj/item/t_scanner/artifact_detector/echo = 4,
		/obj/item/seeds/potato = 30,
		/obj/item/seeds/cabbage = 30,
		/obj/item/seeds/beet/white = 30,
		/obj/item/seeds/carrot/parsnip = 30,
		/obj/item/seeds/beet/red = 30,
		/obj/item/seeds/kudzu = 1,
		/obj/item/seeds/onion = 30,
		/obj/item/seeds/potato/sweet = 20,
		/obj/item/seeds/wheat = 20,
		/obj/item/seeds/wheat/rice = 30,
		/obj/item/seeds/carrot = 20,
		/obj/item/seeds/tomato = 30,
		/obj/item/seeds/chili/ghost = 1,
		/obj/item/seeds/tobacco = 30,
		/obj/item/seeds/cannabis = 5,
		/obj/item/trash/stalker/metal_scrap/metal_scrap = 5,
		/obj/item/trash/stalker/metal_scrap/scrap = 5,
		/obj/item/trash/stalker/metal_scrap/metal_parts = 5,
		/obj/item/trash/stalker/metal_scrap/barbed_wire = 5,
		/obj/item/trash/stalker/metal_scrap/rusty_nails = 5,
		/obj/item/trash/stalker/metal_scrap/anchor = 5,
		/obj/item/trash/stalker/metal_scrap/broken_lock = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_microphone = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_flashlight = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_headset = 5,
		/obj/item/trash/stalker/electronics_scrap/old_circuit_board = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_pda = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_echo = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_bear = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_veles = 5,
		/obj/item/trash/stalker/electronics_scrap/broken_phone = 5,
		/obj/item/trash/stalker/binding_material/steel_wire = 5,
		/obj/item/trash/stalker/binding_material/wire = 5,
		/obj/item/trash/stalker/binding_material/vhs = 5,
		/obj/item/trash/stalker/binding_material/duct_tape = 5,
		/obj/item/trash/stalker/binding_material/rope = 5,
		/obj/item/trash/stalker/binding_material/yarn = 5,
		/obj/item/trash/stalker/baseball = 5,
		/obj/item/trash/stalker/dogtag = 5,
		/obj/item/trash/stalker/fermenting_jar = 5,
		/obj/item/trash/stalker/glass_shard = 1,
		/obj/item/trash/stalker/broken_pocket_watch = 5,
		/obj/item/trash/stalker/reagent_flask = 5,
		/obj/item/trash/stalker/cross_necklace = 5,
		/obj/item/trash/stalker/paint_can = 5,
		/obj/item/trash/stalker/horn = 5,
		/obj/item/trash/stalker/wood_scrap = 5,
		/obj/item/trash/stalker/broken_vinyl = 5,
		/obj/item/trash/stalker/broken_syringe = 5,)

/obj/effect/spawner/random/medium_value_loot
	name = "loot spawner"
	spawn_loot_split_pixel_offsets = 4
	spawn_loot_chance = 32
	loot = list(
		/obj/structure/closet/crate/stalker_stash/low = 3,
		/obj/structure/closet/crate/stalker_stash/medium = 5,
		/obj/structure/closet/crate/stalker_stash/high = 1)

/obj/effect/spawner/random/high_value_loot
	name = "loot spawner"
	spawn_loot_split_pixel_offsets = 3
	spawn_loot_chance = 40
	loot = list(
		/obj/structure/closet/crate/stalker_stash/low = 1,
		/obj/structure/closet/crate/stalker_stash/medium = 3,
		/obj/structure/closet/crate/stalker_stash/high = 5)




/*------------------------------*\
|>>>> Respawning Lootspawner <<<<|
\*------------------------------*/

/obj/effect/spawner/random/stalker
	name = "stalker lootspawner"
	invisibility = INVISIBILITY_ABSTRACT
	spawn_loot_count = 2
	var/radius = 10			// Scatter Radius
	var/cooldown = 10000	// Number of Minutes * 1000 кд шитспавна
	var/list/spawned_loot = new()
	loot = list(
		/obj/item/trash/can = 1)

/obj/effect/spawner/random/stalker/weapon
	spawn_loot_count = 1
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/pm = 85,
		/obj/item/trash/can = 15)
/*
/obj/effect/spawner/random/stalker/New()
	SpawnLoot()

/obj/effect/spawner/random/stalker/proc/SpawnLoot(enable_cooldown = 1)
	if(!loot || !loot.len)
		return

	for(var/k = 0, k < lootcount, k++)

		if(!loot.len)
			return

		var/lootspawn = pickweight(loot)

		if(!lootspawn || lootspawn == /obj/nothing)
			continue

		spawned_loot.Add(lootspawn)

		var/turf/T = get_turf(src)
		var/obj/O = new lootspawn(T)

		RandomMove(O)
	////////////////////////////////////////////
	sleep(rand(cooldown, cooldown + cooldown/2))
	////////////////////////////////////////////
	SpawnLoot()
	return
*/
/obj/effect/spawner/random/stalker/proc/CanSpawn()
	var/count = 0

	for(var/I in spawned_loot)

		var/obj/O = I

		if(!(O.loc in range(7, src)))
			count++
		else
			spawned_loot.Remove(I)

	return clamp(spawn_loot_count - count, 0, spawn_loot_count)


/obj/effect/spawner/random/stalker/proc/RandomMove(spawned)
	if(spawned)
		var/turf/T = get_turf(src)
		var/obj/O = spawned
		var/new_x = T.x + rand(-radius, radius)
		var/new_y = T.y + rand(-radius, radius)
		O.Move(new_x, new_y, T.z)

	return spawned

/obj/effect/spawner/random/stalker/weapon/pistols
	name = "stalker pistols tier 1"
	icon = 'icons/effects/landmarks_static.dmi'
	icon_state = "pistol_loot"
	spawn_loot_chance = 70
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/pm = 1,
		/obj/item/gun/ballistic/automatic/pistol/pb1s = 2,
		/obj/item/gun/ballistic/automatic/pistol/fort12 = 2,
		/obj/item/gun/ballistic/automatic/pistol/tt = 2)

/obj/effect/spawner/random/stalker/weapon/pistolstier2
	name = "stalker pistols tier 2"
	icon_state = "pistol2_loot"
	spawn_loot_chance = 70
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/fort12/unique = 1,
		/obj/item/gun/ballistic/automatic/pistol/sip = 2,
		/obj/item/gun/ballistic/automatic/pistol/cora = 2,
		/obj/item/gun/ballistic/automatic/pistol/marta = 2)

/obj/effect/spawner/random/stalker/weapon/pistolstier3
	name = "stalker pistols tier 3"
	icon_state = "pistol3_loot"
	spawn_loot_chance = 70
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/usp_match = 7,
		/obj/item/gun/ballistic/automatic/pistol/desert = 3,
		/obj/item/gun/ballistic/revolver/anaconda = 3,
		/obj/item/gun/ballistic/automatic/mac10 = 1)

/obj/effect/spawner/random/stalker/weapon/rifles_and_shotguns
	name = "stalker rifles_and_shotguns tier 1"
	icon_state = "rifle_shotgun_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/shotgun/bm16 = 3,
		/obj/item/gun/ballistic/rifle/boltaction/enfield = 3,
		/obj/item/gun/ballistic/automatic/aksu74 = 2,
		/obj/item/gun/ballistic/automatic/berettam38 = 2)

/obj/effect/spawner/random/stalker/weapon/rifles_and_shotgunstier2
	name = "stalker rifles_and_shotguns tier 2"
	icon_state = "rifle_shotgun2_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/shotgun/toz34 = 3,
		/obj/item/gun/ballistic/automatic/ppsh = 3,
		/obj/item/gun/ballistic/automatic/ak74 = 2,
		/obj/item/gun/ballistic/automatic/abakan = 2)

/obj/effect/spawner/random/stalker/weapon/rifles_and_shotgunstier3
	name = "stalker rifles_and_shotguns tier 3"
	icon_state = "rifle_shotgun3_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/shotgun/ithaca = 3,
		/obj/item/gun/ballistic/automatic/tpc301 = 3,
		/obj/item/gun/ballistic/automatic/il86 = 2,
		/obj/item/gun/ballistic/shotgun/chaser = 2)

/obj/effect/spawner/random/stalker/weapon/rifles_and_shotgunstier4
	name = "stalker rifles_and_shotguns tier 4"
	icon_state = "rifle_shotgun4_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/groza = 3,
		/obj/item/gun/ballistic/automatic/val = 3,
		/obj/item/gun/ballistic/automatic/sigsg550 = 2,
		/obj/item/gun/ballistic/shotgun/spas12 = 2)

/obj/effect/spawner/random/stalker/weapon/rifles
	name = "stalker rifles tier 1"
	icon_state = "rifle_loot"
	spawn_loot_chance = 50
	loot = list(/obj/item/gun/ballistic/rifle/boltaction/enfield = 1,
				/obj/item/gun/ballistic/automatic/aksu74 = 1,
				/obj/item/gun/ballistic/automatic/berettam38 = 1)

/obj/effect/spawner/random/stalker/weapon/riflestier2
	name = "stalker rifles tier 2"
	icon_state = "rifle2_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/ppsh = 1,
		/obj/item/gun/ballistic/automatic/ak74 = 1,
		/obj/item/gun/ballistic/automatic/abakan = 1)

/obj/effect/spawner/random/stalker/weapon/riflestier3
	name = "stalker rifles tier 3"
	icon_state = "rifle3_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/groza = 1,
		/obj/item/gun/ballistic/automatic/tpc301 = 1,
		/obj/item/gun/ballistic/automatic/il86 = 1)

/obj/effect/spawner/random/stalker/weapon/riflestier4
	name = "stalker rifles tier 4"
	icon_state = "rifle4_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/gp37 = 1,
		/obj/item/gun/ballistic/automatic/fnf2000 = 1,
		/obj/item/gun/ballistic/automatic/vintorez = 1)

/obj/effect/spawner/random/stalker/weapon/smgs
	name = "stalker smgs"
	icon_state = "smg_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/mp5 = 2,
		/obj/item/gun/ballistic/automatic/aksu74 = 2,
		/obj/item/gun/ballistic/automatic/kiparis = 1)

/obj/effect/spawner/random/stalker/weapon/ak74
	name = "stalker ak74"
	icon_state = "ak74_loot"
	spawn_loot_chance = 50
	loot = list(
		/obj/item/gun/ballistic/automatic/ak74 = 1)

/obj/effect/spawner/random/stalker/weapon/rarerifles
	name = "stalker rare rifles"
	icon_state = "rifle_rare_loot"
	spawn_loot_chance = 10
	loot = list(
		/obj/item/gun/ballistic/rifle/automatic/sks = 1,
		/obj/item/gun/ballistic/automatic/fnfal = 1,
		/obj/item/gun/ballistic/automatic/woodfnfal = 1,
		/obj/item/gun/ballistic/automatic/famas = 1,
		/obj/item/gun/ballistic/automatic/aug = 1,
		/obj/item/gun/ballistic/automatic/akm = 1,
		/obj/item/gun/ballistic/automatic/vz58 = 1,
		/obj/item/gun/ballistic/automatic/m16 = 1,
		/obj/item/gun/ballistic/automatic/m14 = 1,
		/obj/item/gun/ballistic/automatic/m16a4 = 1,
		/obj/item/gun/ballistic/automatic/m4 = 1,
		/obj/item/gun/ballistic/automatic/ar15 = 1,
		/obj/item/gun/ballistic/automatic/scarh = 1,
		/obj/item/gun/ballistic/automatic/ak74 = 6)

/obj/effect/spawner/random/stalker/weapon/rarepistols
	name = "stalker rare pistols"
	icon_state = "pistol_rare_loot"
	spawn_loot_chance = 10
	loot = list(
		/obj/item/gun/ballistic/automatic/pistol/luger = 1,
		/obj/item/gun/ballistic/automatic/pistol/walther = 1,
		/obj/item/gun/ballistic/automatic/pistol/aps = 1,
		/obj/item/gun/ballistic/automatic/pistol/pernach = 1,
		/obj/item/gun/ballistic/automatic/pistol/mauser = 1,
		/obj/item/gun/ballistic/automatic/pistol/glock = 1,
		/obj/item/gun/ballistic/automatic/pistol/tt30 = 1,
		/obj/item/gun/ballistic/automatic/pistol/fiveseven = 1,
		/obj/item/gun/ballistic/automatic/pistol/waltherpp = 1,
		/obj/item/gun/ballistic/automatic/pistol/cz83 = 1,
		/obj/item/gun/ballistic/automatic/pistol/silvermarta = 1)

/obj/effect/spawner/random/stalker/weapon/raresmgs
	name = "stalker rare smgs"
	icon_state = "smg_rare_loot"
	spawn_loot_chance = 10
	loot = list(
		/obj/item/gun/ballistic/automatic/sten = 1,
		/obj/item/gun/ballistic/automatic/sterling = 1,
		/obj/item/gun/ballistic/automatic/m3a1 = 1,
		/obj/item/gun/ballistic/automatic/reising = 1,
		/obj/item/gun/ballistic/automatic/mp40 = 1,
		/obj/item/gun/ballistic/automatic/mp3008 = 1,
		/obj/item/gun/ballistic/automatic/pps43 = 1,
		/obj/item/gun/ballistic/automatic/bizon = 1,
		/obj/item/gun/ballistic/automatic/m76 = 1,
		/obj/item/gun/ballistic/automatic/skorpion = 1)

/obj/effect/spawner/random/stalker/weapon/rareboltaction
	name = "stalker rare boltactions"
	icon_state = "bolt_rare_loot"
	spawn_loot_chance = 10
	loot = list(
		/obj/item/gun/ballistic/rifle/boltaction/mosin = 1,
		/obj/item/gun/ballistic/rifle/boltaction/arisaka = 1,
		/obj/item/gun/ballistic/rifle/boltaction/karabiner = 1,
		/obj/item/gun/ballistic/rifle/boltaction/springfield = 1)

/obj/effect/spawner/random/stalker/weapon/melee
	name = "stalker melee"
	icon_state = "melee_loot"
	spawn_loot_chance = 80
	loot = list(
		/obj/item/knife = 2,
		/obj/item/knife/butcher = 1,
		/obj/item/melee/baseball_bat = 1,
		/obj/item/knife/tourist = 1,
		/obj/item/melee/tireiron = 1,
		/obj/item/melee/pipe = 1)

/obj/effect/spawner/random/stalker/weapon/meleetier2
	name = "stalker melee"
	icon_state = "melee2_loot"
	spawn_loot_chance = 80
	loot = list(
		/obj/item/knife/bayonet = 2,
		/obj/item/hatchet = 3,
		/obj/item/hatchet/ancienthatchet = 1,
		/obj/item/melee/largewrench = 4)

/obj/effect/spawner/random/stalker/weapon/meleetier3
	name = "stalker melee"
	icon_state = "melee3_loot"
	spawn_loot_chance = 80
	loot = list(
		/obj/item/knife/machete	 = 7,
		/obj/item/knife/throwing = 4,
		/obj/item/knife/hunting = 3)

/obj/effect/spawner/random/stalker/weapon/meleetierrare
	name = "stalker melee rare"
	icon_state = "melee_rare_loot"
	spawn_loot_chance = 80
	loot = list(
		/obj/item/knife/bolo = 1,
		/obj/item/knife/bowie = 1,
		/obj/item/knife/trench = 1,
		/obj/item/shovel/entrenching_tool = 1,
		/obj/item/knife/machete = 2)

/obj/effect/spawner/random/stalker/weapon/meleetwohand
	name = "stalker melee tier 2"
	icon_state = "melee_2hand_loot"
	spawn_loot_chance = 80
	loot = list(
		/obj/item/fireaxe/old = 2,
		/obj/item/fireaxe = 2,
		/obj/item/staff/bostaff = 3,
		/obj/item/chainsaw = 1)

/obj/effect/spawner/random/stalker/food
	name = "stalker food"
	icon_state = "food_loot"
	spawn_loot_count = 1
	spawn_loot_chance = 85
	loot = list(
		/obj/item/food/baton = 5,
		/obj/item/food/kolbasa = 3,
		/obj/item/food/doctorsausage = 4,
		/obj/item/food/konserva = 2)


/obj/effect/spawner/random/stalker/stews
	name = "stalker food"
	icon_state = "stew_loot"
	spawn_loot_count = 1
	spawn_loot_chance = 85
	loot = list(
		/obj/item/food/meatandveggiestew = 1,
		/obj/item/food/veggiestew = 1,
		/obj/item/food/doctorsausage = 1)


/obj/effect/spawner/random/stalker/gravy
	name = "stalker gravity"
	radius = 3
	spawn_loot_count = 1
	cooldown = 4500
	spawn_loot_chance = 20
	loot = list(
		/obj/item/artifact/meduza = 12,
		/obj/item/artifact/maminibusi = 1)

/obj/effect/spawner/random/stalker/electra
	name = "stalker electra"
	radius = 3
	spawn_loot_count = 1
	cooldown = 4500
	spawn_loot_chance = 20
	loot = list(
		/obj/item/artifact/flash = 12,
		/obj/item/artifact/moonlight = 6,
		/obj/item/artifact/battery = 1,
		/obj/item/artifact/pustishka = 1)

/obj/effect/spawner/random/stalker/fire
	name = "stalker fire"
	radius = 3
	spawn_loot_count = 1
	cooldown = 4500
	spawn_loot_chance = 20
	loot = list(
		/obj/item/artifact/droplet = 4,
		/obj/item/artifact/fireball = 2,
		/obj/item/artifact/crystal = 1)

/obj/effect/spawner/random/stalker/binding_materials
	name = "stalker binding materials"
	spawn_loot_count = 1
	spawn_loot_chance = 30
	loot = list(
		/obj/item/trash/stalker/binding_material/steel_wire = 1,
		/obj/item/trash/stalker/binding_material/wire = 1,
		/obj/item/trash/stalker/binding_material/vhs = 1,
		/obj/item/trash/stalker/binding_material/duct_tape = 1,
		/obj/item/trash/stalker/binding_material/rope = 1,
		/obj/item/trash/stalker/binding_material/yarn = 1)

/obj/effect/spawner/random/stalker/eletronics_scrap
	name = "stalker broken devices"
	spawn_loot_count = 1
	spawn_loot_chance = 30
	loot = list(
		/obj/item/trash/stalker/electronics_scrap/broken_microphone = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_flashlight = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_headset = 1,
		/obj/item/trash/stalker/electronics_scrap/old_circuit_board = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_pda = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_echo = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_bear = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_veles = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_phone = 1)

/obj/effect/spawner/random/stalker/metal_scrap
	name = "stalker metal parts"
	spawn_loot_count = 1
	spawn_loot_chance = 30
	loot = list(
		/obj/item/trash/stalker/metal_scrap/metal_scrap = 1,
		/obj/item/trash/stalker/metal_scrap/scrap = 1,
		/obj/item/trash/stalker/metal_scrap/metal_parts = 1,
		/obj/item/trash/stalker/metal_scrap/barbed_wire = 1,
		/obj/item/trash/stalker/metal_scrap/rusty_nails = 1,
		/obj/item/trash/stalker/metal_scrap/anchor = 1,
		/obj/item/trash/stalker/metal_scrap/broken_lock = 1)

/obj/effect/spawner/random/stalker/junk
	name = "any stalker junk items"
	spawn_loot_count = 1
	loot = list(
		/obj/item/trash/stalker/metal_scrap/metal_scrap = 1,
		/obj/item/trash/stalker/metal_scrap/scrap = 1,
		/obj/item/trash/stalker/metal_scrap/metal_parts = 1,
		/obj/item/trash/stalker/metal_scrap/barbed_wire = 1,
		/obj/item/trash/stalker/metal_scrap/rusty_nails = 1,
		/obj/item/trash/stalker/metal_scrap/anchor = 1,
		/obj/item/trash/stalker/metal_scrap/broken_lock = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_microphone = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_flashlight = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_headset = 1,
		/obj/item/trash/stalker/electronics_scrap/old_circuit_board = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_pda = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_echo = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_bear = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_veles = 1,
		/obj/item/trash/stalker/electronics_scrap/broken_phone = 1,
		/obj/item/trash/stalker/binding_material/steel_wire = 1,
		/obj/item/trash/stalker/binding_material/wire = 1,
		/obj/item/trash/stalker/binding_material/vhs = 1,
		/obj/item/trash/stalker/binding_material/duct_tape = 1,
		/obj/item/trash/stalker/binding_material/rope = 1,
		/obj/item/trash/stalker/binding_material/yarn = 1,
		/obj/item/trash/stalker/baseball = 1,
		/obj/item/trash/stalker/dogtag = 1,
		/obj/item/trash/stalker/fermenting_jar = 1,
		/obj/item/trash/stalker/glass_shard = 1,
		/obj/item/trash/stalker/broken_pocket_watch = 1,
		/obj/item/trash/stalker/reagent_flask = 1,
		/obj/item/trash/stalker/cross_necklace = 1,
		/obj/item/trash/stalker/paint_can = 1,
		/obj/item/trash/stalker/horn = 1,
		/obj/item/trash/stalker/wood_scrap = 1,
		/obj/item/trash/stalker/broken_vinyl = 1,
		/obj/item/trash/stalker/broken_syringe = 1)

/obj/effect/spawner/random/stalker/flasks
	name = "stalker flasks"
	spawn_loot_count = 1
	spawn_loot_chance = 50
	loot = list(
		/obj/item/reagent_containers/cup/glass/flask/cylinder = 1,
		/obj/item/reagent_containers/cup/glass/flask = 2,
		/obj/item/reagent_containers/cup/glass/flask/communist = 1)

/obj/effect/spawner/random/stalker/cigarettes
	name = "stalker cigarettes"
	spawn_loot_count = 1
	spawn_loot_chance = 80
	loot = list(
		/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 3,
		/obj/item/storage/fancy/cigarettes/cigpack_laika = 3,
		/obj/item/storage/fancy/cigarettes/cigpack_java = 3,
		/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 1,
		/obj/item/storage/fancy/cigarettes/cigpack_luckystrikes = 1,
		/obj/item/storage/fancy/cigarettes/cigpack_newports = 1)

/obj/effect/spawner/random/stalker/seeds
	name = "stalker seeds"
	spawn_loot_count = 1
	loot = list(
		/obj/item/seeds/potato = 30,
		/obj/item/seeds/cabbage = 30,
		/obj/item/seeds/beet/white = 30,
		/obj/item/seeds/carrot/parsnip = 30,
		/obj/item/seeds/beet/red = 30,
		/obj/item/seeds/kudzu = 1,
		/obj/item/seeds/onion = 30,
		/obj/item/seeds/lemon = 10,
		/obj/item/seeds/potato/sweet = 20,
		/obj/item/seeds/wheat = 20,
		/obj/item/seeds/wheat/rice = 30,
		/obj/item/seeds/carrot = 20,
		/obj/item/seeds/tomato = 30,
		/obj/item/seeds/chili/ghost = 1,
		/obj/item/seeds/tobacco = 30,
		/obj/item/seeds/cannabis = 10)

/obj/effect/spawner/random/stalker/bureaucracy
	name = "stalker bureaucracy"
	spawn_loot_count = 1
	spawn_loot_chance = 70
	loot = list(
		/obj/item/camera = 1,
		/obj/item/taperecorder = 1,
		/obj/item/clothing/accessory/pocketprotector/full = 1,
		/obj/item/clipboard = 1,
		/obj/item/flashlight/pen = 1,
		/obj/item/hand_labeler = 1)

/obj/effect/spawner/random/stalker/camera
	name = "stalker camera"
	spawn_loot_count = 1
	spawn_loot_chance = 70
	loot = list(
		/obj/item/camera = 1)


/obj/effect/spawner/random/stalker/equipment
	name = "stalker equipment"
	spawn_loot_count = 1
	spawn_loot_chance = 45
	loot = list(
		/obj/item/flashlight/flare/torch = 1,
		/obj/item/flashlight/flare = 1,
		/obj/item/radio/off = 1,
		/obj/item/binoculars = 1,
		/obj/item/flashlight = 1,
		/obj/item/restraints/handcuffs = 1,
		/obj/item/flashlight/lantern = 1)

/obj/effect/spawner/random/stalker/kitchencondiments
	name = "stalker kitchen condiments"
	spawn_loot_count = 1
	spawn_loot_chance = 85
	loot = list(
		/obj/item/reagent_containers/condiment/milk = 1,
		/obj/item/reagent_containers/condiment/soymilk = 1,
		/obj/item/reagent_containers/condiment/saltshaker = 1,
		/obj/item/reagent_containers/condiment/peppermill = 1,
		/obj/item/reagent_containers/condiment/soysauce = 1,
		/obj/item/reagent_containers/condiment/ketchup = 1,
		/obj/item/reagent_containers/condiment/mayonnaise = 1,
		/obj/item/reagent_containers/condiment/flour = 1,
		/obj/item/reagent_containers/condiment/sugar = 1,
		/obj/item/reagent_containers/condiment/rice = 1,
		/obj/item/trash/stalker/fermenting_jar = 1)

/obj/effect/spawner/random/stalker/weapon/armor
	name = "stalker armor"
	icon_state = "armor_loot"
	spawn_loot_chance = 55
	loot = list(
		/obj/item/clothing/suit/sixb2 = 3,
		/obj/item/clothing/suit/hooded/kombez = 3,
		/obj/item/clothing/suit/hooded/kozhanka/tan = 1)

/obj/effect/spawner/random/stalker/weapon/armortier2
	name = "stalker armor tier 2"
	icon_state = "armor2_loot"
	spawn_loot_chance = 55
	loot = list(
		/obj/item/clothing/suit/hooded/kozhanka/ghillie = 3,
		/obj/item/clothing/suit/hooded/kozhanka/bandit_coat/brown = 3,
		/obj/item/clothing/suit/d2 = 2)

/obj/effect/spawner/random/stalker/weapon/helmet
	name = "stalker helmet"
	icon_state = "helmet_loot"
	spawn_loot_chance = 65
	loot = list(
		/obj/item/clothing/head/helmet/ssh = 4,
		/obj/item/clothing/head/helmet/steel = 4,
		/obj/item/clothing/head/helmet/tactical_light = 2,
		/obj/item/clothing/head/helmet/spheram = 2,
		/obj/item/clothing/head/helmet/skat = 1)

/obj/effect/spawner/random/stalker/weapon/stockparts
	name = "stalker stock parts"
	loot = list(
		/obj/item/stock_parts/servo = 1,
		/obj/item/stock_parts/micro_laser = 1,
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/stock_parts/subspace/ansible = 1,
		/obj/item/stock_parts/subspace/filter = 1,
		/obj/item/stock_parts/subspace/amplifier = 1,
		/obj/item/stock_parts/subspace/analyzer = 1,
		/obj/item/stock_parts/capacitor = 1,
		/obj/item/stock_parts/scanning_module = 1)

/obj/effect/spawner/random/stalker/rarefirearms
	name = "stalker rare firearms"
	spawn_loot_count = 1
	loot = list(
		/obj/item/gun/ballistic/automatic/sten = 1,
		/obj/item/gun/ballistic/automatic/sterling = 1,
		/obj/item/gun/ballistic/automatic/m3a1 = 1,
		/obj/item/gun/ballistic/automatic/reising = 1,
		/obj/item/gun/ballistic/automatic/mp40 = 1,
		/obj/item/gun/ballistic/automatic/mp3008 = 1,
		/obj/item/gun/ballistic/automatic/pps43 = 1,
		/obj/item/gun/ballistic/automatic/bizon = 1,
		/obj/item/gun/ballistic/rifle/automatic/sks = 1,
		/obj/item/gun/ballistic/automatic/fnfal = 1,
		/obj/item/gun/ballistic/automatic/woodfnfal = 1,
		/obj/item/gun/ballistic/automatic/famas = 1,
		/obj/item/gun/ballistic/automatic/aug = 1,
		/obj/item/gun/ballistic/automatic/akm = 1,
		/obj/item/gun/ballistic/automatic/m16 = 1,
		/obj/item/gun/ballistic/automatic/m14 = 1,
		/obj/item/gun/ballistic/automatic/m16a4 = 1,
		/obj/item/gun/ballistic/automatic/m4 = 1,
		/obj/item/gun/ballistic/automatic/ar15 = 1,
		/obj/item/gun/ballistic/automatic/scarh = 1,
		/obj/item/gun/ballistic/automatic/ak74 = 2)



/*
/obj/effect/spawner/random/stalker/medicine
	name = "stalker medicine"
	icon_state = "med_loot"
	spawn_loot_count = 1
	spawn_loot_chance = 60
	loot = list(
		/obj/item/storage/firstaid/ai2 = 12,
		/obj/item/storage/firstaid/ifak = 8,
		/obj/item/storage/firstaid/ecologists = 1)

/obj/effect/spawner/random/stalker/medicineguarentee
	name = "stalker medicine"
	icon_state = "med_guarantee_loot"
	spawn_loot_count = 1
	loot = list(
		/obj/item/storage/firstaid/ai2 = 10,
		/obj/item/storage/firstaid/ifak = 6,
		/obj/item/storage/firstaid/ecologists = 1)

/obj/effect/spawner/random/stalker/medicine/pills
	name = "stalker medicine"
	icon_state = "med_pill_loot"
	spawn_loot_count = 1
	spawn_loot_chance = 80
	loot = list(
		/obj/item/reagent_containers/pill/potassium_iodide = 20,
		/obj/item/reagent_containers/pill/radioprotectant = 20,
		/obj/item/reagent_containers/pill/vinca = 5,
		/obj/item/reagent_containers/pill/psyblock = 5,
		/obj/item/reagent_containers/pill/cocaine = 5,
		/obj/item/reagent_containers/pill/analgesic = 15,
		/obj/item/reagent_containers/pill/caffeine = 10)

/obj/effect/spawner/random/stalker/medicine/hypospray
	name = "stalker medicine"
	icon_state = "med_hypo_loot"
	spawn_loot_count = 1
	spawn_loot_chance = 75
	loot = list(
		/obj/item/reagent_containers/hypospray/medipen/stalker/anabiotic = 1,
		/obj/item/reagent_containers/hypospray/medipen/stalker/hercules = 1,
		/obj/item/reagent_containers/hypospray/medipen/stalker/metamizole = 6,
		/obj/item/reagent_containers/hypospray/medipen/stalker/antirad = 6,
		/obj/item/reagent_containers/hypospray/medipen/stalker/axyltallisal = 1)
*/