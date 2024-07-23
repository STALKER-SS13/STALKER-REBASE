// Carrot
/obj/item/seeds/carrot/zona
	name = "pack of mutant carrot seeds"
	desc = "These seeds grow into carrots."
	icon_state = "seed-carrot"
	species = "zona carrot"
	plantname = "Carrots"
	product = /obj/item/food/grown/carrot/zona
	maturation = 10
	production = 1
	yield = 5
	growthstages = 3
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "carrot-grow"
	icon_harvest = "carrot-harvest"
	icon_dead = "carrot-dead"
	mutatelist = list(/obj/item/seeds/carrot/parsnip)
	reagents_add = list("oculine" = 0.25, "vitamin" = 0.04, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/food/grown/carrot/zona
	seed = /obj/item/seeds/carrot/zona
	name = "decrepit carrot"
	desc = "It's good for the eyes! This one seems sickly."
	icon_state = "carrot"
	filling_color = "#FFA500"
	foodtypes = VEGETABLES
	juice_typepath = /datum/reagent/consumable/carrotjuice
	wine_power = 30

// Parsnip
/obj/item/seeds/carrot/parsnip/zona
	name = "pack of mutant parsnip seeds"
	desc = "These seeds grow into parsnips."
	icon_state = "seed-parsnip"
	species = "zona parsnip"
	plantname = "Parsnip"
	product = /obj/item/food/grown/carrot/parsnip/zona
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "parsnip-grow"
	icon_harvest = "parsnip-harvest"
	icon_dead = "parsnip-dead"
	mutatelist = list()
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/food/grown/carrot/parsnip/zona
	seed = /obj/item/seeds/carrot/parsnip/zona
	name = "decrepit parsnip"
	desc = "Closely related to carrots. This one looks sickly."
	icon_state = "parsnip"
	foodtypes = VEGETABLES
	wine_power = 35

// White-Beet
/obj/item/seeds/beet/white/zona
	name = "pack of mutant white-beet seeds"
	desc = "These seeds grow into sugary beet producing plants."
	icon_state = "seed-beet/white"
	species = "zona whitebeet"
	plantname = "white-beet plants"
	product = /obj/item/food/grown/beet/white/zona
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "whitebeet-grow"
	icon_harvest = "whitebeet-harvest"
	icon_dead = "whitebeet-dead"
	mutatelist = list(/obj/item/seeds/beet/red/zona)
	reagents_add = list("vitamin" = 0.04, "sugar" = 0.2, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/food/grown/beet/white/zona
	seed = /obj/item/seeds/beet/white/zona
	name = "decrepit white-beet"
	desc = "You can't beat white-beet. This one looks sickly."
	icon_state = "whitebeet"
	filling_color = "#F4A460"
	foodtypes = VEGETABLES
	wine_power = 40

// Red Beet
/obj/item/seeds/beet/red/zona
	name = "pack of redbeet seeds"
	desc = "These seeds grow into red beet producing plants."
	icon_state = "seed-beet/red"
	species = "zona redbeet"
	plantname = "red-beet plants"
	product = /obj/item/food/grown/beet/red/zona
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "redbeet-grow"
	icon_harvest = "redbeet-harvest"
	icon_dead = "redbeet-dead"
	genes = list(/datum/plant_gene/trait/maxchem)
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/food/grown/beet/red/zona
	seed = /obj/item/seeds/beet/red/zona
	name = "red-beet"
	desc = "You can't beat red beet. This one looks sickly."
	icon_state = "redbeet"
	foodtypes = VEGETABLES
	wine_power = 60