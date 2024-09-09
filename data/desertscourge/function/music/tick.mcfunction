execute if score @s musicTimer_desertscourge matches 0 run playsound desertscourge:music.desert_scourge master @s

scoreboard players add @s musicTimer_desertscourge 1
execute if score @s musicTimer_desertscourge matches 4851.. run scoreboard players set @s musicTimer_desertscourge 0

execute unless entity @e[type=item_display,tag=worm.ai.head,distance=..128] run function desertscourge:music/stop