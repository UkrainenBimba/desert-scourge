scoreboard players add *update wormToothTimer 1

execute unless block ~ ~ ~ #bdlib:not_solid run scoreboard players set @s wormToothTimer -1

tag @s add save.proj
execute positioned ~-.15 ~-.15 ~-.15 as @e[dx=0,type=!#bdlib:entity,limit=1,predicate=!desertscourge:id_system/player_id] positioned ~-.7 ~-.7 ~-.7 if entity @s[dx=0] positioned ~.85 ~.85 ~.85 run function desertscourge:items/worm_tooth/hook
tag @s remove save.proj

execute unless score *update wormToothTimer matches ..4 run tp @s ~ ~ ~
execute if score *update wormToothTimer matches ..4 positioned ^ ^ ^0.5 run function desertscourge:items/worm_tooth/move_forward