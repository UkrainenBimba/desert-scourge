execute unless entity @e[type=marker,tag=worm.point] as @a[distance=..128] unless score @s musicTimer_desertscourge matches 0.. run scoreboard players set @s musicTimer_desertscourge 0

function desertscourge:worm_ai/head/attacks/tick

execute if block ~ ~ ~ #desertscourge:cannot_dig if entity @s[tag=digged] run function desertscourge:worm_ai/head/dig_up
execute unless block ~ ~ ~ #desertscourge:cannot_dig unless entity @s[tag=digged] run function desertscourge:worm_ai/head/dig_into

execute if block ~ ~ ~ #desertscourge:cannot_dig run scoreboard players remove @s wormMotion_Y 5

execute unless block ~ ~ ~ #desertscourge:cannot_dig run function desertscourge:worm_ai/head/movement

summon marker ~ ~ ~ {Tags:["get.rotation"]}

execute store result storage desertscourge:temp movement.x float 0.01 run scoreboard players get @s wormMotion_X
execute store result storage desertscourge:temp movement.y float 0.01 run scoreboard players get @s wormMotion_Y
execute store result storage desertscourge:temp movement.z float 0.01 run scoreboard players get @s wormMotion_Z
function desertscourge:worm_ai/head/tp_macros with storage desertscourge:temp movement
function desertscourge:math/get_distance/init with storage desertscourge:temp movement
data remove storage desertscourge:temp movement

execute store result score @s wormZRotSpeed run data get entity 0-0-0-0-0 transformation.scale[0] 10000
scoreboard players operation @s wormZRotSpeed /= *wormMaxSpeed settings
scoreboard players operation @s wormZRotSpeed /= *5 const

execute unless block ~ ~ ~ #desertscourge:cannot_dig at @s run function desertscourge:worm_ai/head/dig_sound

scoreboard players operation @s wormZRot += @s wormZRotSpeed
execute store result storage desertscourge:temp get_z_rot.index int 0.05 run scoreboard players operation @s wormZRot %= *720 const
function desertscourge:worm_ai/body/macros_z_rot with storage desertscourge:temp get_z_rot

tag @s add save.mob
execute as @e[type=marker,tag=get.rotation,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=item_display,tag=save.mob,limit=1] eyes
tag @s remove save.mob
execute store result storage desertscourge:temp get_rotation.x int 1 run data get entity @e[type=marker,tag=get.rotation,limit=1] Rotation[0]
execute store result storage desertscourge:temp get_rotation.y int 1 run data get entity @e[type=marker,tag=get.rotation,limit=1] Rotation[1]
function desertscourge:math/rotation_to_quaternion/init with storage desertscourge:temp get_rotation
data modify entity @s transformation.left_rotation set from storage desertscourge:temp quaternion
data remove storage desertscourge:temp get_rotation
data remove storage desertscourge:temp quaternion
kill @e[type=marker,tag=get.rotation,limit=1]

scoreboard players operation @s wormHealth > *0 const
execute if score @s wormHealth matches ..0 unless score @s wormDeathTimer matches 1.. run function desertscourge:worm_ai/head/death/start
execute store result storage desertscourge:temp get_bossbar.index int 1 run scoreboard players get @s mobID
execute store result storage desertscourge:temp get_bossbar.health int 0.1 run scoreboard players get @s wormHealth
execute unless entity @e[type=marker,tag=worm.point] run function desertscourge:worm_ai/head/display_bossbar with storage desertscourge:temp get_bossbar
data remove storage desertscourge:temp get_bossbar.index

execute if score @s wormDeathTimer matches 1.. run scoreboard players remove @s wormDeathTimer 1
execute if score @s wormDeathTimer matches 0 run function desertscourge:worm_ai/head/death/loot


data modify entity @s start_interpolation set value -1