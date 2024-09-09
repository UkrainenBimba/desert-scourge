scoreboard players enable @s desertscourge.give.all
scoreboard players enable @s desertscourge.give.amulet_of_winds
scoreboard players enable @s desertscourge.give.bag_of_winds
scoreboard players enable @s desertscourge.give.barinade
scoreboard players enable @s desertscourge.give.dunerider_boots
scoreboard players enable @s desertscourge.give.suspicious_horn
scoreboard players enable @s desertscourge.summon.sand_tornado
scoreboard players enable @s desertscourge.summon.desert_scourge

execute if score @s desertscourge.give.all matches 1 run function desertscourge:commands/give/all
execute if score @s desertscourge.give.amulet_of_winds matches 1 run function desertscourge:commands/give/amulet_of_winds
execute if score @s desertscourge.give.bag_of_winds matches 1 run function desertscourge:commands/give/bag_of_winds
execute if score @s desertscourge.give.barinade matches 1 run function desertscourge:commands/give/barinade
execute if score @s desertscourge.give.dunerider_boots matches 1 run function desertscourge:commands/give/dunerider_boots
execute if score @s desertscourge.summon.sand_tornado matches 1 run function desertscourge:commands/summon/sand_tornado
execute if score @s desertscourge.summon.desert_scourge matches 1 run function desertscourge:commands/summon/desert_scourge