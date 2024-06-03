$scoreboard players set *amount math $(body_length)

execute summon item_display run function desertscourge:worm_create/head

scoreboard players set *part math 1
function desertscourge:worm_create/body_loop

execute summon item_display run function desertscourge:worm_create/tail

execute summon interaction run function desertscourge:worm_create/sand_tornado_spawn

scoreboard players add *cloud mobID 1

scoreboard players reset *amount math
scoreboard players reset *part math