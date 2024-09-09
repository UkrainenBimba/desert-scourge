execute if entity @s[tag=save.from.falling,predicate=desertscourge:player/on_ground] run function desertscourge:items/amulet_of_winds/save
execute if entity @s[tag=save.from.falling] run function desertscourge:items/amulet_of_winds/clear

execute if predicate desertscourge:player/falling run function desertscourge:items/amulet_of_winds/check_falling