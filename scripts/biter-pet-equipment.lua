local function add_player_to_table(player_index)
	storage.pet_table[player_index] = {}
end


 This only runs when a new game is created
script.on_init(function()
	storage.pet_table = {}
end)

 This only runs when a game is being loaded created
script.on_load(function()
	storage.pet_table = storage.pet_table or {}
end)

script.on_event(defines.events.on_player_placed_equipment, function(event)
	local player_index = event.player_index
	local player = game.get_player(player_index)
	local equipment = event.equipment
	

	if equipment.name == "biter-pet-equipment" then
		if storage.pet_table[player_index] == nil then
			add_player_to_table(player_index)
		end
		
		storage.pet_table[player_index][equipment] = {
			equipment = equipment,
			pet = nil
		}
	end
	
	--if equipment.name == "biter-pet-equipment" then
	--	local surface = player.surface
	--	local position = player.position
	--	local spawn_position = surface.find_non_colliding_position("small-biter", position, 10, 1)  -- Find a nearby valid spawn location
	--	
	--	if spawn_position then
	--		surface.create_entity{
	--			name = "small-stomper-pentapod",  -- Change this for different types of biters
	--			position = spawn_position,
	--			force = player.force,
	--			quality = equipment.quality
	--		}
	--	end
	--end
--end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
	
end)

script.on_nth_tick(60, function(event)

end)