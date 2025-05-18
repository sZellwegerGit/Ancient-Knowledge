local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

local refreshing_sub_group = {
    type = "item-subgroup",
    name = "refreshing-process",
    group = "intermediate-products",
    order = "r"
}

local ancient_crafting_category = {
	type = "recipe-category",
	name = "refreshing-process",
}

local refreshment_extract = {
    type = "item",
    name = "refreshment-extract",
    icon = "__AncientKnowledge__/graphics/items/renewable-extract.png",
    icon_size = 64,
    subgroup = "refreshing-process",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
    default_import_location = null,
    weight = 10 * kg,
	enabled = true,
}

local item = {
    type = "item",
    name = "refresher",
    icon = "__AncientKnowledge__/graphics/refresher/refresher-icon.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "z",
    place_result = "refresher",
    stack_size = 5,
    default_import_location = "nauvis",
    weight = 200 * kg,
}

local refresher = {
    type = "assembling-machine",
    name = "refresher",
    icon = "__AncientKnowledge__/graphics/refresher/refresher-icon.png",
    icon_size = 64,
    flags = {
        "placeable-neutral",
        "placeable-player",
        "player-creation"
    },
    minable = {
        mining_time = 1.0,
        result = "refresher"
    },
    max_health = 500,
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
    --open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
    --close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
    --working_sound = {
	--	{
	--	  sound = "__base__/sound/chemical-plant.ogg",
	--	  fade_in_ticks = 4,
	--	  fade_out_ticks = 20
	--	},
    --    idle_sound = { 
    --        filename = "__base__/sound/idle1.ogg", volume = 0.6 
    --    },
    --    apparent_volume = 1.5,
    --},
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
        {-1.5, -2}, 
        {1.5, 2}
    },
    selection_box = {
        {-1.5, -2}, 
        {1.5, 2}
    },
    drawing_box = {
        {-1.5, -2}, 
        {1.5, 2}
    },
    graphics_set = {
        animation = {
            layers = {
                {
                  draw_as_shadow = true,
                  filename = "__AncientKnowledge__/graphics/refresher/refresher-hr-shadow.png",
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
                  width = 320,
                  height = 370,
                  frame_count = 60,
                  animation_speed = 0.5,
                  scale = 0.5,
                  stripes =
                  {
                    {
                      filename = "__AncientKnowledge__/graphics/refresher/refresher-hr-animation.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                    }
                  },
                },
              },
        }
    },
    crafting_categories = {
        "refreshing-process"
    },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "1200kW",
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "pollution", "quality"},
    match_animation_speed_to_activity = true,
    fluid_boxes_off_when_no_fluid_recipe = true,
}

local refreshment_extract_recipe = {
	type = "recipe",
	name = "refreshment-extract",
	icon = "__AncientKnowledge__/graphics/items/renewable-extract.png",
	category = "refreshing-process",
	subgroup = "refreshing-process",
	order = "a",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "jelly", amount = 5},
	  {type = "item", name = "bioflux", amount = 3},
	},
	energy_required = 5,
	results =
	{
		{type = "item", name = "refreshment-extract", amount = 2},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local refreshment_ingrediant_required = 50

local nutrient_refreshment = {
	type = "recipe",
	name = "nutrient-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/nutrients.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "b",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "nutrients", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 1,
	results =
	{
		{type = "item", name = "nutrients", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local yumako_refreshment = {
	type = "recipe",
	name = "yumako-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/yumako.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "c",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "yumako", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "yumako", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local jellynut_refreshment = {
	type = "recipe",
	name = "jellynut-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/jellynut.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "d",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "jellynut", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "jellynut", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local bioflux_refreshment = {
	type = "recipe",
	name = "bioflux-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/bioflux.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "e",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "refreshment-extract", amount = 1},
	  {type = "item", name = "bioflux", amount = refreshment_ingrediant_required},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "bioflux", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local yumako_mesh_refreshment = {
	type = "recipe",
	name = "yumako-mash-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/yumako-mash.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "f",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "yumako-mash", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "yumako-mash", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local jelly_refreshment = {
	type = "recipe",
	name = "jelly-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/jelly.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "jelly", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "jelly", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

local agricultural_science_pack_refreshment = {
	type = "recipe",
	name = "agricultural-science-pack-refreshment",
	icons = {
		{
			icon = "__space-age__/graphics/icons/agricultural-science-pack.png",
			icon_size = 64,
			scale = 0.5,
			shift = {7, 7},
		},
		{
			icon = "__base__/graphics/icons/shapes/shape-cross.png",
			icon_size = 64,
			scale = 0.5,
			tint = {r=0.2, g=1, b=0.6, a=1}
		}
	},
	category = "refreshing-process",
	subgroup="refreshing-process",
	order = "h",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "agricultural-science-pack", amount = refreshment_ingrediant_required},
	  {type = "item", name = "refreshment-extract", amount = 1},
	},
	energy_required = 0.5,
	results =
	{
		{type = "item", name = "agricultural-science-pack", amount = refreshment_ingrediant_required},
	},
	allow_productivity = false,
	allow_decomposition = false,
	result_is_always_fresh = true
}

data:extend({
	ancient_crafting_category, refreshing_sub_group,
	refreshment_extract, refreshment_extract_recipe, item, refresher,
	nutrient_refreshment, yumako_refreshment, jellynut_refreshment, bioflux_refreshment, yumako_mesh_refreshment, jelly_refreshment, agricultural_science_pack_refreshment
})