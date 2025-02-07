local replacement_chance = 0.05

local function replace_scrap_with_ancient_scrap(event)
	local surface = event.surface
	local area = event.area
	
	local ores = surface.find_entities_filtered{area = {{area.left_top.x, area.left_top.y}, {area.right_bottom.x - 1, area.right_bottom.y - 1}}, type = "resource"}
	
	for _, ore in pairs(ores) do
		surface.create_entity{name = "iron-ore", position = ore.position, amount = ore.amount}
		ore.destroy()
	end
end

script.on_event(defines.events.on_chunk_generated, function(event)
	replace_scrap_with_ancient_scrap(event)
end)