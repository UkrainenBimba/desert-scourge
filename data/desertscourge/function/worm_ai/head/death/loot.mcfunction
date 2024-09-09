playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.75 2
particle minecraft:explosion_emitter
particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0.375 0.375 1 40 force
particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:4,to_color:[0.824,0.757,0.580]} ~ ~.1 ~ 0.75 0.75 0.75 1 20 force

execute summon marker run function desertscourge:worm_ai/loot/init_head

execute as @a[distance=..128] at @s run function desertscourge:music/stop

execute store result storage desertscourge:temp kill_mob.index int 1 run scoreboard players operation *temp mobID = @s mobID
execute as @e[type=interaction,tag=sand.tornado,tag=boss] if score @s mobID = *temp mobID run function desertscourge:sand_tornado/kill
function desertscourge:worm_ai/head/kill_no_loot2 with storage desertscourge:temp kill_mob
data remove storage desertscourge:temp kill_mob
scoreboard players reset *temp mobID

function desertscourge:worm_ai/loot/init

kill @s