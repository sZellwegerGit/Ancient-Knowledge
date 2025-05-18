local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

-- cerys crashes my mod when i import entities from __base__

function accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__AncientKnowledge__/graphics/living-accumulator/living-accumulator.png",
        priority = "high",
        width = 130,
        height = 189,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -11),
        tint = tint,
        scale = 0.5
      },
      {
        filename = "__AncientKnowledge__/graphics/living-accumulator/living-accumulator-shadow.png",
        priority = "high",
        width = 234,
        height = 106,
        repeat_count = repeat_count,
        shift = util.by_pixel(29, 6),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }
end

function accumulator_charge()
  return
  {
    layers =
    {
      accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__AncientKnowledge__/graphics/living-accumulator/living-accumulator-charge.png",
        priority = "high",
        width = 178,
        height = 210,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
        scale = 0.5
      }
    }
  }
end

function accumulator_reflection()
  return
  {
    pictures =
      {
        filename = "__AncientKnowledge__/graphics/living-accumulator/living-accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function accumulator_discharge()
  return
  {
    layers =
    {
      accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__AncientKnowledge__/graphics/living-accumulator/living-accumulator-discharge.png",
        priority = "high",
        width = 174,
        height = 214,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-1, -23),
        scale = 0.5
      }
    }
  }
end

local item = {
    type = "item",
    name = "living-accumulator",
    icon = "__AncientKnowledge__/graphics/items/living-accumulator.png",
    icon_size = 64,
    subgroup = "energy",
    order = "e[accumulator]-b[accumulator]",
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    place_result = "living-accumulator",
    stack_size = 20,
    default_import_location = "fulgora",
    weight = 50 * kg,
}

local living_accumulator = {
	type = "accumulator",
	name = "living-accumulator",
	icon = "__AncientKnowledge__/graphics/items/living-accumulator.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 0.1, result = "living-accumulator"},
	fast_replaceable_group = "accumulator",
	max_health = 350,
	corpse = "accumulator-remnants",
	dying_explosion = "accumulator-explosion",
	collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
	selection_box = {{-1, -1}, {1, 1}},
	damaged_trigger_effect = nil, -- hit_effects.entity(),
	drawing_box_vertical_extension = 0.5,
	energy_source =
	{
	  type = "electric",
	  buffer_capacity = "15MJ",
	  usage_priority = "tertiary",
	  input_flow_limit = "800kW",
	  output_flow_limit = "800kW"
	},
	chargable_graphics =
	{
	  picture = accumulator_picture(),
	  charge_animation = accumulator_charge(),
	  charge_cooldown = 30,
	  discharge_animation = accumulator_discharge(),
	  discharge_cooldown = 60
	},
	water_reflection = accumulator_reflection(),
	impact_category = "metal",
	open_sound = sounds.electric_large_open,
	close_sound = sounds.electric_large_close,
	working_sound =
	{
	  main_sounds =
	  {
		{
		  sound = {filename = "__base__/sound/accumulator-working.ogg", volume = 0.4, modifiers = volume_multiplier("main-menu", 1.44)},
		  match_volume_to_activity = true,
		  activity_to_volume_modifiers = {offset = 2, inverted = true},
		  fade_in_ticks = 4,
		  fade_out_ticks = 20
		},
		{
		  sound = {filename = "__base__/sound/accumulator-discharging.ogg", volume = 0.4, modifiers = volume_multiplier("main-menu", 1.44)},
		  match_volume_to_activity = true,
		  activity_to_volume_modifiers = {offset = 1},
		  fade_in_ticks = 4,
		  fade_out_ticks = 20
		}
	  },
	  idle_sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.35},
	  max_sounds_per_type = 3,
	  audible_distance_modifier = 0.5
	},

	circuit_connector = circuit_connector_definitions["accumulator"],
	circuit_wire_max_distance = default_circuit_wire_max_distance,

	default_output_signal = {type = "virtual", name = "signal-A"}
}

data:extend{
	item, living_accumulator
}