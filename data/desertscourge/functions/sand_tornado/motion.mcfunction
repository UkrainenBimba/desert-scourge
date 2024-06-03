execute at @s run tp @s
scoreboard players set @s sandTornadoTimer 1
execute store result storage desertscourge:temp motion.rotation float 0.01 run random value 0..36000
function desertscourge:sand_tornado/motion_macros with storage desertscourge:temp motion
data remove storage desertscourge:temp motion

execute if entity @s[tag=!adv.how_to_get_down] unless score @s sandTornadoAdvancementTimer matches 0.. run scoreboard players set @s sandTornadoAdvancementTimer 1