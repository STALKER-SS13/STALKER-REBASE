/mob/living/simple_animal/hostile/retaliate/flesh
	name = "flesh"
	desc = "This abomination is a horribly mutated pig affected by radiation. Its three eyes have lost all the vigor of life and stare blankly. Despite the large and heavy legs, it seems to be able to move at a decent speed, and is apparently able to catch up with a running human."
	icon_state = "flesh"
	icon_living = "flesh"
	icon_dead = "flesh_dead"

	vision_range = 15
	aggro_vision_range = 15
	retreat_distance = 10
	see_in_dark = 4
	combat_mode = TRUE
	harm_intent_damage = 5
	melee_damage_lower = 25
	melee_damage_upper = 10

	attack_verb_continuous = "crashes into"
	attack_verb_simple = "crash into"
	speak_emote = list("grunts")
	death_message = "stops dead and falls over itself!"
	attack_sound = 'stalker/sound/mobs/mutants/attack/flesh_attack.ogg'
	death_sound = 'stalker/sound/mobs/mutants/death/flesh_death.ogg'

	speed = 5
	turns_per_move = 15
	move_to_delay = 3
	maxHealth = 60
	health = 60
	see_invisible = SEE_INVISIBLE_MINIMUM
	minbodytemp = 0
	maxbodytemp = INFINITY
	del_on_death = FALSE
	robust_searching = TRUE
	search_objects = TRUE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	faction = list("stalker_mutants1")
//	butcher_results = list(
//		/obj/item/stalker/loot/mutantparts/flesh_eye = 1,
//		/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/flesh_meat = 1)