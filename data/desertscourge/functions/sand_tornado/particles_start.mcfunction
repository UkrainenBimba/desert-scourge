particle cloud ~ ~1.5 ~ 0 0 0 0.1 1 force
particle cloud ~ ~3 ~ 0 0 0 0.2 1 force
particle cloud ~ ~4.5 ~ 0 0 0 0.25 1 force
function desertscourge:sand_tornado/particles_loop {offset:0}
scoreboard players reset *particles math
data remove storage desertscourge:temp particles