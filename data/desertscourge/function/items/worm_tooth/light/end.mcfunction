attribute @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] generic.attack_knockback modifier add item.worm_tooth.attack_knockback 1.25 add_value
attribute @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] generic.attack_speed modifier add item.worm_tooth.attack_speed 999 add_value
scoreboard players set @a[tag=id,predicate=desertscourge:id_system/player_id,limit=1] wormToothBuff 8

attribute @e[type=!#bdlib:entity,distance=..256,predicate=desertscourge:id_system/worm_tooth_id,limit=1] generic.follow_range modifier remove item.worm_tooth.follow_range
function desertscourge:items/worm_tooth/return_item