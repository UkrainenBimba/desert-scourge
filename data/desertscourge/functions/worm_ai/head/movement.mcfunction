execute unless entity @e[type=marker,tag=worm.point] as @a[tag=id,tag=target,limit=1] at @s positioned over motion_blocking summon marker run function desertscourge:worm_ai/head/get_player_pos
execute if entity @e[type=marker,tag=worm.point,distance=..256,limit=1] as @e[type=marker,tag=worm.point,distance=..256,limit=1] run function desertscourge:worm_ai/head/get_point_pos

execute store result score *fromX math run data get entity @s Pos[0] 100
execute store result score *fromY math run data get entity @s Pos[1] 100
execute store result score *fromZ math run data get entity @s Pos[2] 100

execute store result storage desertscourge:temp normalize_vector.x float 0.01 run scoreboard players operation *dirX math -= *fromX math
data modify storage desertscourge:temp normalize_vector.y set value 0f
execute store result storage desertscourge:temp normalize_vector.z float 0.01 run scoreboard players operation *dirZ math -= *fromZ math
function desertscourge:math/get_distance/init with storage desertscourge:temp normalize_vector
execute store result score *length math run data get entity 0-0-0-0-0 transformation.scale[0] 100
scoreboard players remove *length math 1000
scoreboard players operation *length math > *0 const
scoreboard players operation *length math /= *2 const
scoreboard players operation *length math < *16000 const
scoreboard players operation *dirY math -= *length math

execute store result storage desertscourge:temp normalize_vector.y float 0.01 run scoreboard players operation *dirY math -= *fromY math
function desertscourge:math/get_distance/init with storage desertscourge:temp normalize_vector
execute store result score *length math run data get entity 0-0-0-0-0 transformation.scale[0] 100

scoreboard players operation *speed math = *wormMaxSpeed settings
scoreboard players operation *speed math *= *100 const
scoreboard players operation *speed math /= *length math

scoreboard players operation *wormAccelXZ math = *wormAccel settings
scoreboard players operation *wormAccelXZ math *= *9 const
scoreboard players operation *wormAccelXZ math /= *10 const

scoreboard players operation *wormAccelY math = *wormAccel settings
scoreboard players operation *wormAccelY math *= *225 const
scoreboard players operation *wormAccelY math /= *100 const

scoreboard players operation *dirX math *= *speed math
scoreboard players operation *dirY math *= *speed math
scoreboard players operation *dirZ math *= *speed math
scoreboard players operation *dirX math /= *100 const
scoreboard players operation *dirY math /= *100 const
scoreboard players operation *dirZ math /= *100 const

execute if score @s wormMotion_X < *dirX math run scoreboard players operation @s wormMotion_X += *wormAccelXZ math
execute if score @s wormMotion_X > *dirX math run scoreboard players operation @s wormMotion_X -= *wormAccelXZ math
execute if score @s wormMotion_Y < *dirY math run scoreboard players operation @s wormMotion_Y += *wormAccelY math
execute if score @s wormMotion_Y > *dirY math run scoreboard players operation @s wormMotion_Y -= *wormAccel settings
execute if score @s wormMotion_Z < *dirZ math run scoreboard players operation @s wormMotion_Z += *wormAccelXZ math
execute if score @s wormMotion_Z > *dirZ math run scoreboard players operation @s wormMotion_Z -= *wormAccelXZ math

data remove storage desertscourge:temp normalize_vector
scoreboard players reset *temp wormTarget
scoreboard players reset *fromX math
scoreboard players reset *fromY math
scoreboard players reset *fromZ math
scoreboard players reset *dirX math
scoreboard players reset *dirY math
scoreboard players reset *dirZ math
scoreboard players reset *speed math
scoreboard players reset *length math
scoreboard players reset *wormAccelXZ math
scoreboard players reset *wormAccelY math