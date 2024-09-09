execute store result storage desertscourge:temp item.slot int 1 run function desertscourge:items/amulet_of_winds/get_slot
function desertscourge:items/amulet_of_winds/damage_item with storage desertscourge:temp item

execute store result score *damage amuletOfWindsFallDist run data get entity 0-0-0-0-0 item.components."minecraft:damage"
scoreboard players remove *damage amuletOfWindsFallDist 75
scoreboard players operation @s amuletOfWindsFallDist += *damage amuletOfWindsFallDist
execute if score @s amuletOfWindsFallDist matches 1.. if items entity @s container.* firework_star[custom_data~{amulet_of_winds:1},!damage=75] run function desertscourge:items/amulet_of_winds/reduce_damage