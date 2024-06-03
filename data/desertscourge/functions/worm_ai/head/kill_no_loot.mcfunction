execute store result storage desertscourge:temp kill_mob.index int 1 run scoreboard players operation *temp mobID = @s mobID

execute as @e[type=item_display,tag=worm] if score @s mobID = *temp mobID run kill @s
execute as @e[type=interaction,tag=sand.tornado,tag=boss] if score @s mobID = *temp mobID run kill @s
execute as @e[type=pig,tag=worm.hitbox] if score @s mobID = *temp mobID at @s run function desertscourge:worm_ai/head/kill_no_loot1

scoreboard players reset @a[distance=..128] musicTimer_desertscourge
stopsound @a[distance=..128] * desertscourge:music.desert_scourge 

function desertscourge:worm_ai/head/kill_no_loot2 with storage desertscourge:temp kill_mob
data remove storage desertscourge:temp kill_mob