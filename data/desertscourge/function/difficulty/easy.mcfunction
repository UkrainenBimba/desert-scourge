scoreboard players set *set difficulty 1

scoreboard players set *wormHealth difficulty 1500
data modify storage desertscourge:const difficulty set value {max_health:150f,head_attack:10f,body_attack:5f,shield_attack:20f,mini_worm_attack:5f}

tellraw @a {"translate": "difficulty.easy","color": "green"}
scoreboard players reset @s desertscourge.difficulty