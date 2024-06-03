playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.75 2
particle minecraft:explosion
particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0.375 0.375 1 40 force

execute as @e[type=pig,tag=worm.hitbox] if score @s mobID = *temp mobID if score @s wormPart = *temp wormPart at @s run function desertscourge:worm_ai/body/death2
kill @s