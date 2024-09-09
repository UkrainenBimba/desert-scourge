scoreboard players add *update wormToothTimer 1

execute positioned ~ ~-1.62 ~ if entity @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1,distance=..0.75] run function desertscourge:items/worm_tooth/return_item

execute unless score *update wormToothTimer matches ..4 run tp @s ~ ~ ~ ~ ~
execute if score *update wormToothTimer matches ..4 positioned ^ ^ ^-0.5 run function desertscourge:items/worm_tooth/move_back/loop