local ancient_scrap_extraction_recipe ={
	type = "recipe",
	name = "ancient-scrap-extraction",
	icons = {
		{
			icon = "__space-age__/graphics/icons/crusher.png",
			icon_size = 64,
			scale = 2,
			shift = {50, 50}
		},
		{
			icon = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
			icon_size = 64
		},
		{
			icon = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
			icon_size = 64
			shift = {10, 10}
		}
	},
	category = "crushing",
	subgroup="space-crushing",
	order = "b-a-a",
	auto_recycle = false,
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "promethium-asteroid-chunk", amount = 1},
	},
	energy_required = 2,
	results =
	{
		{type = "item", name = "stone", amount = 30},
		{type = "item", name = "promethium-asteroid-chunk", amount = 1, probability = 0.2},
		{type = "item", name = "ancient-scrap", amount = 3, probability = 0.05},
		{type = "item", name = "ancient-plate", amount = 1, probability = 0.01},
	},
	allow_productivity = true,
	allow_decomposition = false
}

data:extend{ancient_scrap_extraction_recipe}