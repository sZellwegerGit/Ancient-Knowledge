local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
 
local fulogra_personal_solar_panel_item = {
	type = "item",
	name = "fulgora-solar-panel-equipment",
	icon = "__AncientKnowledge__/graphics/items/fulgora-solar-panel-equipment.png",
	place_as_equipment_result = "fulgora-solar-panel-equipment",
	subgroup = "equipment",
	order = "a[energy-source]-b[solar-panel]",
	inventory_move_sound = item_sounds.electric_large_inventory_move,
	pick_sound = item_sounds.electric_large_inventory_pickup,
	drop_sound = item_sounds.electric_large_inventory_move,
	stack_size = 10
}
 
local fulogra_personal_solar_panel = {
	type = "solar-panel-equipment",
	name = "fulgora-solar-panel-equipment",
	sprite =
	{
	  filename = "__AncientKnowledge__/graphics/equipment/fulgora-solar-panel-equipment.png",
	  width = 64,
	  height = 64,
	  priority = "medium",
	  scale = 0.5
	},
	shape =
	{
	  width = 1,
	  height = 1,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "primary-output"
	},
	power = "75kW",
	categories = {"armor"}
}

local personal_laser_defense_mk2_item = {
	type = "item",
	name = "personal-laser-defense-equipment-mk2",
	icon = "__AncientKnowledge__/graphics/items/personal-laser-defense-equipment-mk2.png",
	place_as_equipment_result = "personal-laser-defense-equipment-mk2",
    subgroup = "military-equipment",
    order = "b[active-defense]-b[personal-laser-defense-equipment-mk2]",
    inventory_move_sound = item_sounds.turret_inventory_move,
    pick_sound = item_sounds.turret_inventory_pickup,
    drop_sound = item_sounds.turret_inventory_move,
    stack_size = 10,
    weight = 100*kg
}

local personal_laser_defense_mk2 = {
	type = "active-defense-equipment",
	name = "personal-laser-defense-equipment-mk2",
	sprite =
	{
	  filename = "__AncientKnowledge__/graphics/equipment/personal-laser-defense-equipment-mk2.png",
	  width = 128,
	  height = 128,
	  priority = "medium",
	  scale = 0.5
	},
	shape =
	{
	  width = 3,
	  height = 3,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "secondary-input",
	  buffer_capacity = "600kJ"
	},

	attack_parameters =
	{
	  type = "beam",
	  cooldown = 40,
	  range = 20,
	  range_mode = "center-to-bounding-box",
	  damage_modifier = 3.0,
	  ammo_category = "laser",
	  ammo_type =
	  {
		energy_consumption = "150kJ",
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "beam",
			beam = "laser-beam",
			max_length = 15,
			duration = 40,
			source_offset = {0, -1.31439 }
		  }
		}
	  }
	},

	automatic = true,
	categories = {"armor"}
}

local biter_pet_equipment_item = {
	type = "item",
	name = "biter-pet-equipment",
	icon = "__AncientKnowledge__/graphics/items/biter-pet-equipment.png",
	place_as_equipment_result = "biter-pet-equipment",
    subgroup = "military-equipment",
    order = "b[active-defense]-c[biter-pet-equipment]",
	inventory_move_sound = item_sounds.electric_small_inventory_move,
	pick_sound = item_sounds.electric_small_inventory_pickup,
	drop_sound = item_sounds.electric_small_inventory_move,
	stack_size = 5,
	weight = 100 * kg,
	enabled = true
}

local biter_pet_equipment = {
	type = "active-defense-equipment",
	name = "biter-pet-equipment",
	sprite =
	{
	  filename = "__AncientKnowledge__/graphics/equipment/biter-pet-equipment.png",
	  width = 128,
	  height = 128,
	  priority = "medium",
	  scale = 0.5
	},
	shape =
	{
	  width = 3,
	  height = 3,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "secondary-input",
	  buffer_capacity = "12MJ"
	},

	attack_parameters =
	{
	  type = "beam",
	  cooldown = 600,
	  range = 4,
	  range_mode = "center-to-bounding-box",
	  damage_modifier = 0.0,
	  ammo_category = "laser",
	  ammo_type =
	  {
		energy_consumption = "6MJ",
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
			  {
				  type = "create-entity",
				  entity_name = "friendly-biter",
				  as_enemy = false,
				  offset_deviation = {{-1, -1}, {1, 1}},
				  repeat_count = 2,
				  trigger_created_entity = true
			  }
			}
		  }
		}
	  }
	},

	automatic = true,
	categories = {"armor"}
}
 
local rapid_rocket_launcher = {
	type = "gun",
	name = "rapid-rocket-launcher",
	icon = "__AncientKnowledge__/graphics/items/rapid-rocket-launcher.png",
	subgroup = "gun",
	order = "e[rapid-rocket-launcher]",
	inventory_move_sound = item_sounds.ammo_large_inventory_move,
	pick_sound = item_sounds.ammo_large_inventory_pickup,
	drop_sound = item_sounds.ammo_large_inventory_move,
	attack_parameters =
	{
	  type = "projectile",
	  ammo_category = "rocket",
	  movement_slow_down_factor = 0.5,
	  cooldown = 10,
	  projectile_creation_distance = 0.6,
	  range = 45,
	  damage_modifier = 0.86,
	  projectile_center = {-0.17, 0},
	  sound =
	  {
		filename = "__base__/sound/fight/rocket-launcher.ogg",
		volume = 0.7,
		modifiers = volume_multiplier("main-menu", 0.9)
	  },
	},
	stack_size = 5
}
 
local atomic_artillery_shell = {
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
	weight = 3000*kg
}

local biter_artillery_shell ={
	type = "ammo",
	name = "biter-artillery-shell",
	icon = "__AncientKnowledge__/graphics/items/biter-shell.png",
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
		  projectile = "biter-artillery-projectile",
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
	weight = 2000*kg
}

data:extend({
	fulogra_personal_solar_panel_item, fulogra_personal_solar_panel,
	personal_laser_defense_mk2_item, personal_laser_defense_mk2,
	biter_pet_equipment_item, biter_pet_equipment,
	rapid_rocket_launcher,
	atomic_artillery_shell, biter_artillery_shell
})