execute store result storage desertscourge:temp tp.y float 0.001 run scoreboard players remove @s wormMotion_Y 20
function desertscourge:mini_worm/tp with storage desertscourge:temp tp
data remove storage desertscourge:temp tp

tag @s add save.mob
execute as @a[distance=..1] run damage @s 8 mob_attack by @e[type=item_display,tag=save.mob,limit=1,distance=..1] from @e[type=item_display,tag=save.mob,limit=1,distance=..1]
tag @s remove save.mob