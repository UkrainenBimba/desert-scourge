execute if entity @s[nbt={inGround:1b}] run kill @s

particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:4,to_color:[0.824,0.757,0.580]} ~ ~ ~ 0 0 0 0 0 force

scoreboard players add @s math 1
execute if score @s math matches 100.. run kill @s