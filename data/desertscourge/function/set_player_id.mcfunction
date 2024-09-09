scoreboard players operation @s playerID = *cloud playerID
scoreboard players add *cloud playerID 1
tag @s add id
execute as @a[tag=!id,limit=1] run function desertscourge:set_player_id