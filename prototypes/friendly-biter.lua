local friendly_biter = table.deepcopy(data.raw["unit"]["big-biter"])
friendly_biter.name = "friendly-biter"
friendly_biter.max_health = 1100
friendly_biter.healing_per_tick = -0.1
friendly_biter.resistances = {
    { type = "physical", decrease = 8, percent = 15 },
    { type = "explosion", decrease = 10, percent = 20 }
}
friendly_biter.attack_parameters.damage_modifier = 1.2
friendly_biter.alert_when_damaged = false

data:extend{
	friendly_biter
}