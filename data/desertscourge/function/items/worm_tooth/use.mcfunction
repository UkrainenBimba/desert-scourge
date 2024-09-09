advancement revoke @s only desertscourge:utility/worm_tooth/use

playsound minecraft:item.trident.throw player @s ~ ~ ~ 0.35 2
execute at @s anchored eyes positioned ^ ^ ^0.1 run summon item_display ~ ~ ~ {item:{id:"firework_star",count:1,components:{custom_model_data:2385710}},Tags:["worm.tooth.proj","set.data"],Passengers:[{id:"minecraft:item_display",Tags:["worm.tooth.item"],transformation:{scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}]}
item replace entity 0-0-0-0-0 container.0 from entity @s weapon.mainhand
execute as @e[type=item_display,tag=worm.tooth.proj,tag=set.data,limit=1] on passengers run item replace entity @s container.0 from entity 0-0-0-0-0 container.0
execute at @s anchored eyes positioned ^ ^ ^0.1 run tp @e[type=item_display,tag=worm.tooth.proj,tag=set.data,limit=1] ~ ~ ~ ~ ~
data modify entity @e[type=item_display,tag=worm.tooth.proj,tag=set.data,limit=1] teleport_duration set value 2
scoreboard players operation @e[type=item_display,tag=worm.tooth.proj,tag=set.data,limit=1] wormToothID = @s playerID
tag @e[type=item_display,tag=worm.tooth.proj,tag=set.data,limit=1] remove set.data

item replace entity @s weapon.mainhand with air