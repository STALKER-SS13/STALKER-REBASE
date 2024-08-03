

// CANNED DRINKS //

/obj/item/reagent_containers/cup/soda_cans/mineralwater
	name = "mineral water"
	desc = "Mineral water - in a can."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "canned_water"
	list_reagents = list(/datum/reagent/water = 30)

/obj/item/reagent_containers/cup/soda_cans/vodka
	name = "vodka water"
	desc = "Vodka in a pop-top can."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "canned_vodka"
	list_reagents = list(/datum/reagent/consumable/ethanol/vodka = 30)


/obj/item/reagent_containers/cup/glass/bottle/terragon
	name = "terragon soda"
	desc = "Terragon soda in a fancy glass bottle."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "terragon"
	fill_icon = 'stalker/icons/obj/item/reagent_fillings.dmi'
	volume = 30
	fill_icon_thresholds = list(0, 10, 20, 25, 30)
	list_reagents = list(/datum/reagent/consumable/space_cola = 30)