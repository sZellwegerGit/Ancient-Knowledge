local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

local ancient_sub_group = {
    type = "item-subgroup",
    name = "ancient-processes",
    group = "intermediate-products",
    order = "q"
}

local ancient_scrap = {
    type = "item",
    name = "ancient-scrap",
    icon = "__AncientKnowledge__/graphics/items/ancient-scrap.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = null,
    weight = 20 * kg,
	enabled = true,
}

local explosionEffect = table.deepcopy(data.raw.explosion["big-explosion"])

explosionEffect.name = "ancient-explosion"
explosionEffect.icons = {
  { icon = "__base__/graphics/icons/explosion.png" },
}

local explosion_trigger_result = {
  items_per_trigger = 1,
  trigger = {
    type = "direct",
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "create-explosion",
          entity_name = "ancient-explosion",
        },
        {
          type = "nested-result",
          action = {
            type = "area",
            radius = 4,
            target_entities = true,
            action_delivery = {
              type = "instant",
              target_effects = {
                {
                  type = "damage",
                  damage = {
                    amount = 1500,
                    type = "explosion",
                  },
                  apply_damage_to_trees = true,
                }
              }
            }
          }
        }
      }
    }
  }
}

local evolved_biter_egg = {
	type = "item",
	name = "evolved-biter-egg",
	icon = "__AncientKnowledge__/graphics/items/evolved-biter-egg.png",
	pictures =
	{
	  { size = 64, filename = "__AncientKnowledge__/graphics/items/evolved-biter-egg.png", scale = 0.5, mipmap_count = 4 }
	},
	fuel_category = "chemical",
	fuel_value = "20MJ",
	subgroup = "agriculture-products",
	order = "c[eggs]-a[evolved-biter-egg]",
	inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
	pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
	drop_sound = space_age_item_sounds.agriculture_inventory_move,
	stack_size = 50,
	weight = 5 * kg,
	spoil_ticks = 60 * 60 * 25,
	spoil_to_trigger_result =
	{
	  items_per_trigger = 3,
	  trigger =
	  {
		type = "direct",
		action_delivery =
		{
		  type = "instant",
		  source_effects =
		  {
			{
			  type = "create-entity",
			  entity_name = "behemoth-biter",
			  affects_target = true,
			  show_in_tooltip = true,
			  as_enemy = true,
			  find_non_colliding_position = true,
			  offset_deviation = {{-1, -1}, {1, 1}},
			  non_colliding_fail_result =
			  {
				type = "direct",
				action_delivery =
				{
				  type = "instant",
				  source_effects =
				  {
					{
					  type = "create-entity",
					  entity_name = "behemoth-biter",
					  affects_target = true,
					  show_in_tooltip = false,
					  as_enemy = true,
					  offset_deviation = {{-1, -1}, {1, 1}},
					}
				  }
				}
			  }
			}
		  }
		}
	  }
	}
}

local evolved_dust = {
	type = "item",
	name = "evolved-dust",
	icon = "__AncientKnowledge__/graphics/items/power-nutrients.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
	inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
	pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
	drop_sound = space_age_item_sounds.agriculture_inventory_move,
	fuel_category = "nutrients",
	fuel_value = "15MJ",
	stack_size = 100,
	-- default_import_location = "gleba",
	spoil_ticks = 60 * 60 * 10,
	spoil_result = "spoilage",
	weight = 1 * kg
}

local living_processor = {
	type = "item",
	name = "living-processor",
	icon = "__AncientKnowledge__/graphics/items/living-processor.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
	stack_size = 100,
	-- default_import_location = "gleba",
	weight = 1 * kg
}

local obsidian = {
	type = "item",
	name = "obsidian",
	icon = "__AncientKnowledge__/graphics/items/obsidian.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
    inventory_move_sound = item_sounds.brick_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
	stack_size = 10,
	-- default_import_location = "gleba",
	weight = 100 * kg
}

local demolisher_egg = {
	type = "item",
	name = "demolisher-egg",
	icon = "__AncientKnowledge__/graphics/items/demolisher-egg.png",
	pictures =
	{
	  { size = 64, filename = "__AncientKnowledge__/graphics/items/demolisher-egg.png", scale = 0.5, mipmap_count = 4 }
	},
	fuel_category = "chemical",
	fuel_value = "100MJ",
	subgroup = "agriculture-products",
	order = "c[eggs]-a[demolisher-egg]",
	inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
	pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
	drop_sound = space_age_item_sounds.agriculture_inventory_move,
	stack_size = 1,
	weight = 1000 * kg,
	spoil_ticks = 60 * 60 * 120,
	spoil_to_trigger_result =
	{
	  items_per_trigger = 1,
	  trigger =
	  {
		type = "direct",
		action_delivery =
		{
		  type = "instant",
		  source_effects =
		  {
			{
			  type = "create-entity",
			  entity_name = "small-demolisher",
			  affects_target = true,
			  show_in_tooltip = true,
			  as_enemy = true,
			  find_non_colliding_position = true,
			  offset_deviation = {{-1, -1}, {1, 1}},
			  non_colliding_fail_result =
			  {
				type = "direct",
				action_delivery =
				{
				  type = "instant",
				  source_effects =
				  {
					{
					  type = "create-entity",
					  entity_name = "small-demolisher",
					  affects_target = true,
					  show_in_tooltip = false,
					  as_enemy = true,
					  offset_deviation = {{-1, -1}, {1, 1}},
					}
				  }
				}
			  }
			}
		  }
		}
	  }
	}
}

local chrono_relay = {
	type = "item",
	name = "chrono-relay",
	icon = "__AncientKnowledge__/graphics/items/chrono-relay.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
	stack_size = 50,
	-- default_import_location = "gleba",
	weight = 20 * kg
}

local mutagenic_compound = {
	type = "item",
	name = "mutagenic-compound",
	icon = "__AncientKnowledge__/graphics/items/mutagenic-compound.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
	inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
	pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
	drop_sound = space_age_item_sounds.agriculture_inventory_move,
	fuel_category = "chemical",
	fuel_value = "5MJ",
	stack_size = 50,
	-- default_import_location = "gleba",
	spoil_ticks = 60 * 60 * 120,
	spoil_result = "spoilage",
	weight = 10 * kg
}

local cryo_core = {
	type = "item",
	name = "cryo-core",
	icon = "__AncientKnowledge__/graphics/items/cryo-core.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
    inventory_move_sound = item_sounds.brick_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
    fuel_value = "60GJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.4,
	fuel_category = "chemical",
	stack_size = 10,
	-- default_import_location = "gleba",
	spoil_ticks = 60 * 60 * 120,
	spoil_to_trigger_result = explosion_trigger_result,
	weight = 100 * kg
}

local glacium_crystal = {
	type = "item",
	name = "glacium-crystal",
	icon = "__AncientKnowledge__/graphics/items/glacium-crystal.png",
	subgroup = "ancient-processes",
	--order = "c[nutrients]-b[nutrients]",
    inventory_move_sound = item_sounds.brick_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
    fuel_value = "8MJ",
    fuel_acceleration_multiplier = 1.25,
    fuel_top_speed_multiplier = 1.1,
	fuel_category = "chemical",
	stack_size = 50,
	-- default_import_location = "gleba",
	spoil_ticks = 60 * 60 * 120,
	spoil_result = "ice",
	weight = 20 * kg
}

data:extend({
	ancient_sub_group, explosionEffect,
	ancient_scrap,
	evolved_biter_egg, demolisher_egg,
	evolved_dust, living_processor, obsidian, chrono_relay, mutagenic_compound, cryo_core, glacium_crystal
})