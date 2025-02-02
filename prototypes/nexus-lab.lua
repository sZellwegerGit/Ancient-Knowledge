local sounds = require("__base__.prototypes.entity.sounds")

local item = {
    type = "item",
    name = "nexus-lab",
    icon = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-icon.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "z[z-nexus-lab]",
    place_result = "nexus-lab",
    stack_size = 5,
    default_import_location = "nauvis",
    weight = 1000 * kg,
}

local nexusLab = {
    type = "lab",
    name = "nexus-lab",
    icon = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-icon.png",
    icon_size = 64,
    flags = {
        "placeable-neutral",
        "placeable-player",
        "player-creation"
    },
    minable = {
        mining_time = 0.5,
        result = "nexus-lab"
    },
    max_health = 1200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["biolab"],
    heating_energy = "100kW",
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
        {-3.0, -3.0}, 
        {3.0, 3.0}
    },
    selection_box = {
        {-3.0, -3.0}, 
        {3.0, 3.0}
    },
    drawing_box = {
        {-3.0, -3.0}, 
        {3.0, 3.0}
    },
	on_animation = {
		layers = {
		
		}
	},
	off_animation = {
		layers = {
			{
			  draw_as_shadow = true,
			  filename = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-shadow.png",
			  priority = "high",
			  width = 700,
			  height = 600,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 1,
			  animation_speed = 0.5,
			  scale = 0.5,
			},
			{
			  priority = "high",
			  width = 400,
			  height = 400,
			  frame_count = 1,
			  animation_speed = 0.5,
			  scale = 0.5,
			  stripes =
			  {
				{
				  filename = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-animation.png",
				  width_in_frames = 1,
				  height_in_frames = 1,
				}
			  },
			},
		}
	},
	on_animation = {
		layers = {
			{
			  draw_as_shadow = true,
			  filename = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-shadow.png",
			  priority = "high",
			  width = 700,
			  height = 600,
			  frame_count = 1,
			  line_length = 1,
			  repeat_count = 60,
			  animation_speed = 0.5,
			  scale = 0.5,
			},
			{
			  priority = "high",
			  width = 400,
			  height = 400,
			  frame_count = 60,
			  animation_speed = 0.5,
			  scale = 0.5,
			  stripes =
			  {
				{
				  filename = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-animation.png",
				  width_in_frames = 8,
				  height_in_frames = 8,
				}
			  },
			},
			{
			  priority = "high",
			  width = 400,
			  height = 400,
			  frame_count = 60,
			  animation_speed = 0.5,
			  draw_as_glow = true,
			  blend_mode = "additive",
			  scale = 0.5,
			  stripes =
			  {
				{
				  filename = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-animation-emission.png",
				  width_in_frames = 8,
				  height_in_frames = 8,
				}
			  },
			}
		}
	},
	inputs = {
		"automation-science-pack",
		"logistic-science-pack",
		"chemical-science-pack",
		"military-science-pack",
		"production-science-pack",
		"utility-science-pack",
		"space-science-pack",
		"metallurgic-science-pack",
		"electromagnetic-science-pack",
		"agricultural-science-pack",
		"cryogenic-science-pack",
		"promethium-science-pack",
    },
    researching_speed = 3,
	science_pack_drain_rate_percent = 35,
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	module_slots = 5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "2MW",    
    match_animation_speed_to_activity = true,
}

data:extend{item, nexusLab}