tag @s add barinade.arrow
data modify entity @s NoGravity set value 1b
data modify entity @s life set value 1100
data modify entity @s pickup set value 0b
execute store result entity @s Motion[0] double 0.000002 run data get entity @s Motion[0] 1000000
execute store result entity @s Motion[1] double 0.000002 run data get entity @s Motion[1] 1000000
execute store result entity @s Motion[2] double 0.000002 run data get entity @s Motion[2] 1000000