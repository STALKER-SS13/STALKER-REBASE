/mob/living/simple_animal/hostile/psy_zombie
	name = "zombie"
	desc = "A shambling hollow corpse who is forever lost to the Zone."
	icon_state = "zombie"
	icon_living = "zombie"
	icon_dead = "zombie_dead"

	vision_range = 15
	aggro_vision_range = 15
	retreat_distance = 5
	see_in_dark = 4
	combat_mode = TRUE
	harm_intent_damage = 10
	melee_damage_lower = 15
	melee_damage_upper = 15
	rapid_melee = 2

	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	speak_emote = list("growls!", "groans!")
	death_message = "seizes up and falls limp!"
	attack_sound = 'sound/weapons/punch1.ogg'
	death_sound = 'stalker/sound/mobs/mutants/death/zombie_die_0.ogg'

	speed = 0
	turns_per_move = 5
	move_to_delay = 2
	maxHealth = 70
	health = 70
	see_invisible = SEE_INVISIBLE_MINIMUM
	minbodytemp = 0
	maxbodytemp = INFINITY
	del_on_death = FALSE
	robust_searching = TRUE
	check_friendly_fire = TRUE
	search_objects = TRUE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	faction = list("stalker_mutants1", "monolith_forces")

/mob/living/simple_animal/hostile/psy_zombie/Initialize()
	. = ..()
	icon_state	= "zombie[rand(1, 22)]"
	icon_living	= "zombie[rand(1, 22)]"
	icon_dead	= "zombie[rand(1, 22)]_dead"

