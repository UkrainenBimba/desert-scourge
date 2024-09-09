execute unless entity @e[type=interaction,tag=sand.tornado,distance=..256] unless entity @e[type=item_display,tag=worm,distance=..256] run scoreboard players add @s sandTornadoSpawn 1

execute if score @s sandTornadoSpawn matches 1200.. unless predicate desertscourge:weather/rain if predicate desertscourge:chance/02 summon interaction run function desertscourge:sand_tornado/spawn
execute if score @s sandTornadoSpawn matches 1200.. if predicate desertscourge:weather/rain if predicate desertscourge:chance/08 summon interaction run function desertscourge:sand_tornado/spawn

execute if score @s sandTornadoSpawn matches 1200.. run scoreboard players reset @s sandTornadoSpawn