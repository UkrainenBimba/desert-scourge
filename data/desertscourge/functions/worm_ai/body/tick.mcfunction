scoreboard players operation *temp mobID = @s mobID
scoreboard players operation *temp wormPart = @s wormPart
scoreboard players remove *temp wormPart 1
execute as @e[type=item_display,tag=worm] if score @s mobID = *temp mobID if score @s wormPart = *temp wormPart run tag @s add next.part
execute as @e[type=item_display,tag=worm,tag=worm.ai.head] if score @s mobID = *temp mobID if score @s wormPart matches 0 run tag @s add head

execute store result score *toX math run data get entity @e[type=item_display,tag=worm,tag=next.part,limit=1] Pos[0] 100
execute store result score *toY math run data get entity @e[type=item_display,tag=worm,tag=next.part,limit=1] Pos[1] 100
execute store result score *toZ math run data get entity @e[type=item_display,tag=worm,tag=next.part,limit=1] Pos[2] 100
execute store result score *fromX math run data get entity @s Pos[0] 100
execute store result score *fromY math run data get entity @s Pos[1] 100
execute store result score *fromZ math run data get entity @s Pos[2] 100

execute store result storage desertscourge:temp get_length.x float 0.01 run scoreboard players operation *toX math -= *fromX math
execute store result storage desertscourge:temp get_length.y float 0.01 run scoreboard players operation *toY math -= *fromY math
execute store result storage desertscourge:temp get_length.z float 0.01 run scoreboard players operation *toZ math -= *fromZ math
function desertscourge:math/get_distance/init with storage desertscourge:temp get_length

execute store result score *dist math run data get entity 0-0-0-0-0 transformation.scale[0] 100
execute store result storage desertscourge:temp get_length.dist float 0.01 run scoreboard players operation *dist math -= *wormSize settings
execute if score *dist math matches 1.. run function desertscourge:worm_ai/body/macros with storage desertscourge:temp get_length

execute summon marker run function desertscourge:worm_ai/body/get_rot
function desertscourge:math/rotation_to_quaternion/init with storage desertscourge:temp get_rot
data modify entity @s transformation.left_rotation set from storage desertscourge:temp quaternion

scoreboard players operation @s wormZRot += @e[type=item_display,tag=worm,tag=head,limit=1] wormZRotSpeed
execute store result storage desertscourge:temp get_z_rot.index int 0.05 run scoreboard players operation @s wormZRot %= *720 const
function desertscourge:worm_ai/body/macros_z_rot with storage desertscourge:temp get_z_rot

scoreboard players add *temp wormPart 1
execute at @s as @e[type=pig,tag=worm.hitbox] if score @s mobID = *temp mobID if score @s wormPart = *temp wormPart run function desertscourge:worm_ai/body/hitbox

tag @s add save.mob
execute as @a[distance=..1.5] run function desertscourge:worm_ai/body/worm_body_attack
tag @s remove save.mob

execute if score @e[type=item_display,tag=worm,tag=head,limit=1] wormDeathTimer matches 0.. if score @e[type=item_display,tag=worm,tag=head,limit=1] wormDeathTimer <= @s wormDeathTimer run function desertscourge:worm_ai/body/death

data modify entity @s start_interpolation set value -1
tag @e[type=item_display,tag=worm,tag=next.part,limit=1] remove next.part
tag @e[type=item_display,tag=worm,tag=head,limit=1] remove head
data remove storage desertscourge:temp get_length
data remove storage desertscourge:temp get_rot
data remove storage desertscourge:temp get_z_rot
scoreboard players reset *fromX math
scoreboard players reset *fromY math
scoreboard players reset *fromZ math
scoreboard players reset *toX math
scoreboard players reset *toY math
scoreboard players reset *toZ math
scoreboard players reset *dist math
scoreboard players reset *temp mobID
scoreboard players reset *temp wormPart