scoreboard players operation @s wormDeathTimer = *wormLength settings
scoreboard players add @s wormDeathTimer 2

scoreboard players operation *tempID mobID = @s mobID
execute as @e[type=pig,tag=worm.hitbox] if score @s mobID = *tempID mobID on attacker run advancement grant @s only desertscourge:the_beast_of_deserts
scoreboard players reset *tempID mobID