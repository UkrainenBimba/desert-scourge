scoreboard players set *update wormToothTimer 99

execute unless entity @s[type=#desertscourge:heavy_mob] run function desertscourge:items/worm_tooth/hook_light
execute if entity @s[type=#desertscourge:heavy_mob] run function desertscourge:items/worm_tooth/hook_heavy