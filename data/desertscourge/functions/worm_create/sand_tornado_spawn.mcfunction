data merge entity @s {width:1.5,height:6,response:1b,Tags:["sand.tornado","boss"]}
spreadplayers ~ ~ 10 10 true @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
scoreboard players operation @s mobID = *cloud mobID