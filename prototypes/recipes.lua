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
		{type = "item", name = "stone", amount = 25},
		{type = "item", name = "promethium-asteroid-chunk", amount = 1, probability = 0.15},
		{type = "item", name = "ancient-scrap", amount = 1, probability = 0.01},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_crafting_category = {
	type = "recipe-category",
	name = "ancient-processing",
}

--local nexus_lab_recipe = {
--	type = "recipe",
--	name = "nexus-lab",
--	icon = "__AncientKnowledge__/graphics/nexus-lab/nexus-lab-icon.png",
--	category = "ancient-processing",
--	subgroup="ancient-processes",
--	order = "f",
--	-- enabled = false,
--	enabled = true,
--	ingredients =
--	{
--	  {type = "item", name = "forgotten-alloy", amount = 16},
--	  {type = "item", name = "biolab", amount = 1},
--	  {type = "item", name = "void-tech-chip", amount = 6},
--	  {type = "item", name = "ancient-energy-vault", amount = 1},
--	},
--	energy_required = 30,
--	results =
--	{
--		{type = "item", name = "nexus-lab", amount = 1},
--	},
--	allow_productivity = true,
--	allow_decomposition = false
--}

--local pylon_recipe ={
--	type = "recipe",
--	name = "pylon",
--	icon = "__AncientKnowledge__/graphics/pylon/pylon-icon.png",
--	category = "ancient-processing",
--	subgroup="ancient-processes",
--	order = "g",
--	-- enabled = false,
--	enabled = true,
--	ingredients =
--	{
--	  {type = "item", name = "forgotten-alloy", amount = 12},
--	  {type = "item", name = "ancient-crystal", amount = 5},
--	  {type = "item", name = "beacon", amount = 5},
--	  {type = "item", name = "arc-reactor", amount = 1},
--	},
--	energy_required = 16,
--	results =
--	{
--		{type = "item", name = "pylon", amount = 1},
--	},
--	allow_productivity = true,
--	allow_decomposition = false
--}


data:extend{
	ancient_crafting_category, ancient_scrap_extraction_recipe,
	nexus_lab_recipe, pylon_recipe
}