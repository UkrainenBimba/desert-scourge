execute summon item_display run function desertscourge:worm_create/body

scoreboard players remove *amount math 1
execute if score *amount math matches 1.. run function desertscourge:worm_create/body_loop