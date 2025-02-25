local research_speed_7 = {
	type = "technology",
	name = "research-speed-7",
	icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.5
	  }
	},
	prerequisites = {"research-speed-6", "electromagnetic-science-pack"},
	unit =
	{
	  count = 7500,
	  ingredients =
	  {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"electromagnetic-science-pack", 1}
	  },
	  time = 60
	},
	upgrade = true
}

local research_speed_8 = {
	type = "technology",
	name = "research-speed-8",
	icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.45
	  }
	},
	prerequisites = {"research-speed-7", "promethium-science-pack"},
	unit =
	{
	  count = 12500,
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
	  time = 60
	},
	upgrade = true
}

local research_speed_9 = {
	type = "technology",
	name = "research-speed-9",
	icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.4
	  }
	},
	prerequisites = {"research-speed-8"},
	unit =
	{
	  count = 25000,
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
	  time = 90
	},
	upgrade = true
}

local research_speed_10 = {
	type = "technology",
	name = "research-speed-10",
	icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.35
	  }
	},
	prerequisites = {"research-speed-9"},
	unit =
	{
	  count = 75000,
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
	  time = 120
	},
	upgrade = true
}

local research_speed_11 = {
	type = "technology",
	name = "research-speed-11",
	icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
	effects =
	{
	  {
		type = "laboratory-speed",
		modifier = 0.5
	  }
	},
	prerequisites = {"research-speed-10"},
	unit =
	{
	  count = 250000,
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
	  time = 150
	},
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
	research_speed_7, research_speed_8, research_speed_9, research_speed_10, research_speed_11,
	fuel_productivity_research
})