$particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:1.75,to_color:[0.824,0.757,0.580]} ^ ^ ^$(offset) 0 0 0 0 1 force
$particle minecraft:dust_plume ^ ^ ^$(offset) 0 1 0 0.4 0 force
execute store result storage desertscourge:temp particles.offset float 0.075 run scoreboard players add *particles math 1
execute if score *particles math matches ..30 positioned ~ ~0.2 ~ rotated ~25 ~ run function desertscourge:sand_tornado/particles_loop with storage desertscourge:temp particles