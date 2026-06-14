-- Game manipulation examples
-- These examples show how to use the GameAPI and PlayerAPI

local exploit = _G.Exploit

-- Example 1: Get all players
print("=== Example 1: Get All Players ===")
exploit:execute([[
    local game_api = _G.Exploit:get_game_api()
    local players = game_api:get_all_players()
    print("Players in game: " .. #players)
    for _, player in ipairs(players) do
        print("  - " .. player.Name)
    end
]])

-- Example 2: Get local player info
print("\n=== Example 2: Local Player Info ===")
exploit:execute([[
    local game_api = _G.Exploit:get_game_api()
    local player_api = _G.Exploit:get_player_api()
    
    local local_player = game_api:get_local_player()
    if local_player then
        local stats = player_api:get_stats(local_player)
        if stats then
            print("Player: " .. stats.name)
            print("Health: " .. stats.health .. "/" .. stats.max_health)
            print("User ID: " .. stats.user_id)
        end
    end
]])

-- Example 3: Player positions
print("\n=== Example 3: Player Positions ===")
exploit:execute([[
    local game_api = _G.Exploit:get_game_api()
    local player_api = _G.Exploit:get_player_api()
    
    local players = game_api:get_all_players()
    for _, player in ipairs(players) do
        local pos = player_api:get_position(player)
        if pos then
            print(player.Name .. " is at: " .. pos:tostring())
        end
    end
]])

-- Example 4: Modify player speed
print("\n=== Example 4: Modify Walkspeed ===")
exploit:execute([[
    local game_api = _G.Exploit:get_game_api()
    local player_api = _G.Exploit:get_player_api()
    
    local local_player = game_api:get_local_player()
    if local_player then
        player_api:set_walkspeed(local_player, 50)
        print("Walkspeed set to 50!")
    end
]])

-- Example 5: Find objects by class
print("\n=== Example 5: Find Parts ===")
exploit:execute([[
    local game_api = _G.Exploit:get_game_api()
    local parts = game_api:find_by_class("Part")
    print("Found " .. #parts .. " parts in workspace")
]])
