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

local ancient_plate = {
    type = "item",
    name = "ancient-plate",
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

local ancient_engine = {
    type = "item",
    name = "ancient-engine",
    icon = "__AncientKnowledge__/graphics/items/ancient-engine-unit.png",
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

local ancien1t_crystal = {
    type = "item",
    name = "ancient-crystal",
    icon = "__AncientKnowledge__/graphics/items/ancient-crystal.png",
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

local ancien1t_steel = {
    type = "item",
    name = "ancient-steel",
    icon = "__AncientKnowledge__/graphics/items/ancient-steel.png",
    icon_size = 64,
    subgroup = "ancient-processes",
    -- order = "z[z-nexus-lab]",
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 20,
    default_import_location = null,
    weight = 200 * kg,
	enabled = true,
}

data:extend({ancient_sub_group, ancient_scrap, ancient_plate, ancient_engine, ancien1t_crystal, ancien1t_steel})