execute if entity @s[nbt={HurtTime:10s}] run function desertscourge:worm_ai/body/check_damage

tp @s ~ ~-2 ~
data modify entity @s HurtTime set value 0s
data modify entity @s Health set value 1024f