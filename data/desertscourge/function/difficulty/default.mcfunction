scoreboard players set *set difficulty 1

scoreboard players set *wormHealth difficulty 2500
data modify storage desertscourge:const difficulty set value {max_health:250f,head_attack:16f,body_attack:8f,shield_attack:32f,mini_worm_attack:8f}

execute if score @s desertscourge.difficulty matches 2 run tellraw @a {"translate": "difficulty.normal","color": "gold"}
scoreboard players reset @s desertscourge.difficulty