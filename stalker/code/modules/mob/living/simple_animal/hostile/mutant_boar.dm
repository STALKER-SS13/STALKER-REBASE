/mob/living/simple_animal/hostile/retaliate/mutant_boar
	name = "boar"
	desc = "While less touched by mutation physically, as compared to other mutants, the Boars of the Zone remains ugly and loathsome. The smell coming from its mouth smells of carrion and grass. Its posture shows that he is able to go at full speed towards an enemy, so staying away would be the best option to kill him."
	icon_state = "boar"
	icon_living = "boar"
	icon_dead = "boar_dead"

	vision_range = 15
	aggro_vision_range = 15
	retreat_distance = 10
	see_in_dark = 4
	combat_mode = TRUE
	harm_intent_damage = 5
	melee_damage_lower = 25
	melee_damage_upper = 40

	attack_verb_continuous = "crashes into"
	attack_verb_simple = "crash into"
	speak_emote = list("grunts")
	death_message = "collapses to the ground!"
	attack_sound = 'stalker/sound/mobs/mutants/attack/boar_attack.ogg'
	death_sound = 'stalker/sound/mobs/mutants/death/boar_death.ogg'

	speed = 5
	turns_per_move = 15
	move_to_delay = 3
	maxHealth = 180
	health = 180
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
//		/obj/item/stalker/loot/mutantparts/boar_leg = 1,
//		/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/boar_meat = 1)
