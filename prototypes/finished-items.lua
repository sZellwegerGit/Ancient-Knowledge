local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
 
local atomic_artillery_shell ={
	type = "ammo",
	name = "atomic-artillery-shell",
	icon = "__AncientKnowledge__/graphics/items/atomic-shell.png",
	ammo_category = "artillery-shell",
	ammo_type =
	{
	  target_type = "position",
	  action =
	  {
		type = "direct",
		action_delivery =
		{
		  type = "artillery",
		  projectile = "atomic-artillery-projectile",
		  starting_speed = 1,
		  direction_deviation = 0,
		  range_deviation = 0,
		  source_effects =
		  {
			type = "create-explosion",
			entity_name = "artillery-cannon-muzzle-flash"
		  }
		}
	  }
	},
	subgroup = "ammo",
	order = "d[explosive-cannon-shell]-e[artillery]",
	inventory_move_sound = item_sounds.artillery_large_inventory_move,
	pick_sound = item_sounds.artillery_large_inventory_pickup,
	drop_sound = item_sounds.artillery_large_inventory_move,
	stack_size = 1,
	weight = 500*kg
}

data:extend({
	atomic_artillery_shell
})