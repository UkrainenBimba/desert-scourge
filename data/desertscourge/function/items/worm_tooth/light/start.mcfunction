execute facing entity @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] eyes run tp @s ~ ~ ~ ~180 ~
execute store result entity @s Rotation[1] float 0.001 run data get entity @s Rotation[1] -1000

execute at @s positioned ^ ^ ^-0.5 run function desertscourge:items/worm_tooth/light/loop