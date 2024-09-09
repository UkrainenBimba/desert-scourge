execute if predicate desertscourge:player/running unless score @s duneriderBootsTimer matches 100.. run scoreboard players add @s duneriderBootsTimer 1
execute unless predicate desertscourge:player/running run scoreboard players remove @s duneriderBootsTimer 15
execute if score @s duneriderBootsTimer matches ..0 run scoreboard players reset @s duneriderBootsTimer

attribute @s generic.movement_speed modifier remove item.dunerider_boots
execute if score @s duneriderBootsTimer matches 1.. run function desertscourge:items/dunerider_boots/speed_up

execute if predicate desertscourge:player/running if predicate desertscourge:player/on_ground run function desertscourge:items/dunerider_boots/particles