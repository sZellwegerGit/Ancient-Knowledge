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

local ancient_waste = {
    type = "item",
    name = "ancient-waste",
    icon = "__AncientKnowledge__/graphics/items/ancient-waste.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = null,
    weight = 10 * kg,
	enabled = true,
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

local ancient_plate = {
    type = "item",
    name = "forgotten-alloy",
    icon = "__AncientKnowledge__/graphics/items/ancient-plate.png",
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

local ancient_plate_heated = {
    type = "item",
    name = "forgotten-alloy-heated",
    icon = "__AncientKnowledge__/graphics/items/ancient-plate-heated.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = null,
    weight = 20 * kg,
	enabled = true,
	spoil_ticks = 60 * 60 * 5,
	spoil_result = "forgotten-alloy",
}

local ancient_wire = {
    type = "item",
    name = "relic-conduit",
    icon = "__AncientKnowledge__/graphics/items/relic-conduit.png",
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

local ancient_wire_heated = {
    type = "item",
    name = "relic-conduit-heated",
    icon = "__AncientKnowledge__/graphics/items/relic-conduit-heated.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = null,
    weight = 20 * kg,
	enabled = true,
	spoil_ticks = 60 * 60 * 5,
	spoil_result = "relic-conduit",
}

local ancient_steel = {
    type = "item",
    name = "mystic-steel",
    icon = "__AncientKnowledge__/graphics/items/ancient-steel.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 20,
    default_import_location = null,
    weight = 100 * kg,
	enabled = true,
}

local ancient_steel_heated = {
    type = "item",
    name = "mystic-steel-heated",
    icon = "__AncientKnowledge__/graphics/items/ancient-steel-heated.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 20,
    default_import_location = null,
    weight = 100 * kg,
	enabled = true,
	spoil_ticks = 60 * 60 * 5,
	spoil_result = "mystic-steel",
}

local ancient_engine = {
    type = "item",
    name = "ancient-engine",
    icon = "__AncientKnowledge__/graphics/items/ancient-engine-unit.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 10,
    default_import_location = null,
    weight = 200 * kg,
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

local ancient_reactor = {
    type = "item",
    name = "arc-reactor",
    icon = "__AncientKnowledge__/graphics/items/arc-reactor.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 5,
    default_import_location = null,
    weight = 200 * kg,
	enabled = true,
	spoil_ticks = 60 * 60 * 10,
	spoil_to_trigger_result = explosion_trigger_result,
}

local ancient_energy_vault = {
    type = "item",
    name = "ancient-energy-vault",
    icon = "__AncientKnowledge__/graphics/items/ancient-energy-vault.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 5,
    default_import_location = null,
    weight = 200 * kg,
	enabled = true,
	spoil_ticks = 60 * 60 * 10,
	spoil_to_trigger_result = explosion_trigger_result,
}

local ancient_chip = {
    type = "item",
    name = "void-tech-chip",
    icon = "__AncientKnowledge__/graphics/items/void-tech-chip.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
    default_import_location = null,
    weight = 20 * kg,
	enabled = true,
}

local ancient_heat_cell = {
    type = "item",
    name = "ancient-heat-cell",
    icon = "__AncientKnowledge__/graphics/items/ancient-heated-cell.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 10,
    default_import_location = null,
    weight = 100 * kg,
	enabled = true,
	spoil_ticks = 60 * 60,
	spoil_result = "ancient-waste",
}

local ancient_shards = {
    type = "item",
    name = "ancient-crystal-shards",
    icon = "__AncientKnowledge__/graphics/items/ancient-shards.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
    default_import_location = null,
    weight = 20 * kg,
	enabled = true,
}

local ancient_crystal = {
    type = "item",
    name = "ancient-crystal",
    icon = "__AncientKnowledge__/graphics/items/ancient-crystal.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 20,
    default_import_location = null,
    weight = 50 * kg,
	enabled = true,
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
	spoil_ticks = 60 * 60 * 35,
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

local evolved_pentapod_egg = {
	type = "item",
	name = "evolved-pentapod-egg",
	icon = "__AncientKnowledge__/graphics/items/evolved-pentapod-egg.png",
	pictures =
	{
	  { size = 64, filename = "__AncientKnowledge__/graphics/items/evolved-pentapod-egg.png", scale = 0.5, mipmap_count = 4 }
	},
	fuel_category = "chemical",
	fuel_value = "35MJ",
	subgroup = "agriculture-products",
	order = "c[eggs]-a[evolved-pentapod-egg]",
	inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
	pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
	drop_sound = space_age_item_sounds.agriculture_inventory_move,
	stack_size = 20,
	weight = 100 * kg,
	spoil_ticks = 60 * 60 * 25,
	spoil_to_trigger_result =
	{
	  items_per_trigger = 4,
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
			  entity_name = "medium-stomper-pentapod",
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
					  entity_name = "medium-stomper-pentapod",
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

local power_nutrients = {
	type = "item",
	name = "power-nutrients",
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

data:extend({
	ancient_sub_group, explosionEffect,
	ancient_waste, ancient_scrap, ancient_plate, ancient_plate_heated, 
	ancient_wire, ancient_wire_heated, ancient_steel, ancient_steel_heated, 
	ancient_engine, ancient_reactor, ancient_energy_vault,
	ancient_chip, ancient_heat_cell,
	ancient_shards, ancient_crystal,
	evolved_biter_egg, demolisher_egg, evolved_pentapod_egg,
	power_nutrients
})