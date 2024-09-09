function desertscourge:items/amulet_of_winds/save_particles

scoreboard players operation @s amuletOfWindsFallDist /= #100 bdlib.const
scoreboard players remove @s amuletOfWindsFallDist 2

function desertscourge:items/amulet_of_winds/reduce_damage

execute unless score @s amuletOfWindsFallDist matches 1.. run function desertscourge:items/amulet_of_winds/launch_player
execute if score @s amuletOfWindsFallDist matches 1.. run function desertscourge:items/amulet_of_winds/damage_player