execute at @s facing entity @e[type=item_display,tag=worm,tag=next.part,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute store result storage desertscourge:temp get_rot.x int 1 run data get entity @s Rotation[0]
execute store result storage desertscourge:temp get_rot.y int 1 run data get entity @s Rotation[1]
kill @s