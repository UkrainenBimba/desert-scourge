$scoreboard players set *angle math $(angle)
$scoreboard players set *angleEnter math $(angle)
execute store result storage desertscourge:temp getSin.angle int 1 run scoreboard players operation *angleEnter math %= *180 const
function desertscourge:math/trigonometry/sin/get_in_table with storage desertscourge:temp getSin
execute if score *angle math matches 180.. run scoreboard players operation *sin math *= *-1 const

data remove storage desertscourge:temp getSin
scoreboard players reset *angle math
scoreboard players reset *angleEnter math