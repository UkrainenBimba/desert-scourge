advancement revoke @s only desertscourge:utility/suspicious_horn/use

execute unless entity @e[type=marker,tag=worm.point,distance=..256] unless entity @e[type=item_display,tag=worm,distance=..256] summon marker run function desertscourge:items/suspicious_horn/create_point