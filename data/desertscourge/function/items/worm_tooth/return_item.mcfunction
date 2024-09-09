execute on passengers run item replace entity 0-0-0-0-0 container.0 from entity @s container.0
summon item ~ ~ ~ {PickupDelay:0s,Item:{id:"stone",count:1},Tags:["set.item"]}
data modify entity @e[type=item,tag=set.item,limit=1] Item set from entity 0-0-0-0-0 item
tag @e[type=item,tag=set.item,limit=1] remove set.item

scoreboard players set *update wormToothTimer 99
function desertscourge:items/worm_tooth/kill