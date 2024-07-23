

// Military Ready Eats //

/obj/item/storage/box/MRE
	name = "MRE"
	desc = "Ukrainian standard issue twenty-four hour ration pack. Filled with everything a Stalker will need in a day!"
	var/desc_opened = "Ukrainian standard issue twenty-four hour ration pack. Filled with everything a Stalker will need in a day! This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "box1"
	var/icon_state_opened = "box3"
	var/wrapped = 1

/obj/item/storage/box/MRE/New()
	..()
	new /obj/item/food/konserva/galets(src)
	new /obj/item/food/konserva/galets(src)
	new /obj/item/food/konserva/galets(src)
	new /obj/item/food/konserva/galets(src)
	new /obj/item/food/konserva/kasha(src)
	new /obj/item/food/konserva/MREkonserva1(src)
	new /obj/item/food/konserva/MREkonserva2(src)
	new /obj/item/food/konserva/MREkonserva3(src)
	new /obj/item/food/konserva/chocolate(src)
	new /obj/item/reagent_containers/cup/soda_cans/mineralwater(src)

/obj/item/storage/box/MRE/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 10
	atom_storage.set_holdable(list(/obj/item/food/konserva, /obj/item/trash/konserva, /obj/item/reagent_containers/cup/soda_cans))

/obj/item/storage/box/MRE/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)

/obj/item/storage/box/MRE/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	//desc = desc_opened
	user << "<span class='notice'>You unwrap the package</span>"
	wrapped = 0



// CANNED FOODS //

/obj/item/food/konserva
	name = "tourist delight"
	desc = "Tourist's delight, also known as tourist breakfast, is a staple food of The Zone. Legend says these cans of conserva are from a raid against an army warehouse!"
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "konserva"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 13,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("jelly" = 1, "meat" = 1, "lard" = 1)
	foodtypes = MEAT
	var/icon_state_opened = "konserva_open"
	var/desc_opened = "Tourist's delight, also known as tourist breakfast is a staple food of The Zone. Legend says these cans of konserva are from a raid against an army warehouse! This one is opened."
	var/wrapped = TRUE

/obj/item/food/konserva/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/food/konserva/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	user << "<span class='notice'>You open the package.</span>"
	wrapped = 0

/obj/item/trash/konserva
	name = "empty can"
	desc = "An empty delight can. Trash!"
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "konserva_empty"
	w_class = 2

/obj/item/food/konserva/shproti
	name = "anchovies"
	desc = "European sprats originating from the Latvian portcity of Riga. They've been preserved in a thick sunflower oil."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "shproti0"
	icon_state_opened = "shproti1"
	trash_type = /obj/item/trash/konserva/shproti
	desc_opened = "European sprats originating from the Latvian port-city of Riga. They've been preserved in a thick sunflower oil. This one is opened."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("anchovies" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/trash/konserva/shproti
	name = "empty can"
	icon_state = "shproti2"
	desc = "An empty can that smells of fish. Trash!"

/obj/item/food/konserva/soup
	name = "soup"
	desc = "Condensed soup that usually would be thinned with water. A staple of tourists within the zone."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "soup0"
	icon_state_opened = "soup1"
	trash_type = /obj/item/trash/konserva/soup
	desc_opened = "Condensed soup that usually would be thinned with water. A staple of tourists within the zone. This one is opened."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("vegetables" = 1, "broth" = 1)
	foodtypes = VEGETABLES

/obj/item/trash/konserva/soup
	name = "empty can"
	icon_state = "soup2"

/obj/item/food/konserva/bobi
	name = "canned meal (bobi)"
	desc = "A can of 'Bean Surprise'. A melody of cheap flavourless nibbles of meat and watery beans."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "bobi0"
	icon_state_opened = "bobi1"
	trash_type = /obj/item/trash/konserva/bobi
	desc_opened = "Looks appetizing."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("beans" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/trash/konserva/bobi
	name = "empty can"
	icon_state = "bobi2"

/obj/item/food/konserva/govyadina2
	name = "canned meal (stew)"
	desc = "A can of beef-stew! An avidly loved staple of those who scour around old ruins in search for loot!"
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "govyadina0"
	icon_state_opened = "govyadina1"
	trash_type = /obj/item/trash/konserva/govyadina
	desc_opened = "A can of beef-stew! An avidly loved staple of those who scour around old ruins in search for loot! This one is opened."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("meat" = 1, "lard" = 1)
	foodtypes = MEAT

/obj/item/trash/konserva/govyadina
	name = "empty can"
	icon_state = "govyadina2"

/obj/item/food/konserva/fish
	name = "canned meal (fish)"
	desc = "Canned fish. Simple, easy to digest and generally well-liked by most in the Zone."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "fish0"
	icon_state_opened = "fish1"
	trash_type = /obj/item/trash/konserva/fish
	desc_opened = "Canned fish. Simple, easy to digest and generally well-liked by most in the Zone. This one is opened."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD

/obj/item/trash/konserva/fish
	name = "empty can"
	icon_state = "fish2"

/obj/item/food/konserva/sirok
	name = "canned snack (cream cheese)"
	desc = "A can of creamed cheese commonly seen in UAF mountaineer rations. It... might be in date."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "sirok"
	icon_state_opened = "sirok1"
	trash_type = /obj/item/trash/konserva/sirok
	desc_opened = "A can of creamed cheese commonly seen in UAF mountaineer rations. This one is opened and looks in date."
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10)
	tastes = list("cream cheese")
	foodtypes = DAIRY

/obj/item/trash/konserva/sirok
	name = "trash"
	//weight = 0.01
	icon_state = "sirok2"

/obj/item/food/konserva/kasha
	name = "canned meal (porridge)"
	desc = "Vacuum-sealed can of boiled buckwheat porridge. Isn't this traditionally baked?"
	desc_opened = "Vacuum-sealed can of boiled buckwheat porridge. Isn't this traditionally baked? This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "Kasha1"
	icon_state_opened = "Kasha2"
	trash_type = /obj/item/trash/konserva/kasha
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("boiled grain" = 1)
	foodtypes = GRAIN

/obj/item/trash/konserva/kasha
	name = "trash"
	icon_state = "Kasha3"

/obj/item/food/konserva/MREkonserva1
	name = "canned meal (pork)"
	desc = "Canned pork, salt n' spices. Doesn't get much simpler or wholesome in the zone!"
	desc_opened = "Canned pork, salt n' spices. Doesn't get much simpler or wholesome in the zone! This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "TushenkaRed1"
	icon_state_opened = "TushenkaRed2"
	trash_type = /obj/item/trash/konserva/MREkonserva1
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20)
	tastes = list("pork" = 1, "assorted spices" = 1)
	foodtypes = MEAT

/obj/item/trash/konserva/MREkonserva1
	name = "trash"
	icon_state = "TushenkaRed3"

/obj/item/food/konserva/MREkonserva2
	name = "canned meal (chicken)"
	desc = "Canned chicken with an assortment of vegetables. A hearty meal in The Zone."
	desc_opened = "Canned chicken with an assortment of vegetables. A hearty meal in The Zone. This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "TushenkaGreen1"
	icon_state_opened = "TushenkaGreen2"
	trash_type = /obj/item/trash/konserva/MREkonserva2
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,)
	tastes = list("chicken" = 1, "vegetables" = 1, "broth" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/trash/konserva/MREkonserva2
	name = "trash"
	icon_state = "TushenkaGreen3"

/obj/item/food/konserva/MREkonserva3
	name = "canned meal (veggies)"
	desc = "Canned meat with an assortment of vegetables. A healthy and substantial meal within The Zone!"
	desc_opened = "Canned meat with an assortment of vegetables. A healthy and substantial meal within The Zone! This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "TushenkaBlue1"
	icon_state_opened = "TushenkaBlue2"
	trash_type = /obj/item/trash/konserva/MREkonserva3
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("vegetables" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/trash/konserva/MREkonserva3
	name = "trash"
	icon_state = "TushenkaBlue3"


// PICKLED FOODS //

/obj/item/food/fermented/tomaty
	name = "pickled tomatoes"
	desc = "Pickled tomatoes of unknown age. Try at your own peril."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "tomaty"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 10)
	tastes = list("pickled tomatoes" = 1)
	foodtypes = VEGETABLES

/obj/item/food/fermented/sauerkraut
	name = "sauerkraut"
	desc = "Pickled cabbage of unknown age. Try at your own peril."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "sauerkraut"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 10)
	tastes = list("sauerkraut" = 1)
	foodtypes = VEGETABLES


// PRESERVED MEATS //

/obj/item/food/kolbasa
	name = "diet sausage"
	desc = "Made from a mixture of chicken and soya, the \"diet\" sausage is often, for lack of other options, a Stalker's breakfast, lunch and dinner in one."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "kolbasa"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10)
	tastes = list("sausage" = 1)
	foodtypes = MEAT


// MISCELLANEOUS //

/obj/item/food/konserva/galets
	name = "galets"
	desc = "Dry crackers that'd chip the tooth of anyone thinking this was a buttery biscuit!"
	desc_opened = "Dry crackers that'd chip the tooth of anyone thinking this was a buttery biscuit! This one is opened."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "GAL1"
	icon_state_opened = "GAL2"
	trash_type = /obj/item/trash/konserva/galets
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10)
	tastes = list("crackers" = 1)
	foodtypes = GRAIN

/obj/item/trash/konserva/galets
	name = "trash"
	w_class = WEIGHT_CLASS_TINY
	icon_state = "GAL3"

/obj/item/food/konserva/snikers
	name = "snikers"
	desc = "Snickers. A reminder of home for western-tourists, a oddly sweet snack for locals."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "snikers"
	icon_state_opened = "snikers1"
	trash_type = /obj/item/trash/konserva/snikers
	desc_opened = "Snickers. A reminder of home for western-tourists, a oddly sweet snack for locals. This one is unwrapped."
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/sugar = 5,
		/datum/reagent/medicine/omnizine = 3)
	tastes = list("artifical choclate" = 1)
	foodtypes = JUNKFOOD | SUGAR

/obj/item/trash/konserva/snikers
	name = "trash"
	icon_state = "snikers2"
	w_class = WEIGHT_CLASS_TINY
	desc = "An empty Snickers wrapper. Trash!"

/obj/item/food/konserva/chocolate
	name = "chocolate"
	desc = "A bar of chocolate. A reminder of home in this harsh place."
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "Choco1"
	icon_state_opened = "Choco2"
	trash_type = /obj/item/trash/konserva/chocolate
	desc_opened = "A bar of chocolate. A reminder of home in this harsh place. This one is opened."
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/sugar = 1,
		/datum/reagent/medicine/omnizine = 3)
	tastes = list("chocolate" = 1)
	foodtypes = JUNKFOOD

/obj/item/trash/konserva/chocolate
	name = "trash"
	w_class = WEIGHT_CLASS_TINY
	icon_state = "Choco3"

/obj/item/food/konserva/thebar
	name = "russian chocolate bar"
	desc = "A reminder of the life abandoned on the outside world by the locals.. This chocolate bar is rich with both flavour and homely vibes!"
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "choco1"
	icon_state_opened = "choco2"
	trash_type = /obj/item/trash/konserva/snikers
	desc_opened =  "A reminder of the life abandoned on the outside world by the locals.. This chocolate bar is rich with both flavour and homely vibes! This one has been opened."
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/toxin/lipolicide = 10,
		/datum/reagent/consumable/sugar = 1)
	tastes = list("chocolate" = 1, "medicine" = 1)
	foodtypes = JUNKFOOD

/obj/item/food/baton
	name = "bread"
	desc = "A loaf of bread of completely questionable origin. Nobody has complained of off-flavours or issues with it in all the years it has been apart of a Stalkers diet!"
	icon = 'stalker/icons/objects/items/food.dmi'
	icon_state = "baton_stalker"
	w_class = WEIGHT_CLASS_TINY
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10)
	tastes = list("bread" = 1)
	foodtypes = GRAIN