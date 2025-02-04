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
		{type = "item", name = "promethium-asteroid-chunk", amount = 1, probability = 0.15},
		{type = "item", name = "ancient-scrap", amount = 3, probability = 0.05},
		{type = "item", name = "ancient-crystal-shards", amount = 5, probability = 0.05},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_crafting_category = {
	type = "recipe-category",
	name = "ancient-processing",
}

local ancient_waste_recovery = {
	type = "recipe",
	name = "ancient-waste-recovery",
	icon = "__AncientKnowledge__/graphics/items/ancient-waste.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "ancient-waste", amount = 50},
	},
	energy_required = 20,
	results =
	{
		{type = "item", name = "forgotten-alloy", amount = 1, probability = 0.5},
		{type = "item", name = "ancient-scrap", amount = 2, probability = 0.5},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_plate_creation = {
	type = "recipe",
	name = "forgotten-alloy-creation",
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
	energy_required = 8,
	results =
	{
		{type = "item", name = "forgotten-alloy", amount = 1, probability = 0.5},
		{type = "item", name = "ancient-scrap", amount = 1, probability = 0.5},
		{type = "item", name = "scrap", amount = 10, probability = 0.5},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_heat_cell_creation = {
	type = "recipe",
	name = "ancient-heat-cell-creation",
	icon = "__AncientKnowledge__/graphics/items/ancient-heated-cell.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "rocket-fuel", amount = 20},
	  {type = "item", name = "forgotten-alloy", amount = 1},
	},
	energy_required = 10,
	results =
	{
		{type = "item", name = "ancient-heat-cell", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_plate_heating = {
	type = "recipe",
	name = "forgotten-alloy-heating",
	icon = "__AncientKnowledge__/graphics/items/ancient-plate-heated.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy", amount = 4},
	  {type = "item", name = "ancient-heat-cell", amount = 1},
	},
	energy_required = 2,
	results =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 4},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_wire_creation = {
	type = "recipe",
	name = "relic-conduit-heating",
	icon = "__AncientKnowledge__/graphics/items/relic-conduit.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 1},
	  {type = "item", name = "copper-cable", amount = 3},
	  {type = "item", name = "plastic-bar", amount = 1},
	},
	energy_required = 8,
	results =
	{
		{type = "item", name = "relic-conduit", amount = 2},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_wire_heating = {
	type = "recipe",
	name = "relic-conduit-creation",
	icon = "__AncientKnowledge__/graphics/items/relic-conduit-heated.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "relic-conduit", amount = 10},
	  {type = "item", name = "ancient-heat-cell", amount = 1},
	},
	energy_required = 8,
	results =
	{
		{type = "item", name = "relic-conduit-heated", amount = 10},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_chip_creation = {
	type = "recipe",
	name = "void-tech-chip-recipe",
	icon = "__AncientKnowledge__/graphics/items/void-tech-chip.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "a",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 1},
	  {type = "item", name = "relic-conduit-heated", amount = 4},
	  {type = "item", name = "processing-unit", amount = 5},
	  {type = "item", name = "quantum-processor", amount = 3},
	},
	energy_required = 24,
	results =
	{
		{type = "item", name = "void-tech-chip", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_steel_recipe ={
	type = "recipe",
	name = "mystic-steel-creation",
	icon = "__AncientKnowledge__/graphics/items/ancient-steel.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "d",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 2},
	  {type = "item", name = "steel-plate", amount = 8},
	  {type = "item", name = "tungsten-plate", amount = 4},
	},
	energy_required = 12,
	results =
	{
		{type = "item", name = "mystic-steel", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_steel_heated ={
	type = "recipe",
	name = "mystic-steel-heated",
	icon = "__AncientKnowledge__/graphics/items/ancient-steel-heated.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "d",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "mystic-steel", amount = 1},
	  {type = "item", name = "ancient-heat-cell", amount = 1},
	},
	energy_required = 12,
	results =
	{
		{type = "item", name = "mystic-steel-heated", amount = 1},
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
	  {type = "item", name = "forgotten-alloy-heated", amount = 2},
	  {type = "item", name = "mystic-steel-heated", amount = 2},
	  {type = "item", name = "carbon-fiber", amount = 4},
	  {type = "item", name = "electric-engine-unit", amount = 2},
	},
	energy_required = 15,
	results =
	{
		{type = "item", name = "ancient-engine", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_reactor_recipe ={
	type = "recipe",
	name = "arc-reactor-recipe",
	icon = "__AncientKnowledge__/graphics/items/arc-reactor.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "b",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 5},
	  {type = "item", name = "ancient-engine", amount = 2},
	  {type = "item", name = "ancient-heat-cell", amount = 1},
	  {type = "item", name = "lithium-plate", amount = 3},
	},
	energy_required = 24,
	results =
	{
		{type = "item", name = "arc-reactor", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}

local ancient_energy_vault ={
	type = "recipe",
	name = "ancient-energy-vault-recipe",
	icon = "__AncientKnowledge__/graphics/items/ancient-energy-vault.png",
	category = "ancient-processing",
	subgroup="ancient-processes",
	order = "b",
	-- enabled = false,
	enabled = true,
	ingredients =
	{
	  {type = "item", name = "forgotten-alloy-heated", amount = 6},
	  {type = "item", name = "mystic-steel-heated", amount = 3},
	  {type = "item", name = "arc-reactor", amount = 1},
	  {type = "item", name = "ancient-heat-cell", amount = 3},
	  {type = "item", name = "uranium-fuel-cell", amount = 2},
	},
	energy_required = 32,
	results =
	{
		{type = "item", name = "ancient-energy-vault", amount = 1},
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
	  {type = "item", name = "ancient-crystal-shards", amount = 20},
	  {type = "item", name = "copper-plate", amount = 4},
	  {type = "item", name = "ice", amount = 8},
	},
	energy_required = 2,
	results =
	{
		{type = "item", name = "ancient-crystal", amount = 1},
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
	  {type = "item", name = "forgotten-alloy", amount = 10},
	  {type = "item", name = "electromagnetic-plant", amount = 3},
	  {type = "item", name = "supercapacitor", amount = 16},
	  {type = "item", name = "lithium-plate", amount = 16},
	},
	energy_required = 20,
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
	  {type = "item", name = "forgotten-alloy", amount = 16},
	  {type = "item", name = "biolab", amount = 4},
	  {type = "item", name = "void-tech-chip", amount = 6},
	  {type = "item", name = "ancient-energy-vault", amount = 1},
	},
	energy_required = 30,
	results =
	{
		{type = "item", name = "nexus-lab", amount = 1},
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
	  {type = "item", name = "forgotten-alloy", amount = 12},
	  {type = "item", name = "ancient-crystal", amount = 5},
	  {type = "item", name = "beacon", amount = 5},
	  {type = "item", name = "arc-reactor", amount = 1},
	},
	energy_required = 16,
	results =
	{
		{type = "item", name = "pylon", amount = 1},
	},
	allow_productivity = true,
	allow_decomposition = false
}


data:extend{
	ancient_crafting_category, ancient_scrap_extraction_recipe, ancient_waste_recovery, ancient_plate_creation, 
	ancient_heat_cell_creation, ancient_plate_heating, ancient_wire_creation, ancient_wire_heating, ancient_chip_creation,
	ancient_engine_recipe, ancient_crystal_recipe, ancient_steel_recipe, ancient_steel_heated,
	ancient_reactor_recipe, ancient_energy_vault,
	
	ancient_forge_recipe, nexus_lab_recipe, pylon_recipe
}