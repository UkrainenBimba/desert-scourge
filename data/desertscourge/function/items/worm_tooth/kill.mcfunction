scoreboard players operation *temp wormToothID = @s wormToothID
execute if score @s wormToothTimer matches -2 run scoreboard players reset @e[type=!#bdlib:entity,distance=..8,predicate=desertscourge:id_system/worm_tooth_id,limit=1] wormToothID
scoreboard players reset *temp wormToothID

execute on passengers run kill @s
kill @s