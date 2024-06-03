execute store result storage desertscourge:temp spawn_worm.rotation int 1 run random value 0..360
execute store result storage desertscourge:temp spawn_worm.body_length int 1 run scoreboard players get *wormLength settings
function desertscourge:worm_create/point/spawn_worm_macros with storage desertscourge:temp spawn_worm
data remove storage desertscourge:temp spawn_worm