execute store result score *damage math run data get entity @s Health 10
scoreboard players remove *damage math 10240
execute as @e[type=item_display,tag=worm,tag=worm.ai.head] if score @s mobID = *temp mobID if score @s wormPart matches 0 run scoreboard players operation @s wormHealth += *damage math
scoreboard players reset *damage math