item modify entity @s weapon.mainhand desertscourge:reduce_count
particle explosion ~ ~2 ~ 0 0.5 0 0 2 normal
playsound entity.generic.explode hostile @a ~ ~2 ~ 2.5 2
execute as @e[type=interaction,tag=sand.tornado,tag=save.tornado,limit=1] run function desertscourge:sand_tornado/kill