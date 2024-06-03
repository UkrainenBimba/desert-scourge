execute unless predicate desertscourge:biome/desert run scoreboard players reset @s sandTornadoSpawn
execute if predicate desertscourge:biome/desert run function desertscourge:sand_tornado/spawn_timer

execute anchored eyes if entity @e[type=item_display,tag=worm,distance=..6] run attribute @s player.entity_interaction_range modifier add ddf7d9c8-ff1a-4492-a687-cb74900e3308 "reach" 3 add_value
execute anchored eyes unless entity @e[type=item_display,tag=worm,distance=..6] run attribute @s player.entity_interaction_range modifier remove ddf7d9c8-ff1a-4492-a687-cb74900e3308

execute if score @s sandTornadoTimer matches 1..6 run scoreboard players add @s sandTornadoTimer 1
execute if score @s sandTornadoTimer matches 7.. run scoreboard players reset @s sandTornadoTimer

execute if score @s sandTornadoAdvancementTimer matches 1.. run scoreboard players add @s sandTornadoAdvancementTimer 1
execute if score @s sandTornadoAdvancementTimer matches 1.. unless block ~ ~-0.1 ~ #desertscourge:air run scoreboard players reset @s sandTornadoAdvancementTimer
execute if score @s sandTornadoAdvancementTimer matches 400.. run function desertscourge:advancements/how_to_get_down

execute if score @s musicTimer_desertscourge matches 0.. run function desertscourge:music/tick

execute if score @s bagOfWindsCooldown matches 1.. run function desertscourge:items/bag_of_winds/cooldown

execute if score @s death matches 1.. run function desertscourge:player/death
execute if entity @s[tag=!dont.clear.death.count] run scoreboard players reset @s death
tag @s remove dont.clear.death.count

execute if score @s bowUse matches 1.. if items entity @s weapon.* bow[custom_data={barinade:1}] run function desertscourge:items/barinade/use
scoreboard players reset @s bowUse