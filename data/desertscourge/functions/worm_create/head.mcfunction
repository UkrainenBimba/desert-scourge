data merge entity @s {billboard:"fixed",Tags:["worm","worm.ai.head","digged"],item:{id:"minecraft:firework_star",count:1,components:{"custom_model_data":2385702}},teleport_duration:2,interpolation_duration:3,transformation:{scale:[2.5f,2.5f,2.5f]},brightness:{block:0,sky:15},CustomName:'{"fallback":"Desert Scourge","translate":"mob.desert_scourge.name"}'}
execute store result storage desertscourge:temp create_bossbar.index int 1 run scoreboard players operation @s mobID = *cloud mobID
scoreboard players set @s wormPart 0
scoreboard players set @s wormZRot 0
function desertscourge:worm_create/create_bossbar with storage desertscourge:temp create_bossbar
data remove storage desertscourge:temp create_bossbar

scoreboard players set @s wormMotion_X 0
scoreboard players set @s wormMotion_Y 0
scoreboard players set @s wormMotion_Z 0
scoreboard players set @s wormTargetOffsetY 0

scoreboard players set @s wormHealth 2500