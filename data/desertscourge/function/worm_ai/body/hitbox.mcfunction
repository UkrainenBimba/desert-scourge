tp @s ~ ~-3 ~

execute if entity @s[nbt={HurtTime:10s}] run function desertscourge:worm_ai/body/check_damage

execute if predicate desertscourge:effects/glowing run function desertscourge:worm_ai/body/add_glowing

data modify entity @s LifeTicks set value 32767s
data modify entity @s Health set value 1024f