scoreboard players operation *temp playerID = @s wormToothID
scoreboard players operation *temp wormToothID = @s wormToothID

execute unless score @s wormToothTimer matches ..-1 run scoreboard players add @s wormToothTimer 1
execute if score @s wormToothTimer matches 10.. run scoreboard players set @s wormToothTimer -1

execute unless score *update wormToothTimer matches 99 if score @s wormToothTimer matches 1.. positioned ^ ^ ^0.5 run function desertscourge:items/worm_tooth/move_forward
execute unless score *update wormToothTimer matches 99 if score @s wormToothTimer matches -1 run function desertscourge:items/worm_tooth/move_back/start

execute unless score *update wormToothTimer matches 99 if score @s wormToothTimer matches -2 run function desertscourge:items/worm_tooth/light/start
execute unless score *update wormToothTimer matches 99 if score @s wormToothTimer matches -3 run function desertscourge:items/worm_tooth/heavy/start

scoreboard players reset *update wormToothTimer