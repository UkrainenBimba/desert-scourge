playsound minecraft:entity.breeze.slide player @s ~ ~ ~ 1 2
item modify entity @s weapon.mainhand desertscourge:amulet_of_winds/reset_damage

execute as @e[type=interaction,tag=sand.tornado,tag=save.tornado,limit=1] run function desertscourge:sand_tornado/kill