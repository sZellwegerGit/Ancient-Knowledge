local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")

local item = {
    type = "item",
    name = "ancient-forge",
    icon = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-icon.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "z",
    place_result = "ancient-forge",
    stack_size = 5,
    default_import_location = "nauvis",
    weight = 500 * kg,
}

local ancient_forge = {
    type = "assembling-machine",
    name = "ancient-forge",
    icon = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-icon.png",
    icon_size = 64,
    flags = {
        "placeable-neutral",
        "placeable-player",
        "player-creation"
    },
    minable = {
        mining_time = 1.0,
        result = "ancient-forge"
    },
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
    heating_energy = "50kW",
    effect_receiver = {},
    icon_draw_specification = {
        shift = {0, -0.6}, 
        scale = 1.8, 
        scale_for_many = 1,
        render_layer = "entity-info-icon"
    },
    icons_positioning = {
        {
            inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1}
        },
    },
    vehicle_impact_sound =  { 
        filename = "__base__/sound/car-metal-impact.ogg", 
        volume = 0.65 
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
        sound = {
            {
                filename = "__base__/sound/lab.ogg",
                volume = 0.8
            },
            {
                filename = "__base__/sound/assembling-machine-t3-2.ogg",
                volume = 0.8
            },
        },
        idle_sound = { 
            filename = "__base__/sound/idle1.ogg", volume = 0.6 
        },
        apparent_volume = 1.5,
    },
    collision_box = {
        {-4.6, -3.6}, 
        {4.6, 4.6}
    },
    selection_box = {
        {-4.6, -3.6}, 
        {4.6, 4.6}
    },
    drawing_box = {
        {-4.6, -3.6}, 
        {4.6, 4.6}
    },
    graphics_set = {
        animation = {
            layers = {
                {
                  draw_as_shadow = true,
                  filename = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-shadow.png",
                  priority = "high",
                  width = 1200,
                  height = 700,
                  frame_count = 1,
                  line_length = 1,
                  repeat_count = 64,
                  animation_speed = 0.5,
                  scale = 0.5,
                },
                {
                  priority = "high",
                  width = 590,
                  height = 640,
                  frame_count = 64,
                  animation_speed = 0.5,
                  scale = 0.5,
                  stripes =
                  {
                    {
                      filename = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-animation1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                    {
                      filename = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-animation2.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    },
                  },
                },
              },
        },
        working_visualisations = {
            {
                fadeout = true,
                secondary_draw_order = 1,
                animation = {
                    layers = {
                        {
                            size = {590, 640},
                            scale = 0.5,
                            frame_count = 64,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.5,
                            stripes = {
                                {
                                    filename = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-emisson1.png",
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                                {
                                    filename = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-emisson2.png",
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                            },
                        },
                    },
                },
            }
        },
    },
    crafting_categories = {
        "ancient-processing"
    },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "5000kW",
    module_slots = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    match_animation_speed_to_activity = true,
    fluid_boxes_off_when_no_fluid_recipe = true,
}

data:extend{item, ancient_forge}