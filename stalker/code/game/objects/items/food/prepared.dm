

// JERKY //

/obj/item/food/sosjerky/mutant
	name = "homemade mutant jerky"
	desc = "Homemade mutant jerky made from the finest in the Zone."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = ""
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/salt = 2)
	tastes = list("jerky" = 1)
	foodtypes = MEAT



// KEKBABS //

/obj/item/food/kebab/mutantmeat
	name = "mutant meat kebab"
	desc = "Pieces of braised mutant meat cooked with tons of pepper n' salt on a rod! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meatkebab"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 5)
	tastes = list("grilled meat" = 1)
	foodtypes = MEAT

/obj/item/food/kebab/mutantonionmeat
	name = "mutant meat and onion kebab"
	desc = "Pieces of braised mutant meat and onions cooked with tons of pepper n' salt on arod! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "onionmeatkebab"
	w_class = WEIGHT_CLASS_SMALL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 5)
	tastes = list("grilled meat" = 1, "onion" = 1)
	foodtypes = MEAT | VEGETABLES



// PASHTET

/obj/item/food/pashtet/mutantmix
	name = "homemade mutant pashtet"
	desc = "Homemade mutant meat pashtet made from all different parts of several kinds of mutants."
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 35,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT

/obj/item/food/pashtet/mutantmeatmix
	name = "homemade mutant pashtet"
	desc = "Homemade mutant meat pashtet made from the finest in the Zone."
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 35,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT



// GOULASH //

/obj/item/food/goulash/ratmeat
	name = "rat meat goulash"
	desc = "Pieces of braised rat meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "lowgrade_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/fleshmeat
	name = "flesh meat goulash"
	desc = "Pieces of braised Flesh meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/dogmeat
	name = "dog meat goulash"
	desc = "Pieces of braised mutant dog meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/boarmeat
	name = "boar meat goulash"
	desc = "Pieces of braised mutant boar meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/snorkmeat
	name = "snork meat goulash"
	desc = "Pieces of braised snork meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/pseudomeat
	name = "pseudodog meat goulash"
	desc = "Pieces of braised psuedodog meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/bloodsuckermeat
	name = "bloodsucker meat goulash"
	desc = "Pieces of braised bloodsucker meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/controllermeat
	name = "controller meat goulash"
	desc = "Pieces of braised controller meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/mutantdelight
	name = "mutant delight goulash"
	desc = "A variety of braised mutant meat cooked with tons of pepper n' salt with quality cultured mushrooms and all sorts of veggies! Nothing warms a Stalkers belly better!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "meat_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("braised meat" = 1, "mushrooms" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES



// BORSCHT //

/obj/item/food/borscht/poor
	name = "poor mans borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "beetsoup"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/medicine/omnizine = 4,
		/datum/reagent/consumable/salt = 2)
	tastes = list("grit" = 1)
	foodtypes = VEGETABLES

/obj/item/food/borscht
	name = "plain borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "beetsoup"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/medicine/omnizine = 7,
		/datum/reagent/consumable/salt = 2)
	tastes = list("gritty beet" = 1)
	foodtypes = VEGETABLES

/obj/item/food/borscht/luxury
	name = "luxury borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "beetsoup"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("beet" = 1, "assorted spices" = 1)
	foodtypes = VEGETABLES

/obj/item/food/okroshkasoup
	name = "okroshka soup"
	desc = "Okróshka is a cold soup of Russian origin and probably originated in the Volga region. The classic soup is a mix of mostly raw vegetables, boiled potatoes, eggs, and a cooked meat such as beef, veal, sausages, or ham with kvass, which is a non-alcoholic beverage made from fermented black or rye bread."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "lowgrade_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 35,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("cream" = 1, "assorted veggies" = 1, "assorted spices" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY

/obj/item/food/ukha
	name = "ukha soup"
	desc = "Ukha started to be used as a term for fish broth in Russian cuisine in the late 17th to early 18th centuries. In earlier times, this term referred to thick meat broths, and then later chicken. Beginning in the 15th century, fish was more and more often used to prepare ukha, thus creating a dish that had a distinctive taste among soups. In the 19th century, many travellers visiting Russia claimed ukha to be one of the best dishes in Russian cuisine."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 10,
		/datum/reagent/medicine/omnizine = 10,
		/datum/reagent/consumable/salt = 2)
	tastes = list("fish" = 1, "broth" = 1)
	foodtypes = SEAFOOD



// STEW //

/obj/item/food/goulash/putrid
	name = "putrid goulash"
	desc = "Pieces of scrap meat cooked in a thick-gruel made of mutant tato stock. It isn't very tasty, to say the least!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 17,
		/datum/reagent/medicine/omnizine = 1,
		/datum/reagent/consumable/salt = 2)
	tastes = list("tato" = 1, "putrid broth" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/putrescent
	name = "putrescent goulash"
	desc = "Pieces of diet sausage meat cooked in a thick-gruel made of pickled tomato stock. It isn't very tasty, to say the least!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 2)
	tastes = list("pickled tomato" = 1, "sausage" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/lowgrade
	name = "low-grade goulash"
	desc = "Pieces of scrap meat cooked in a thin-gruel made of mushroom stock. It isn't very tasty, but it'll keep you from starving to death!"
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "lowgrade_goulash"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 20,
		/datum/reagent/medicine/omnizine = 5,
		/datum/reagent/consumable/salt = 2)
	tastes = list("meat scraps" = 1, "mushroom stock" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/goulash/shroom
	name = "mushroom goulash"
	desc = "A grueling meal offered by barkeeps for those down on their luck. Consisting of whatever crap just barely fits for human-consumption."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/salt = 2)
	tastes = list("mushroom" = 1)
	foodtypes = VEGETABLES



// STEW //

/obj/item/food/meatandveggiestew
	name = "meat and veggie stew"
	desc = "Pieces of meat with vegetables in a bowl. It doesn't look very edible."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 30,
		/datum/reagent/consumable/nutriment/vitamin = 5,
		/datum/reagent/medicine/omnizine = 3)
	tastes = list("meat" = 1, "veggies" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/veggiestew
	name = "veggie stew"
	desc = "Pieces of vegetables in a bowl. It doesn't look very edible."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "stew"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 25,
		/datum/reagent/consumable/nutriment/vitamin = 3,
		/datum/reagent/medicine/omnizine = 2)
	tastes = list("meat" = 1, "veggies" = 1)
	foodtypes = MEAT | VEGETABLES

/obj/item/food/doctorsausage
	name = "doctor sausage"
	desc = "A boiled, pale pink sausage made out of heavily processed beef. Produced in the USSR, the sausage was intended to be a dietary supplement for people exhibiting signs of prolonged starvation."
	icon = 'stalker/icons/obj/item/food.dmi'
	icon_state = "sausage"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 15,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/medicine/omnizine = 1)
	tastes = list("processed meat" = 1)
	foodtypes = MEAT