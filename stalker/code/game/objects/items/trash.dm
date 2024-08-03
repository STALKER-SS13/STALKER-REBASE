//-- Stalker13 Trash Items --//

/obj/item/trash/stalker
	icon = 'stalker/icons/obj/item/trash.dmi'
	var/variants = 1

/obj/item/trash/stalker/Initialize()
	. = ..()
	if(variants > 1)
		icon_state = "[initial(icon_state)]-[rand(1, variants)]"




//-- Miscellaneous Trash --//

/obj/item/trash/stalker/broken_syringe
	name = "shattered syringe"
	desc = "This is rubbish. It looks like a broken syringe."
	icon_state = "broken_syringe"
	variants = 3

/obj/item/trash/stalker/broken_vinyl
	name = "shattered vinyl"
	desc = "This is rubbish, once upon a time this played music but now its beyond repair."
	icon_state = "broken_vinyl"
	variants = 6

/obj/item/trash/stalker/wood_scrap
	name = "wood scrap"
	desc = "This is rubbish. A scrap of wood that has seen better days."
	icon_state = "wood_scrap"
	variants = 2

/obj/item/trash/stalker/horn
	name = "horn"
	desc = "This is rubbish. It appears to be a horn that came from an animal or was carved out."
	icon_state = "horn"
	variants = 2

/obj/item/trash/stalker/paint_can
	name = "can of paint"
	icon_state = "paint_can"

/obj/item/trash/stalker/cross_necklace
	name = "cross necklace"
	icon_state = "chetki"

/obj/item/trash/stalker/reagent_flask
	name = "reagent flask"
	icon_state = "reagent_flask"

/obj/item/trash/stalker/broken_pocket_watch
	name = "broken pocket watch"
	icon_state = "broken_pocket_watch"

/obj/item/trash/stalker/glass_shard
	name = "glass shard"
	icon_state = "glass_hard"

/obj/item/trash/stalker/dogtag
	name = "ruined dogtag"
	icon_state = "dogtag"

/obj/item/trash/stalker/baseball
	name = "baseball"
	icon_state = "baseball"

/obj/item/trash/stalker/fermenting_jar
	name = "fermenting jar"
	desc = "An empty jar used for fermentation."
	icon_state = "fermenting_jar"





//-- Metal Scrap --//

/obj/item/trash/stalker/metal_scrap
	name = "metal scrap"

/obj/item/trash/stalker/metal_scrap/metal_scrap
	name = "metal scrap"
	desc = "This is rubbish. This is some metal junk."
	icon_state = "metal_scrap"
	variants = 3

/obj/item/trash/stalker/metal_scrap/scrap
	name = "scrap"
	icon_state = "scrap"
	variants = 1

/obj/item/trash/stalker/metal_scrap/metal_parts
	name = "metal parts"
	icon_state = "metal_parts"
	variants = 1

/obj/item/trash/stalker/metal_scrap/barbed_wire
	name = "barbed wire"
	desc = "This is rubbish. Spiky barbwire makes this important to handle with care."
	icon_state = "broken_barbed_wire"

/obj/item/trash/stalker/metal_scrap/rusty_nails
	name = "rusty nails"
	desc = "This is rubbish. It looks like it can still be used to nail something together."
	icon_state = "rusty_nails"
	variants = 2

/obj/item/trash/stalker/metal_scrap/anchor
	name = "anchor"
	desc = "This is rubbish. What is an anchor doing all the way out here?"
	icon_state = "small_anchor"
	variants = 1

/obj/item/trash/stalker/metal_scrap/broken_lock
	name = "broken lock"
	icon_state = "broken_lock"
	variants = 1





//-- Electronics Scrap --//

/obj/item/trash/stalker/electronics_scrap
	name = "electronics scrap"

/obj/item/trash/stalker/electronics_scrap/broken_microphone
	name = "broken microphone"
	icon_state = "broken_microphone"
	variants = 1

/obj/item/trash/stalker/electronics_scrap/broken_flashlight
	name = "broken flashlight"
	icon_state = "broken_flashlight"
	variants = 1

/obj/item/trash/stalker/electronics_scrap/broken_headset
	name = "broken headset"
	icon_state = "broken_headset"
	variants = 1

/obj/item/trash/stalker/electronics_scrap/old_circuit_board
	name = "old circuit board"
	desc = "This is rubbish. It looks like some kind of circuit board."
	icon_state = "circuit_board"
	variants = 3

/obj/item/trash/stalker/electronics_scrap/broken_pda
	name = "broken pda"
	desc = "This is rubbish. The device is broken and wont turn on."
	icon_state = "broken_pda"
	variants = 2

/obj/item/trash/stalker/electronics_scrap/broken_echo
	name = "broken echo"
	desc = "This is rubbish. The device is broken and wont turn on."
	icon_state = "broken_echo"
	variants = 2

/obj/item/trash/stalker/electronics_scrap/broken_bear
	name = "broken bear"
	desc = "This is rubbish. The device is broken and wont turn on."
	icon_state = "broken_bear"
	variants = 2

/obj/item/trash/stalker/electronics_scrap/broken_veles
	name = "broken veles"
	desc = "This is rubbish. The device is broken and wont turn on."
	icon_state = "broken_veles"
	variants = 2

/obj/item/trash/stalker/electronics_scrap/broken_phone
	name = "broken phone"
	desc = "This is rubbish. The device is broken and wont turn on."
	icon_state = "broken_phone"
	variants = 2





//-- Binding Materials --//

/obj/item/trash/stalker/binding_material
	name = "binding material"

/obj/item/trash/stalker/binding_material/steel_wire
	name = "steel wire"
	icon_state = "steel_wire"
	variants = 2

/obj/item/trash/stalker/binding_material/wire
	name = "wire"
	icon_state = "wire"
	variants = 1

/obj/item/trash/stalker/binding_material/vhs
	name = "vhs"
	icon_state = "vhs"

/obj/item/trash/stalker/binding_material/duct_tape
	name = "duct tape"
	icon_state = "duct_tape"

/obj/item/trash/stalker/binding_material/rope
	name = "rope"
	icon_state = "rope"

/obj/item/trash/stalker/binding_material/yarn
	name = "yarn"
	icon_state = "yarn"





//-- Cleanable Trash --//

/obj/item/trash/stalker/cleanable
	name = "DEBUG ITEM"	// Item should delete on being clicked, with a channel.

/obj/item/trash/stalker/cleanable/desk_clutter
	name = "desk clutter"
	icon_state = "desk_clutter"

/obj/item/trash/stalker/cleanable/cigs_trash
	name = "cigarettes"
	icon_state = "cigs_trash"
	variants = 5