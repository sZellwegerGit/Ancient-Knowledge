local fulgora_solar_panel = {
	type = "technology",
	name = "fulgora-solar-panel",
	icon = "__AncientKnowledge__/graphics/technology/fulgora-solar-panel.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "fulgora-solar-panel"
		},
		{
			type = "unlock-recipe",
			recipe = "fulgora-solar-panel-equipment"
		}
	},
    prerequisites = {"solar-energy", "solar-panel-equipment", "electromagnetic-science-pack"},
    unit =
    {
      count = 9000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"electromagnetic-science-pack", 1},
	  },
      time = 45
    }
}

local living_accumulator = {
	type = "technology",
	name = "living-accumulator",
	icon = "__AncientKnowledge__/graphics/technology/living-accumulator.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "living-accumulator"
		}
	},
    prerequisites = {"electric-energy-accumulators", "captivity", "electromagnetic-science-pack", "agricultural-science-pack"},
    unit =
    {
      count = 12500,
      ingredients = {
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
      time = 40
    }
}

local personal_laser_defense_mk2 = {
	type = "technology",
	name = "personal-laser-defense-mk2",
	icon = "__AncientKnowledge__/graphics/technology/personal-laser-defense-mk2.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "personal-laser-defense-equipment-mk2"
		}
	},
    prerequisites = {"personal-laser-defense-equipment", "fusion-reactor", "cryogenic-science-pack"},
    unit =
    {
      count = 9000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"cryogenic-science-pack", 1},
	  },
      time = 30
    }
}

local biter_pet_equipment = {
	type = "technology",
	name = "biter-pet-equipment",
	icon = "__AncientKnowledge__/graphics/technology/biter-pet-equipment.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "biter-pet-equipment"
		}
	},
    prerequisites = {"personal-roboport-mk2-equipment", "captivity", "carbon-fiber", "agricultural-science-pack"},
    unit =
    {
      count = 12500,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"agricultural-science-pack", 1},
	  },
      time = 30
    }
}

local refresher = {
	type = "technology",
	name = "refresher",
	icon = "__AncientKnowledge__/graphics/technology/refresher.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "refresher"
		},
		{
			type = "unlock-recipe",
			recipe = "refreshment-extract"
		},
				{
			type = "unlock-recipe",
			recipe = "nutrient-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "yumako-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "jellynut-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "bioflux-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "yumako-mash-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "jelly-refreshment"
		},
		{
			type = "unlock-recipe",
			recipe = "agricultural-science-pack-refreshment"
		},
	},
    prerequisites = {"fish-breeding", "agricultural-science-pack"},
    unit =
    {
      count = 7500,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"agricultural-science-pack", 1},
	  },
      time = 30
    }
}

local rapid_rocket_launcher = {
	type = "technology",
	name = "rapid-rocket-launcher",
	icon = "__AncientKnowledge__/graphics/technology/rapid-rocket-launcher.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rapid-rocket-launcher"
		}
	},
    prerequisites = {"metallurgic-science-pack"},
    unit =
    {
      count = 10000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
	  },
      time = 30
    }
}

local atomic_artillery_shell = {
	type = "technology",
	name = "atomic-artillery-shell",
	icon = "__AncientKnowledge__/graphics/technology/atomic-artillery-shell.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "atomic-artillery-shell"
		}
	},
    prerequisites = {"artillery", "atomic-bomb", "metallurgic-science-pack"},
    unit =
    {
      count = 15000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
	  },
      time = 45
    }
}

local biter_artillery_shell = {
	type = "technology",
	name = "biter-artillery-shell",
	icon = "__AncientKnowledge__/graphics/technology/biter-artillery-shell.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "biter-artillery-shell"
		}
	},
    prerequisites = {"artillery", "captivity", "metallurgic-science-pack", "agricultural-science-pack"},
    unit =
    {
      count = 15000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"military-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
		{"agricultural-science-pack", 1}
	  },
      time = 45
    }
}

local promethium_processing = {
	type = "technology",
	name = "ancient-scrap-extraction",
	icon = "__AncientKnowledge__/graphics/technology/ancient-scrap-extraction.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "ancient-scrap-extraction"
		}
	},
    prerequisites = {"promethium-science-pack"},
    unit =
    {
      count = 10000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
		{"electromagnetic-science-pack", 1},
		{"agricultural-science-pack", 1},
		{"promethium-science-pack", 1}
	  },
      time = 30
    }
}

local ancient_processing = {
	type = "technology",
	name = "ancient-processing",
	icon = "__AncientKnowledge__/graphics/technology/ancient-processing.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "evolved-dust"
		},
		{
			type = "unlock-recipe",
			recipe = "evolved-biter-egg"
		},
		{
			type = "unlock-recipe",
			recipe = "living-processor"
		},
		{
			type = "unlock-recipe",
			recipe = "casting-obsidian"
		},
		{
			type = "unlock-recipe",
			recipe = "demolisher-egg"
		},
		{
			type = "unlock-recipe",
			recipe = "chrono-relay"
		},
		{
			type = "unlock-recipe",
			recipe = "mutagenic-compound"
		},
		{
			type = "unlock-recipe",
			recipe = "glacium-crystal"
		},
		{
			type = "unlock-recipe",
			recipe = "cryo-core"
		}
	},
    prerequisites = {"ancient-scrap-extraction"},
    unit =
    {
      count = 12500,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
		{"electromagnetic-science-pack", 1},
		{"agricultural-science-pack", 1},
		{"promethium-science-pack", 1}
	  },
      time = 30
    }
}

local nexus_lab = {
	type = "technology",
	name = "nexus-lab",
	icon = "__AncientKnowledge__/graphics/technology/nexus-lab.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nexus-lab"
		}
	},
    prerequisites = {"ancient-processing"},
    unit =
    {
      count = 100000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
		{"electromagnetic-science-pack", 1},
		{"agricultural-science-pack", 1},
		{"promethium-science-pack", 1}
	  },
      time = 45
    }
}

local pylon = {
	type = "technology",
	name = "pylon",
	icon = "__AncientKnowledge__/graphics/technology/pylon.png",
	icon_size = 256,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "nexus-lab"
		}
	},
    prerequisites = {"ancient-processing"},
    unit =
    {
      count = 100000,
      ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
		{"utility-science-pack", 1},
		{"space-science-pack", 1},
		{"metallurgic-science-pack", 1},
		{"electromagnetic-science-pack", 1},
		{"agricultural-science-pack", 1},
		{"promethium-science-pack", 1}
	  },
      time = 45
    }
}

data:extend{
	fulgora_solar_panel, living_accumulator, personal_laser_defense_mk2,
	biter_pet_equipment, refresher, rapid_rocket_launcher, atomic_artillery_shell,
	biter_artillery_shell, promethium_processing, ancient_processing, nexus_lab, pylon
}