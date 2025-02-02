local ancient_scrap_extraction_recipe ={
	type = "recipe",
	name = "ancient-scrap-extraction",
	icons = {
		{
			icon = "__space-age__/graphics/icons/crusher.png",
			icon_size = 64,
			scale = 0.25,
			shift = {25, 25},
		},
		{
			icon = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
			icon_size = 64,
			scale = 0.25,
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
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "promethium-asteroid-chunk", amount = 5},
	},
	energy_required = 5,
	results =
	{
		{type = "item", name = "stone", amount = 50},
		{type = "item", name = "promethium-asteroid-chunk", amount = 1, probability = 0.5},
		{type = "item", name = "ancient-scrap", amount = 3, probability = 0.05},
		{type = "item", name = "ancient-plate", amount = 1, probability = 0.01},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_crafting_category = {
	type = "recipe-category",
	name = "ancient-processing",
}

local ancient_plate_creation = {
	type = "recipe",
	name = "ancient_plate_creation",
	icon = "__AncientKnowledge__/graphics/items/ancient-plate.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-scrap", amount = 1},
	},
	energy_required = 12,
	results =
	{
		{type = "item", name = "ancient-plate", amount = 1, probability = 0.95},
		{type = "item", name = "ancient-scrap", amount = 1, probability = 0.05},
		{type = "item", name = "scrap", amount = 10},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_engine_recipe ={
	type = "recipe",
	name = "ancient-engine",
	icon = "__AncientKnowledge__/graphics/items/ancient-engine-unit.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "b",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 3},
	  {type = "item", name = "ancient-steel", amount = 1},
	  {type = "item", name = "carbon-fiber", amount = 8},
	  {type = "item", name = "electric-engine-unit", amount = 5},
	},
	energy_required = 60,
	results =
	{
		{type = "item", name = "ancient-engine", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_crystal_recipe ={
	type = "recipe",
	name = "ancient-crystal",
	icon = "__AncientKnowledge__/graphics/items/ancient-crystal.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "c",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 2},
	  {type = "item", name = "stone", amount = 75},
	  {type = "item", name = "ice", amount = 25},
	},
	energy_required = 21,
	results =
	{
		{type = "item", name = "ancient-crystal", amount = 3, probability = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_steel_recipe ={
	type = "recipe",
	name = "ancient-steel",
	icon = "__AncientKnowledge__/graphics/items/ancient-steel.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "d",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 4},
	  {type = "item", name = "tungsten-plate", amount = 8},
	},
	energy_required = 90,
	results =
	{
		{type = "item", name = "ancient-steel", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_forge_recipe ={
	type = "recipe",
	name = "ancient-forge",
	icon = "__AncientKnowledge__/graphics/ancient-forge/ancient-forge-icon.png",
	category = "crafting",
	subgroup="production-machine",
	order = "z",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 10},
	  {type = "item", name = "electromagnetic-plant", amount = 3},
	  {type = "item", name = "supercapacitor", amount = 16},
	  {type = "item", name = "lithium-plate", amount = 16},
	},
	energy_required = 90,
	results =
	{
		{type = "item", name = "ancient-forge", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local nexus_lab_recipe = {
	type = "recipe",
	name = "nexus-lab",
	icon = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-icon.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "f",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 20},
	  {type = "item", name = "biolab", amount = 5},
	  {type = "item", name = "quantum-processor", amount = 16},
	  {type = "item", name = "carbon-fiber", amount = 16},
	},
	energy_required = 90,
	results =
	{
		{type = "item", name = "nexus-lab", amount = 1, probability = 0.8},
		{type = "item", name = "ancient-steel", amount = 0.1},
		{type = "item", name = "ancient-scrap", amount = 0.05},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local pylon_recipe ={
	type = "recipe",
	name = "pylon",
	icon = "__AncientKnowledge__/graphics/pylon/pylon-icon.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "g",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-plate", amount = 25},
	  {type = "item", name = "ancient-crystal", amount = 25},
	  {type = "item", name = "beacon", amount = 8},
	  {type = "item", name = "processing-unit", amount = 150},
	},
	energy_required = 90,
	results =
	{
		{type = "item", name = "pylon", amount = 1, probability = 0.8},
		{type = "item", name = "ancient-steel", amount = 0.1},
		{type = "item", name = "ancient-scrap", amount = 0.05},
	},
	allow_productivity = true,
	allow_decomposition = false
}


data:extend{
	ancient_crafting_category, ancient_scrap_extraction_recipe, ancient_plate_creation, 
	ancient_engine_recipe, ancient_crystal_recipe, ancient_steel_recipe, 
	
	ancient_forge_recipe, nexus_lab_recipe, pylon_recipe
}