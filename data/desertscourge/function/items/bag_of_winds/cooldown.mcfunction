execute if score @s bagOfWindsCooldown matches 15..20 run particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:1.75,to_color:[0.824,0.757,0.580]} ~ ~1 ~ 0.2 0.3 0.2 0 10 normal

scoreboard players remove @s bagOfWindsCooldown 1
execute if score @s bagOfWindsCooldown matches ..0 run scoreboard players reset @s bagOfWindsCooldown