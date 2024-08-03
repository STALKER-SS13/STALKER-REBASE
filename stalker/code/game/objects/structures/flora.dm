/*-------------------*\
|>>>> Wild Plants <<<<|
\*-------------------*/

/obj/structure/flora/root
	name = "wild weeds"
	desc = "A useless weed which serves no purpose but to steal from other plants."
	icon = 'stalker/icons/obj/structure/flora.dmi'
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE

/obj/structure/flora/root/Initialize()
	icon_state = "wild_root[rand(1, 12)]"
	. = ..()


// Zona Potato
/obj/structure/flora/root/wild_potato
	name = "wild potato"
	desc = "An essential ingredient to any slavic diet."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/potato/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You unearth a single potato."
	harvest_message_med = "You unearth some potatoes, leaving a few battered ones."
	harvest_message_high = "You unearth several plump, fresh potatoes."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona Tato
/obj/structure/flora/root/wild_tato
	name = "wild tato"
	desc = "The outside looks like a tomato, but the inside is brown. Tastes as absolutely disgusting as it looks, but will keep you from starving."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/tato = 1)
	harvest_amount_high = 4
	harvest_message_low = "You unearth a single tato."
	harvest_message_med = "You unearth some tatoes, leaving a few battered ones."
	harvest_message_high = "You unearth several plump, fresh tatoes."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Cave Fungus
/obj/structure/flora/root/wild_fungus
	name = "wild fungus"
	desc = "This edible strain of fungus usually grows in dark places and is said to have anti-toxic properties."
	icon_state = "wild_fungus"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/mushroom/fungus = 1)
	harvest_amount_high = 4
	harvest_message_low = "You tear a single whole fungus from the ground."
	harvest_message_med = "You tear some fungi from the ground, leaving a few uselessly small ones."
	harvest_message_high = "You tear up several nice dense fungi."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES

/obj/structure/flora/root/wild_fungus/Initialize()
	icon_state = "wild_fungus[rand(1, 4)]"
	. = ..()


// Zona Berries
/obj/structure/flora/root/wild_berries
	name = "wild fungus"
	desc = "Nutritious!"
	icon_state = "wild_berries"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/berries = 1)
	harvest_amount_high = 4
	harvest_message_low = "You pick a single berry from the bush."
	harvest_message_med = "You pick some berries, and discard a few moldy ones."
	harvest_message_high = "You pick plenty of juicy berries."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES

/obj/structure/flora/root/wild_berries/Initialize()
	icon_state = "wild_berries[rand(1, 4)]"
	. = ..()


// Zona Carrot
/obj/structure/flora/root/wild_bayleaf
	name = "wild bayleaf"
	desc = "Nutritious!"
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/seeds/bayleaf = 1)
	harvest_amount_high = 4
	harvest_message_low = "You pick a single bay leaf from the plant."
	harvest_message_med = "You pick some bayleaves and discard some withered ones."
	harvest_message_high = "You pick several large bay leaves."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES

/obj/structure/flora/root/wild_bayleaf/Initialize()
	icon_state = "wild_bayleaf[rand(1, 4)]"
	. = ..()


// Zona Carrot
/obj/structure/flora/root/wild_carrot
	name = "wild carrot"
	desc = "Some free range carrots!"
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/carrot/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single carrot."
	harvest_message_med = "You uproot some carrots and discard some tiny ones."
	harvest_message_high = "You uproot several whole carrots."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona Parsnip
/obj/structure/flora/root/wild_parsnip
	name = "wild parsnip"
	desc = "Some free range parsnips!"
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/carrot/parsnip/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single parsnip."
	harvest_message_med = "You uproot some parsnips and discard some tiny ones."
	harvest_message_high = "You uproot several whole parsnips."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona White-Beet
/obj/structure/flora/root/wild_whitebeet
	name = "wild white-beet"
	desc = "Nothing beats beets."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/seeds/beet/white/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single white-beet."
	harvest_message_med = "You uproot some white-beet and discard some tiny ones."
	harvest_message_high = "You uproot several whole white-beet."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona Red-Beet
/obj/structure/flora/root/wild_redbeet
	name = "wild red-beet"
	desc = "Nothing beats beets."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/seeds/beet/red/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single red-beet."
	harvest_message_med = "You uproot some red-beet and discard some tiny ones."
	harvest_message_high = "You uproot several whole red-beet."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona Garlic
/obj/structure/flora/root/wild_garlic
	name = "wild garlic"
	desc = "A hardy, delicious vegetable used to flavor many dishes. You can never have enough."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/garlic/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single garlic bulb."
	harvest_message_med = "You uproot some garlic bulbs and discard some decrepit ones."
	harvest_message_high = "You uproot several whole garlic bulbs."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES


// Zona Onion
/obj/structure/flora/root/wild_onion
	name = "wild onion"
	desc = "A large round onion. A little mishapen due to the environment it comes from, but tasty nonetheless."
	icon_state = "wild_root1"
	anchored = TRUE
	density = FALSE
	harvest_time = 20
	product_types = list(/obj/item/food/grown/onion/zona = 1)
	harvest_amount_high = 4
	harvest_message_low = "You uproot a single onion bulb."
	harvest_message_med = "You uproot some onions and discard some decrepit ones."
	harvest_message_high = "You uproot several whole onions."
	regrowth_time_low = 5 MINUTES
	regrowth_time_high = 8 MINUTES




