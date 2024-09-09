tag @s add barinade.arrow
data modify entity @s NoGravity set value 1b
data modify entity @s life set value 1100
data modify entity @s pickup set value 0b
data modify entity @s item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:16776404,custom_effects:[{id:"minecraft:unluck",amplifier:120,duration:2,show_particles:0b,show_icon:0b,ambient:0b}]}}}
execute store result entity @s Motion[0] double 0.000002 run data get entity @s Motion[0] 1000000
execute store result entity @s Motion[1] double 0.000002 run data get entity @s Motion[1] 1000000
execute store result entity @s Motion[2] double 0.000002 run data get entity @s Motion[2] 1000000
execute store result entity @s damage double 0.0075 run data get entity @s damage 100