/obj/item/seeds/garlic/zona
	name = "pack of mutant garlic seeds"
	desc = "A packet of extremely pungent seeds."
	icon_state = "seed-garlic"
	species = "zona garlic"
	plantname = "garlic sprouts"
	product = /obj/item/food/grown/garlic/zona
	yield = 6
	potency = 25
	growthstages = 3
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "garlic-grow"
	icon_harvest = "garlic-harvest"
	icon_dead = "garlic-dead"
	reagents_add = list("uranium" = 0.25, "iodine" = 0.2, "vitamin" = 0.04, "nutriment" = 0.1)

/obj/item/food/grown/garlic/zona
	seed = /obj/item/seeds/garlic/zona
	name = "decrepit garlic"
	desc = "Delicious, but with a potentially overwhelming odor. This one seems very sickly."
	icon_state = "garlic"
	filling_color = "#C0C9A0"
	tastes = list("garlic" = 1)
	wine_power = 10

/obj/item/seeds/bayleaf
	name = "pack of bay leaf seeds"
	desc = "A packet of extremely pungent seeds."
	icon_state = "seed-bayleaf"
	species = "bay leaf"
	plantname = "bay leaf"
	product = /obj/item/food/grown/bayleaf
	yield = 6
	potency = 25
	growthstages = 3
	growing_icon = 'icons/obj/service/hydroponics/growing_vegetables.dmi'
	icon_grow = "nettle-grow-grow"
	icon_harvest = "nettle-grow-harvest"
	icon_dead = "nettle-grow-dead"
	reagents_add = list(/datum/reagent/consumable/nutriment = 0.1)

/obj/item/food/grown/bayleaf
	seed = /obj/item/seeds/bayleaf
	icon_state = "nettle"
	name = "bay leaf"
	desc = "A common spice used for many dishes."
	icon_state = "bayleaf"
	filling_color = "#59693D"
	tastes = list("grass" = 1)