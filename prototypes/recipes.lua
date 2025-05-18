local ancient_structure_sub_group = {
    type = "item-subgroup",
    name = "ancient-products",
    group = "production",
    order = "h"
}

local ancient_scrap_extraction_recipe = {
	type = "recipe",
	name = "ancient-scrap-extraction",
	icons = {
		{
			icon = "__space-age__/graphics/icons/crusher.png",
			icon_size = 64,
			scale = 1.0,
		},
		{
			icon = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
			icon_size = 64,
			scale = 0.25,
			shift = {15, 2}
		},
		{
			icon = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
			icon_size = 64,
			scale = 0.25,
			shift = {4, 17}
		},
	},
	category = "crushing",
	subgroup="space-crushing",
	order = "b-a-a",
	auto_recycle = false,
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "promethium-asteroid-chunk", amount = 5},
	},
	energy_required = 5,
	results =
	{
		{type = "item", name = "stone", amount = 15},
		{type = "item", name = "promethium-asteroid-chunk", amount = 1, probability = 0.1},
		{type = "item", name = "ancient-scrap", amount = 1, probability = 0.01},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_crafting_category = {
	type = "recipe-category",
	name = "ancient-processing",
}

local evolved_dust = {
	type = "recipe",
	name = "evolved-dust",
	icon = "__AncientKnowledge__/graphics/items/power-nutrients.png",
	category = "chemistry",
	subgroup = "ancient-processes",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "nutrients", amount = 10},
	  {type = "item", name = "uranium-ore", amount = 1},
	  {type = "item", name = "uranium-238", amount = 1}
	},
	energy_required = 5,
	results =
	{
		{type = "item", name = "evolved-dust", amount = 5},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local obsidian = {
	type = "recipe",
	name = "casting-obsidian",
	icon = "__AncientKnowledge__/graphics/items/obsidian.png",
	category = "metallurgy",
	subgroup = "ancient-processes",
	order = "b[casting]-g[casting-obsidian]",
	enabled = false,
	ingredients =
    {
      {type = "fluid", name = "lava", amount = 150},
      {type = "fluid", name = "water", amount = 150},
      {type = "item", name = "tungsten-ore", amount = 2},
	  {type = "item", name = "ancient-scrap", amount = 1}
    },
	energy_required = 8,
	results =
	{
	  {type = "item", name = "obsidian", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local demolisher_egg = {
	type = "recipe",
	name = "demolisher-egg",
	icon = "__AncientKnowledge__/graphics/items/demolisher-egg.png",
	category = "metallurgy",
	subgroup = "ancient-processes",
	order = "b[casting]-h[demolisher-egg]",
	enabled = false,
	ingredients =
    {
      {type = "item", name = "obsidian", amount = 20},
      {type = "item", name = "tungsten-ore", amount = 20},
	  {type = "item", name = "evolved-dust", amount = 10},
	  {type = "item", name = "ancient-scrap", amount = 4}
    },
	energy_required = 30,
	results =
	{
	  {type = "item", name = "demolisher-egg", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local demolisher_egg_to_nutrients = {
	type = "recipe",
	name = "demolisher-egg-to-nutrients",
	icons = {
		{
			icon = "__AncientKnowledge__/graphics/items/demolisher-egg.png",
			icon_size = 64,
			scale = 1.0,
		},
		{
			icon = "__space-age__/graphics/icons/nutrients.png",
			icon_size = 64,
			scale = 0.5,
			shift = {25, 25},
		}
	},
	category = "metallurgy",
	subgroup = "ancient-processes",
	order = "b[casting]-j[demolisher-egg-to-nutrients]",
	enabled = false,
	ingredients =
    {
      {type = "item", name = "demolisher-egg", amount = 1},
    },
	energy_required = 30,
	results =
	{
	  {type = "item", name = "nutrients", amount = 200},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local chrono_relay = {
	type = "recipe",
	name = "chrono-relay",
	icon = "__AncientKnowledge__/graphics/items/chrono-relay.png",
	category = "electromagnetics",
	subgroup = "ancient-processes",
	order = "b[holmium]-e[chrono-relay]",
	enabled = false,
	ingredients =
    {
      {type = "item", name = "obsidian", amount = 2},
      {type = "item", name = "supercapacitor", amount = 3},
	  {type = "item", name = "ancient-scrap", amount = 2},
	  {type = "fluid", name = "electrolyte", amount = 100}
    },
	energy_required = 2,
	results =
	{
	  {type = "item", name = "chrono-relay", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local cryo_core = {
	type = "recipe",
	name = "cryo-core",
	icon = "__AncientKnowledge__/graphics/items/cryo-core.png",
	category = "cryogenics",
	subgroup = "ancient-processes",
	order = "c[lithium]-e[cryo-core]",
	enabled = false,
	ingredients =
    {
	  {type = "fluid", name = "lithium-brine", amount = 100},
      {type = "item", name = "demolisher-egg", amount = 1},
      {type = "item", name = "fusion-power-cell", amount = 1},
	  {type = "item", name = "ancient-scrap", amount = 1}
    },
	energy_required = 60,
	results =
	{
	  {type = "item", name = "cryo-core", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local refresher = {
	type = "recipe",
	name = "refresher",
	icon = "__AncientKnowledge__/graphics/refresher/refresher-icon.png",
	category = "organic",
	subgroup="production-machine",
	order = "g",
	enabled = false,
	
	ingredients =
	{
	  {type = "fluid", name = "water", amount = 500},
	  {type = "item", name = "carbon-fiber", amount = 20},
	  {type = "item", name = "processing-unit", amount = 40},
	  {type = "item", name = "electric-engine-unit", amount = 15}
	},
	energy_required = 10,
	results =
	{
		{type = "item", name = "refresher", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local fulgora_solar_panel = {
	type = "recipe",
	name = "fulgora-solar-panel",
	icon = "__AncientKnowledge__/graphics/items/fulgora-solar-panel.png",
	subgroup="energy",
	category="electromagnetics",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "solar-panel", amount = 1},
	  {type = "item", name = "superconductor", amount = 1},
	  {type = "item", name = "holmium-plate", amount = 1}
	},
	energy_required = 3,
	results =
	{
		{type = "item", name = "fulgora-solar-panel", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local living_accumulator = {
	type = "recipe",
	name = "living-accumulator",
	icon = "__AncientKnowledge__/graphics/items/living-accumulator.png",
	subgroup="energy",
	category="electromagnetics",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "accumulator", amount = 1},
	  {type = "item", name = "supercapacitor", amount = 2},
	  {type = "item", name = "biter-egg", amount = 2}
	},
	energy_required = 5,
	results =
	{
		{type = "item", name = "living-accumulator", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local fulgora_solar_panel_equipment = {
	type = "recipe",
	name = "fulgora-solar-panel-equipment",
	icon = "__AncientKnowledge__/graphics/items/fulgora-solar-panel-equipment.png",
	subgroup="utility-equipment",
	category="electromagnetics",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "fulgora-solar-panel", amount = 1},
	  {type = "item", name = "holmium-plate", amount = 3},
	  {type = "item", name = "steel-plate", amount = 5},
	},
	energy_required = 3,
	results =
	{
		{type = "item", name = "fulgora-solar-panel-equipment", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local personal_laser_defense_equipment_mk2 = {
	type = "recipe",
	name = "personal-laser-defense-equipment-mk2",
	icon = "__AncientKnowledge__/graphics/items/personal-laser-defense-equipment-mk2.png",
	subgroup="military-equipment",
	category="electromagnetics",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "personal-laser-defense-equipment", amount = 1},
	  {type = "item", name = "lithium-plate", amount = 4},
	  {type = "item", name = "fusion-power-cell", amount = 1},
	},
	energy_required = 3,
	results =
	{
		{type = "item", name = "personal-laser-defense-equipment-mk2", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local biter_pet_equipment = {
	type = "recipe",
	name = "biter-pet-equipment",
	icon = "__AncientKnowledge__/graphics/items/biter-pet-equipment.png",
	subgroup="military-equipment",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "personal-roboport-mk2-equipment", amount = 1},
	  {type = "item", name = "biter-egg", amount = 16},
	  {type = "item", name = "carbon-fiber", amount = 20},
	  {type = "item", name = "bioflux", amount = 20},
	},
	energy_required = 3,
	results =
	{
		{type = "item", name = "biter-pet-equipment", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local rapid_rocket_launcher = {
	type = "recipe",
	name = "rapid-rocket-launcher",
	icon = "__AncientKnowledge__/graphics/items/rapid-rocket-launcher.png",
	subgroup="gun",
	order = "g",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "rocket-launcher", amount = 4},
	  {type = "item", name = "tungsten-carbide", amount = 16},
	  {type = "item", name = "calcite", amount = 16},
	  {type = "item", name = "rocket-fuel", amount = 6},
	},
	energy_required = 3,
	results =
	{
		{type = "item", name = "rapid-rocket-launcher", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local atomic_artillery_shell = {
	type = "recipe",
	name = "atomic-artillery-shell",
	icon = "__AncientKnowledge__/graphics/items/atomic-shell.png",
	subgroup="ammo",
	order = "h",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "artillery-shell", amount = 2},
	  {type = "item", name = "atomic-bomb", amount = 1},
	  {type = "item", name = "nuclear-fuel", amount = 1},
	},
	energy_required = 30,
	results =
	{
		{type = "item", name = "atomic-artillery-shell", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local biter_artillery_shell = {
	type = "recipe",
	name = "biter-artillery-shell",
	icon = "__AncientKnowledge__/graphics/items/biter-shell.png",
	subgroup="ammo",
	order = "h",
	enabled = false,
	ingredients =
	{
	  {type = "item", name = "artillery-shell", amount = 3},
	  {type = "item", name = "biter-egg", amount = 1},
	  {type = "item", name = "bioflux", amount = 4},
	},
	energy_required = 30,
	results =
	{
		{type = "item", name = "biter-artillery-shell", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local nexus_lab_recipe = {
	type = "recipe",
	name = "nexus-lab",
	icon = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-icon.png",
	category = "electromagnetics",
	subgroup="ancient-products",
	order = "g",
	enabled = false,
	
	ingredients =
	{
	  {type = "item", name = "biolab", amount = 4},
	  {type = "item", name = "biter-egg", amount = 20},
	  {type = "item", name = "quantum-processor", amount = 500},
	  {type = "item", name = "obsidian", amount = 50},
	  {type = "item", name = "chrono-relay", amount = 20}
	},
	energy_required = 45,
	results =
	{
		{type = "item", name = "nexus-lab", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

local pylon_recipe = {
	type = "recipe",
	name = "pylon",
	icon = "__AncientKnowledge__/graphics/pylon/pylon-icon.png",
	category = "electromagnetics",
	subgroup="ancient-products",
	order = "h",
	enabled = false,
	
	ingredients =
	{
	  {type = "item", name = "beacon", amount = 4},
	  {type = "item", name = "quantum-processor", amount = 500},
	  {type = "item", name = "chrono-relay", amount = 20},
	  {type = "item", name = "cryo-core", amount = 1}
	},
	energy_required = 35,
	results =
	{
		{type = "item", name = "pylon", amount = 1},
	},
	allow_productivity = false,
	allow_decomposition = false
}

data:extend{
	ancient_structure_sub_group,
	ancient_crafting_category, ancient_scrap_extraction_recipe,
	evolved_dust,
	obsidian, demolisher_egg, demolisher_egg_to_nutrients, 
	chrono_relay,
	cryo_core,
	refresher, fulgora_solar_panel, living_accumulator,
	fulgora_solar_panel_equipment, personal_laser_defense_equipment_mk2, biter_pet_equipment,
	rapid_rocket_launcher, atomic_artillery_shell, biter_artillery_shell,
	nexus_lab_recipe, pylon_recipe
}