damage @e[type=!#bdlib:entity,distance=..8,predicate=desertscourge:id_system/worm_tooth_id,limit=1] 6 player_attack by @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] from @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1]
attribute @e[type=!#bdlib:entity,distance=..8,predicate=desertscourge:id_system/worm_tooth_id,limit=1] generic.attack_damage modifier remove item.worm_tooth.attack_damage

kill @e[type=item_display,tag=worm.tooth.player_tp,predicate=desertscourge:id_system/worm_tooth_id,distance=..64,limit=1]
tp @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] ~ ~ ~
execute as @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] at @s run function desertscourge:items/worm_tooth/throw_up

function desertscourge:items/worm_tooth/return_item