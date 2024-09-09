execute store result score *loot_y math run data get entity @s Pos[1] 100
execute positioned over motion_blocking run tp @s ~ ~ ~
execute store result score *loot_y2 math run data get entity @s Pos[1] 100
execute store result storage desertscourge:temp loot.y float 0.01 run scoreboard players operation *loot_y math > *loot_y2 math
function desertscourge:worm_ai/loot/macros with storage desertscourge:temp loot

kill @s