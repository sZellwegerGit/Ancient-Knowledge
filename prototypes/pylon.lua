local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")

local item = {
    type = "item",
    name = "pylon",
    icon = "__AncientKnowledge__/graphics/pylon/pylon-icon.png",
    icon_size = 64,
    subgroup = "module",
    order = "a[beacon]-b[pylon]",
    place_result = "pylon",
    stack_size = 5,
    default_import_location = "nauvis",
    weight = 1000 * kg,
}

local pylon = {
    type = "beacon",
    name = "pylon",
    icon = "__AncientKnowledge__/graphics/pylon/pylon-icon.png",
    icon_size = 64,
    flags = {
        "placeable-neutral",
        "placeable-player",
        "player-creation"
    },
    minable = {
        mining_time = 1.0,
        result = "pylon"
    },
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
    heating_energy = "50kW",
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
        {-1.4, -1}, 
        {1.4, 2}, 
    },
    selection_box = {
        {-1.4, -1}, 
        {1.4, 2}, 
    },
    drawing_box = {
        {-1.4, -1}, 
        {1.4, 2}, 
    },
	graphics_set = {
		animation_list = {
			{
				render_layer = "object",
				always_draw = true,
				animation = {
				    layers = {
					{
					  draw_as_shadow = true,
					  filename = "__AncientKnowledge__/graphics/pylon/pylon-shadow.png",
					  priority = "high",
					  width = 600,
					  height = 400,
					  frame_count = 1,
					  line_length = 1,
					  repeat_count = 60,
					  animation_speed = 0.5,
					  scale = 0.5,
					},
					{
					  priority = "high",
					  width = 200,
					  height = 290,
					  frame_count = 60,
					  animation_speed = 0.5,
					  scale = 0.5,
					  stripes =
					  {
						{
						  filename = "__AncientKnowledge__/graphics/pylon/pylon-animation.png",
						  width_in_frames = 8,
						  height_in_frames = 8,
						},
					  },
					},
					{
						size = {200, 290},
						scale = 0.5,
						frame_count = 60,
						draw_as_glow = true,
						blend_mode = "additive",
						animation_speed = 0.5,
						stripes = {
							{
								filename = "__AncientKnowledge__/graphics/pylon/pylon-emission.png",
								width_in_frames = 8,
								height_in_frames = 8,
							},
						},
					},
				  },
				}
			}
		}
	},
	radius_visualisation_picture = table.deepcopy(data.raw["beacon"]["beacon"].radius_visualisation_picture),
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
	allowed_effects = {"productivity", "quality", "pollution"},
	module_slots = 2,
    energy_usage = "4000kW",
	supply_area_distance = 3,
	distribution_effectivity = 0.3,
	distribution_effectivity_bonus_per_quality_level = 0.06
}

data:extend{item, pylon}