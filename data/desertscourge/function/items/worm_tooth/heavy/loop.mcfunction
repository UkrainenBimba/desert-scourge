scoreboard players add *update wormToothTimer 1

execute if entity @s[distance=..0.25] at @s run scoreboard players set *update wormToothTimer 99

execute unless score *update wormToothTimer matches ..4 run tp @e[type=item_display,tag=worm.tooth.player_tp,predicate=desertscourge:id_system/worm_tooth_id,distance=..64,limit=1] ~ ~ ~ ~ ~
execute if score *update wormToothTimer matches 99 run function desertscourge:items/worm_tooth/heavy/end
execute if score *update wormToothTimer matches ..4 positioned ^ ^ ^0.5 run function desertscourge:items/worm_tooth/heavy/loop