data merge entity @s {billboard:"fixed",Tags:["worm","worm.ai.head","digged"],item:{id:"minecraft:firework_star",count:1,components:{"custom_model_data":2385702}},teleport_duration:2,interpolation_duration:3,transformation:{scale:[2.5f,2.5f,2.5f]},brightness:{block:0,sky:15},CustomName:'{"fallback":"Desert Scourge","translate":"mob.desert_scourge.name"}'}
execute store result storage desertscourge:temp create_bossbar.index int 1 run scoreboard players operation @s mobID = *cloud mobID
scoreboard players set @s wormPart 0
scoreboard players set @s wormZRot 0
data modify storage desertscourge:temp create_bossbar.max_health set from storage desertscourge:const difficulty.max_health
function desertscourge:worm_create/create_bossbar with storage desertscourge:temp create_bossbar
data remove storage desertscourge:temp create_bossbar

tp @s ~ ~ ~ facing entity @e[type=marker,tag=worm.point,limit=1]
execute store result score @s wormRotation.Y run data get entity @s Rotation[0] 10
execute store result score @s wormRotation.X run data get entity @s Rotation[1] 10
tp @s ~ ~ ~ 0 0

scoreboard players operation @s wormHealth = *wormHealth difficulty