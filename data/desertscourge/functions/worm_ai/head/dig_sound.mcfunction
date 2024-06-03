scoreboard players add @s wormSoundTimer 1
scoreboard players set *soundTimerMax math 900
execute store result score *soundTimerMax2 math run data get entity 0-0-0-0-0 transformation.scale[0] 10000
scoreboard players operation *soundTimerMax2 math /= *wormMaxSpeed settings
scoreboard players operation *soundTimerMax2 math *= *7 const
scoreboard players operation *soundTimerMax math -= *soundTimerMax2 math
scoreboard players operation *soundTimerMax math /= *100 const
execute if score @s wormSoundTimer > *soundTimerMax math run function desertscourge:worm_ai/head/play_dig_sound

scoreboard players reset *soundTimerMax math
scoreboard players reset *soundTimerMax2 math