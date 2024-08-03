/mob/living/simple_animal/hostile/snork
	name = "snork"
	desc = "The Snork is wearing remains of military clothes and a broken gas mask with a hanging breathing tube. Its lips have been shredded, probably by itself, and their skin has a greenish hue. It moves on all fours and the lithe physique allows it to jump up to 10 meters. Their nails are as sharp as claws. The lenses of the gas mask do not allow us to say whether it is blind or not."
	icon_state = "snork"
	icon_living = "snork"
	icon_dead = "snork_dead"

	vision_range = 15
	aggro_vision_range = 15
	retreat_distance = 10
	see_in_dark = 4
	combat_mode = TRUE
	harm_intent_damage = 5
	melee_damage_lower = 30
	melee_damage_upper = 20

	attack_verb_continuous = "claws at"
	attack_verb_simple = "claws at"
	speak_emote = list("growls!", "roars!", "sneers")
	death_message = "seizes up and falls limp!"
	attack_sound = 'stalker/sound/mobs/mutants/attack/snork_attack.ogg'
	death_sound = 'stalker/sound/mobs/mutants/death/snork_death.ogg'

	speed = 3
	turns_per_move = 15
	move_to_delay = 2
	maxHealth = 120
	health = 120
	see_invisible = SEE_INVISIBLE_MINIMUM
	minbodytemp = 0
	maxbodytemp = INFINITY
	del_on_death = FALSE
	robust_searching = TRUE
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	faction = list("stalker_mutants1", "monolith_forces")

	ranged = TRUE
	ranged_cooldown_time = 2 SECONDS

	var/leaping = 0

/mob/living/simple_animal/hostile/snork/New()
	..()
	if(prob(50))
		icon_state = "snork2"
		icon_living = "snork2"
		icon_dead = "snork2_dead"

/mob/living/simple_animal/hostile/snork/OpenFire()
	if(get_dist(src, target) <= 4)
		leaping = TRUE
		throw_at(target, 7, 1, spin=FALSE, diagonals_first = 1)
		leaping = FALSE
		ranged_cooldown = ranged_cooldown_time
	return

/mob/living/simple_animal/hostile/snork/throw_impact(atom/A)
	if(!leaping)
		return ..()
	if(A)
		if(istype(A, /mob/living))
			var/mob/living/L = A
			L.visible_message("<span class ='danger'>[src] pounces on [L]!</span>", "<span class ='userdanger'>[src] pounces on you!</span>")
			L.AdjustStun(20)
			sleep(2) //Runtime prevention (infinite bump() calls on hulks)
			step_towards(src,L)
		else if(A.density && !A.CanPass(src))
			visible_message("<span class ='danger'>[src] smashes into [A]!</span>", "<span class ='alertalien'>[src] smashes into [A]!</span>")
		if(leaping)
			leaping = FALSE
			update_icons()