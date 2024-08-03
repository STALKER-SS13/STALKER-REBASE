/mob/living/simple_animal/hostile/bloodsucker
	name = "bloodsucker"
	desc = "A rather disgusting-looking type of mutant with the same physical properties as a human besides the absence of genital organs,thus making the difference between male or female more difficult to tell. Tentacles covered with blood seem to have replaced the lower part of the jaw, and sharp claws have replaced the end of the fingers. The guttural breathing of the mutant freezes your blood."
	icon_state = "bloodsucker"
	icon_living = "bloodsucker"
	icon_dead = "bloodsucker_dead"

	vision_range = 15
	aggro_vision_range = 15
	retreat_distance = 5
	see_in_dark = 4
	combat_mode = TRUE
	harm_intent_damage = 10
	melee_damage_lower = 30
	melee_damage_upper = 35
	rapid_melee = 2

	attack_verb_continuous = "slashes"
	attack_verb_simple = "slash"
	speak_emote = list("growls", "roars")
	death_message = "chokes up blood and falls to the ground!"
	attack_sound = 'stalker/sound/mobs/mutants/attack/bloodsucker_attack.ogg'
	death_sound = 'stalker/sound/mobs/mutants/death/bloodsucker_death.ogg'

	speed = 3
	turns_per_move = 15
	move_to_delay = 1.8
	maxHealth = 300
	health = 300
	see_invisible = SEE_INVISIBLE_MINIMUM
	minbodytemp = 0
	maxbodytemp = INFINITY
	del_on_death = FALSE
	robust_searching = TRUE
	check_friendly_fire = TRUE
	search_objects = FALSE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	faction = list("stalker_mutants1", "monolith_forces")
//	butcher_results = list(
//		/obj/item/stalker/loot/mutantparts/bloodsucker = 1,
//		/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/bloodsucker_meat = 1)


/mob/living/simple_animal/hostile/mutant/bloodsucker/Life()
	if(..())
		if(ckey)
			return
		handle_invisibility()

/mob/living/simple_animal/hostile/mutant/bloodsucker/proc/handle_invisibility()
	if(target)
		playsound(src, 'stalker/sound/mobs/mutants/idle/bloodsucker_breath.ogg', 40, 0)
		switch(get_dist(src, target))
			if(0 to 2)
				icon_state = "bloodsucker"
			else
				icon_state = "bloodsucker_invisible"
		return

	if(icon_state != initial(icon_state))
		icon_state = initial(icon_state)


/mob/living/simple_animal/hostile/mutant/bloodsucker/AttackingTarget()
	..()
	icon_state = "bloodsucker"
	if(istype(target, /mob/living/carbon))
		var/mob/living/carbon/C = target
		if(C.health > 35)
			icon_state = "bloodsucker_invisible"
			var/anydir = pick(GLOB.alldirs)
			walk_away(src, get_step(src, anydir), 7, move_to_delay)