execute as @a[tag=!id,limit=1] run function desertscourge:set_player_id

execute as @e[type=marker,tag=worm.point] at @s run function desertscourge:worm_create/point/tick

execute as @e[type=item_display,tag=worm] at @s run function desertscourge:worm_ai/tick

execute as @e[type=interaction,tag=sand.tornado] at @s run function desertscourge:sand_tornado/tick

execute as @e[type=item_display,tag=mini.worm.attack] at @s run function desertscourge:mini_worm/tick

execute as @e[type=arrow,tag=barinade.arrow] at @s run function desertscourge:items/barinade/arrow/tick

execute as @a at @s run function desertscourge:player_tick