data merge entity @s {width:1.5f,height:6f,response:1b,Tags:["sand.tornado"]}
execute store result storage desertscourge:temp spawn.rotation int 1 run random value 0..360
function desertscourge:sand_tornado/spawn_macros with storage desertscourge:temp spawn
data remove storage desertscourge:temp spawn