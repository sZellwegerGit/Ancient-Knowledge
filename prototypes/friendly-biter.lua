local friendly_biter = table.deepcopy(data.raw["unit"]["behemoth-biter"])
friendly_biter.name = "friendly-biter"
friendly_biter.max_health = 2000
friendly_biter.healing_per_tick = -0.15
friendly_biter.resistances = {
    { type = "physical", decrease = 8, percent = 15 },
    { type = "explosion", decrease = 10, percent = 20 }
}
friendly_biter.attack_parameters.damage_modifier = 2.5
friendly_biter.alert_when_damaged = false

data:extend{
	friendly_biter
}