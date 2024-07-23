// Fungus
/obj/item/seeds/fungus
	name = "pack of cave fungus mycelium"
	desc = "This mycelium grows into cave fungi, an edible variety of mushroom with potential anti-toxic properties."
	icon_state = "seed-fungus"
	species = "cave fungus"
	plantname = "Cave fungi"
	product = /obj/item/food/grown/mushroom/fungus
	growing_icon = 'icons/obj/service/hydroponics/growing_mushrooms.dmi'
	icon_grow = "ember-grow-grow"
	icon_harvest = "ember-grow-harvest"
	icon_dead = "ember-grow-dead"
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	potency = 20
	growthstages = 3
	reagents_add = list("mutadone" = 0.05)
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)

/obj/item/food/grown/mushroom/fungus
	seed = /obj/item/seeds/fungus
	name = "cave fungus"
	desc = "Cave fungus is an edible mushroom which may have the ability to purge bodily toxins."
	icon = 'icons/obj/mining_zones/ash_flora.dmi'
	icon_state = "mushroom_cap"
	filling_color = "#FF6347"