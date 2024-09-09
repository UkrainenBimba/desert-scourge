tp @s
scoreboard players set @s sandTornadoTimer 1
execute store result storage desertscourge:temp motion.rotation float 0.01 run random value 0..36000
function desertscourge:sand_tornado/motion_macros with storage desertscourge:temp motion

execute if entity @s[advancements={desertscourge:how_to_get_down=false}] unless score @s sandTornadoAdvancementTimer matches 0.. run scoreboard players set @s sandTornadoAdvancementTimer 1
