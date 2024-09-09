execute if predicate desertscourge:player/motion_y/05 if block ~ ~-0.5 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/10 if block ~ ~-1.0 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/15 if block ~ ~-1.5 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/20 if block ~ ~-2.0 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/25 if block ~ ~-2.5 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/30 if block ~ ~-3.0 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/35 if block ~ ~-3.5 ~ #bdlib:not_solid run return 0
execute if predicate desertscourge:player/motion_y/40 if block ~ ~-4.0 ~ #bdlib:not_solid run return 0

tag @s add save.from.falling
attribute @s generic.fall_damage_multiplier modifier add item.amulet_of_winds -1 add_multiplied_total