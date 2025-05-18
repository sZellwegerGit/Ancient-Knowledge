-- require "__AncientKnowledge__.scripts.biter-pet-equipment"

--local replacement_chance = 0.05

--local function replace_scrap_with_ancient_scrap(event)
--	local surface = event.surface
--	local area = event.area
	
--	local ores = surface.find_entities_filtered{area = {{area.left_top.x, area.left_top.y}, {area.right_bottom.x - 1, area.right_bottom.y - 1}}, type = "resource"}

--	local rng = game.create_random_generator(game.tick)

--	for _, ore in pairs(ores) do
--		if rng() < replacement_chance then
--			surface.create_entity{name = "ancient-electromagnetic-scrap", position = ore.position, amount = ore.amount * 0.5}
--			ore.destroy()
--		end
--	end
--end

local function replace_biters_from_artillery_with_quality(event)
	if event.source ~= nil then
		if event.source.name == "biter-artillery-projectile" then
			if event.source.quality ~= "normal" then
				local enemy = event.entity
				local enemy_pos = enemy.position
				local enemy_surface = enemy.surface.name
				local enemy_quality = enemy.quality.name
				local enemy_type = enemy_quality.."-"..enemy.name
				enemy.destroy({raise_destroy = false})
				game.surfaces[enemy_surface].create_entity({name = enemy_type, quality = enemy_quality, position = enemy_pos})	
			end
		end
	end
end

--script.on_event(defines.events.on_chunk_generated, function(event)
	--replace_scrap_with_ancient_scrap(event)
--end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
	replace_biters_from_artillery_with_quality(event)
end)