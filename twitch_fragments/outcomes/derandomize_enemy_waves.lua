--Derandomized enemies
--same enemy everywhere
--curses
--41
--todo

function twitch_derandomize_enemy_waves()
    async(effect_derandomize_enemy_waves)
end

function effect_derandomize_enemy_waves()
    local player

    repeat
		wait(1);
		player = get_player_nopoly();
	until player > 0;

    if (player) then
        local x, y = get_player_pos()
        local thingy = EntityLoad("mods/twitch-integration/files/effects/derandomizer.xml", x, y)
        EntityAddComponent2( thingy, "UIIconComponent",
            {
                name = "Not Random Enemies",
                description = "might be scuffed",
                icon_sprite_file = "mods/twitch-integration/files/effects/status_icons/not_randenemy.png",
                display_above_head = false,
                display_in_hud = true,
                is_perk = false
            })
        EntityAddChild(player, thingy)
    end
end