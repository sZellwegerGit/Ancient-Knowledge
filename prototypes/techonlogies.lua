local transport_belt_capacity_3 = {
	type = "technology",
	name = "transport-belt-capacity-as",
	localised_description = {"technology-description.belt-capacity"},
	icons = util.technology_icon_constant_stack_size("__space-age__/graphics/technology/transport-belt-capacity.png"),
	effects =
	{
	  {
		type = "belt-stack-size-bonus",
		modifier = 1
	  },
	  {
		type = "inserter-stack-size-bonus",
		modifier = 1
	  }
	},
	prerequisites = {"metallurgic-science-pack", "transport-belt-capacity-2"},
	unit =
	{
	  count = 12000,
	  ingredients =
	  {
		{"automation-science-pack",      1},
		{"logistic-science-pack",        1},
		{"chemical-science-pack",        1},
		{"production-science-pack",      1},
		{"utility-science-pack",         1},
		{"space-science-pack",           1},
		{"metallurgic-science-pack", 	 1},
		{"agricultural-science-pack",    1}
	  },
	  time = 60
	},
	upgrade = false
}

local transport_belt_capacity_4 = {
	type = "technology",
	name = "transport-belt-capacity-ms",
	localised_description = {"technology-description.belt-capacity"},
	icons = util.technology_icon_constant_stack_size("__space-age__/graphics/technology/transport-belt-capacity.png"),
	effects =
	{
	  {
		type = "belt-stack-size-bonus",
		modifier = 1
	  },
	  {
		type = "inserter-stack-size-bonus",
		modifier = 1
	  }
	},
	prerequisites = {"transport-belt-capacity-as", "metallurgic-science-pack", "transport-belt-capacity-2"},
	unit =
	{
	  count = 40000,
	  ingredients =
	  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
	  },
	  time = 100
	},
	upgrade = false
}

local research_speed_bl_1 = {
	type = "technology",
	name = "research-speed-bl-1",
	icons = {
		{
			icon = "__space-age__/graphics/technology/biolab.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.4
	  }
	},
	prerequisites = {"research-speed-6", "electromagnetic-science-pack", "biolab"},
	unit =
	{
	  count = 5000,
	  ingredients =
	  {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"electromagnetic-science-pack", 1},
		{"agricultural-science-pack",    1}
	  },
	  time = 60
	},
	upgrade = true
}

local research_speed_bl_2 = {
	type = "technology",
	name = "research-speed-bl-2",
	icons = {
		{
			icon = "__space-age__/graphics/technology/biolab.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.4
	  }
	},
	prerequisites = {"research-speed-bl-1"},
	unit =
	{
	  count = 10000,
	  ingredients =
	  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
	  },
	  time = 60
	},
	upgrade = true
}

local research_speed_bl_3 = {
	type = "technology",
	name = "research-speed-bl-3",
	icons = {
		{
			icon = "__space-age__/graphics/technology/biolab.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.4
	  }
	},
	prerequisites = {"research-speed-bl-2"},
	unit =
	{
	  count = 20000,
	  ingredients =
	  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
	  },
	  time = 60
	},
	upgrade = true
}

local research_speed_nl = {
	type = "technology",
	name = "research-speed-nl",
	icons = {
		{
			icon = "__AncientKnowledge__/graphics/technology/nexus-lab.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-speed.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.2
	  }
	},
	prerequisites = {"research-speed-bl-3", "promethium-science-pack"},
	unit =
	{
	  count_formula = "15000 * (1.75 ^ (L - 1))",
	  ingredients =
	  {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
	  },
	  time = 100
	},
	max_level = "infinite",
	upgrade = true
}

local fuel_productivity_research = {
	type = "technology",
	name = "space-ship-fuel-productivity",
	icons = {
		{
			icon = "__AncientKnowledge__/graphics/technology/thruster-fuel.png",
			icon_size = 256,
			shift = {-20, 0}
		},
		{
			icon = "__AncientKnowledge__/graphics/technology/thruster-oxidizer.png",
			icon_size = 256,
			shift = {20, 0}
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-recipe-productivity.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects = {
		{
			type = "change-recipe-productivity",
			recipe = "thruster-fuel",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "thruster-oxidizer",
			change = 0.1
		}
	},
	prerequisites = {
		"cryogenic-science-pack"
	},
	unit = {
		count_formula = "2000 * (1.9 ^ (L - 1))",
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1},
			{"cryogenic-science-pack", 1},
		},
		time = 60
	},
	max_level = "infinite",
	upgrade = true
}

data:extend({
	research_speed_bl_1, research_speed_bl_2, research_speed_bl_3, research_speed_nl,
	transport_belt_capacity_3, transport_belt_capacity_4,
	fuel_productivity_research
})