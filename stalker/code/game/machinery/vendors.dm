/obj/machinery/vending/stalker_cigarettes
	name = "\improper cigarette machine"
	desc = "If you want to get cancer, might as well do it in style."
	icon_state = "cigs"
	panel_type = "panel2"
	products = list(
		/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 0,
		/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 0,
		/obj/item/storage/fancy/cigarettes/cigpack_java = 0,
		/obj/item/storage/fancy/cigarettes/cigpack_laika = 0,
		/obj/item/storage/fancy/cigarettes/cigpack_luckystrikes = 0,
		/obj/item/storage/fancy/cigarettes/cigpack_newports = 0,
		/obj/item/lighter = 0,
	)

/obj/machinery/vending/stalker_cigarettes/broken
	name = "\improper broken cigarette machine"
	desc = "If you want to get cancer, might as well do it in style."
	icon_state = "cigs"

/obj/machinery/vending/stalker_cigarettes/broken/Initialize()
	. = ..()
	machine_stat |= BROKEN
	update_appearance()


/obj/machinery/vending/stalker_sovietsoda
	name = "\improper soda machine"
	desc = "If you want to get cancer, might as well do it in style."
	icon_state = "sovietsoda"
	panel_type = "panel8"
	products = list(
		/obj/item/reagent_containers/cup/soda_cans/mineralwater = 0,
		/obj/item/reagent_containers/cup/glass/bottle/terragon = 0,
	)

/obj/machinery/vending/stalker_sovietsoda/broken
	name = "\improper broken soda machine"
	desc = "Old sweet water vending machine."
	icon_state = "sovietsoda"

/obj/machinery/vending/stalker_sovietsoda/broken/Initialize()
	. = ..()
	machine_stat |= BROKEN
	update_appearance()
