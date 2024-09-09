execute store result score *lastUpdate wormToothTimer run scoreboard players add *update wormToothTimer 1

execute unless score *update wormToothTimer matches ..4 run function desertscourge:items/worm_tooth/light/tp
execute positioned ~ ~-1.62 ~ if entity @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1,distance=..0.25] run function desertscourge:items/worm_tooth/light/end

execute unless score *update wormToothTimer matches ..4 run tp @s ~ ~ ~ ~ ~
execute if score *update wormToothTimer matches ..4 positioned ^ ^ ^-0.5 run function desertscourge:items/worm_tooth/light/loop