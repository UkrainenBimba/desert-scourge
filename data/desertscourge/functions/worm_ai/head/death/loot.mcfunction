playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.75 2
particle minecraft:explosion
particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0.375 0.375 1 40 force

execute as @a[distance=..128] at @s run function desertscourge:music/stop

execute store result storage desertscourge:temp kill_mob.index int 1 run scoreboard players operation *temp mobID = @s mobID
execute as @e[type=interaction,tag=sand.tornado,tag=boss] if score @s mobID = *temp mobID run kill @s
function desertscourge:worm_ai/head/kill_no_loot2 with storage desertscourge:temp kill_mob
data remove storage desertscourge:temp kill_mob
scoreboard players reset *temp mobID

execute positioned over motion_blocking run function desertscourge:worm_ai/head/death/loot2

kill @s