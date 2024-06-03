$scoreboard players set *angle math $(angle)
execute store result storage desertscourge:temp getCos.angle int 1 run scoreboard players operation *angle math %= *360 const
function desertscourge:math/trigonometry/cos/get_in_table with storage desertscourge:temp getCos

data remove storage desertscourge:temp getCos
scoreboard players reset *angle math