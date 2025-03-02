local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

local item = {
    type = "item",
    name = "fulgora-solar-panel",
    icon = "__AncientKnowledge__/graphics/items/fulgora-solar-panel.png",
    icon_size = 64,
    subgroup = "energy",
    order = "d[solar-panel]-b[solar-panel]",
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    place_result = "fulgora-solar-panel",
    stack_size = 50,
    default_import_location = "fulgora",
    weight = 20 * kg,
}

local fulgora_solar_panel_remnants = {
    type = "corpse",
    name = "fulgora-solar-panel-remnants",
    icon = "__AncientKnowledge__/graphics/items/fulgora-solar-panel.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "energy-remnants",
    order = "a-c-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__AncientKnowledge__/graphics/fulgora-solar-panel/remnants/solar-panel-remnants.png",
      line_length = 1,
      width = 290,
      height = 282,
      direction_count = 1,
      shift = util.by_pixel(3.5, 0),
      scale = 0.5
    })
}

local fulgora_solar_panel = {
    type = "solar-panel",
    name = "fulgora-solar-panel",
    icon = "__AncientKnowledge__/graphics/fulgora-solar-panel/fulgora-solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "fulgora-solar-panel"},
    fast_replaceable_group = "solar-panel",
    max_health = 350,
    corpse = "fulgora-solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = nil, --hit_effects.entity(),
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      layers =
      {
        {
          filename = "__AncientKnowledge__/graphics/fulgora-solar-panel/fulgora-solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-3, 3.5),
          scale = 0.5
        },
        {
          filename = "__AncientKnowledge__/graphics/fulgora-solar-panel/solar-panel-shadow.png",
          priority = "high",
          width = 220,
          height = 180,
          shift = util.by_pixel(9.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    },
    overlay =
    {
      layers =
      {
        {
          filename = "__AncientKnowledge__/graphics/fulgora-solar-panel/solar-panel-shadow-overlay.png",
          priority = "high",
          width = 214,
          height = 180,
          shift = util.by_pixel(10.5, 6),
          scale = 0.5
        }
      }
    },
    impact_category = "glass",
    production = "150kW"
}

data:extend{
	item, fulgora_solar_panel_remnants, fulgora_solar_panel
}