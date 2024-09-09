execute store result storage desertscourge:temp tp.y float 0.001 run scoreboard players remove @s wormTarget 20
function desertscourge:mini_worm/tp with storage desertscourge:temp tp
data remove storage desertscourge:temp tp

tag @s add save.mob
execute as @a[distance=..1] unless score @s wormAttackCD matches 1.. run function desertscourge:mini_worm/attack with storage desertscourge:const difficulty
tag @s remove save.mob