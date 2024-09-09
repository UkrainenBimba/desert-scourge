execute unless predicate desertscourge:biome/desert run scoreboard players reset @s sandTornadoSpawn
execute if predicate desertscourge:biome/desert run function desertscourge:sand_tornado/spawn_timer

execute anchored eyes if entity @e[type=item_display,tag=worm,distance=..6] run attribute @s player.entity_interaction_range modifier add ddf7d9c8-ff1a-4492-a687-cb74900e3308 3 add_value
execute anchored eyes unless entity @e[type=item_display,tag=worm,distance=..6] run attribute @s player.entity_interaction_range modifier remove ddf7d9c8-ff1a-4492-a687-cb74900e3308

execute if score @s sandTornadoTimer matches 1..6 run scoreboard players add @s sandTornadoTimer 1
execute if score @s sandTornadoTimer matches 7.. run scoreboard players reset @s sandTornadoTimer

execute if score @s sandTornadoAdvancementTimer matches 1.. run function desertscourge:advancements/how_to_get_down/tick

execute if score @s musicTimer_desertscourge matches 0.. run function desertscourge:music/tick

execute if score @s bagOfWindsCooldown matches 1.. run function desertscourge:items/bag_of_winds/cooldown
execute unless entity @s[gamemode=creative] if items entity @s container.* firework_star[custom_data~{amulet_of_winds:1},!damage=75] run function desertscourge:items/amulet_of_winds/tick

execute if score @s bowUse matches 1.. if items entity @s weapon.* bow[custom_data={barinade:1}] run function desertscourge:items/barinade/use

execute if items entity @s armor.feet diamond_boots[custom_data~{dunerider_boots:1}] run function desertscourge:items/dunerider_boots/tick
execute unless items entity @s armor.feet diamond_boots[custom_data~{dunerider_boots:1}] if score @s duneriderBootsTimer matches 1.. run function desertscourge:items/dunerider_boots/reset

execute if score @s wormToothBuff matches ..7 unless items entity @s weapon.mainhand iron_sword[custom_data~{worm_tooth:1}] run function desertscourge:items/worm_tooth/clear_attributes
execute unless score @s wormToothBuff matches 1.. run function desertscourge:items/worm_tooth/clear_attributes
execute if score @s wormToothAttack matches 1.. run function desertscourge:items/worm_tooth/clear_attributes

execute if score @s death matches 1.. run function desertscourge:player/death
execute if entity @s[tag=!dont.clear.death.count] run scoreboard players reset @s death
tag @s remove dont.clear.death.count

execute if entity @s[gamemode=creative] run function desertscourge:commands/tick

scoreboard players enable @s desertscourge.difficulty
execute if score @s desertscourge.difficulty matches 1 run function desertscourge:difficulty/easy
execute if score @s desertscourge.difficulty matches 2 run function desertscourge:difficulty/default
execute if score @s desertscourge.difficulty matches 3 run function desertscourge:difficulty/hard

scoreboard players remove @s[scores={wormAttackCD=1..}] wormAttackCD 1
scoreboard players remove @s[scores={wormToothBuff=1..}] wormToothBuff 1
scoreboard players remove @s[scores={wormToothAttack=1..}] wormToothAttack 1
scoreboard players reset @s[scores={amuletOfWindsFallDist=1..}] amuletOfWindsFallDist
scoreboard players reset @s bowUse
scoreboard players reset @s damageBlocked
tag @s remove using.shield