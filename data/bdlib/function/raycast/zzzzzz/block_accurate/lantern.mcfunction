execute if block ~ ~ ~ #bdlib:lantern[hanging=false] align xyz positioned ~.3125 ~-.4375 ~.3125 if entity @s[dx=0,dy=0,dz=0] positioned ~ ~ ~.375 unless entity @s[dx=0,dy=0,dz=0] positioned ~.375 ~ ~-.375 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #bdlib:lantern[hanging=true] align xyz positioned ~.3125 ~.0625 ~.3125 if entity @s[dx=0,dy=0,dz=0] positioned ~ ~ ~.375 unless entity @s[dx=0,dy=0,dz=0] positioned ~.375 ~ ~-.375 unless entity @s[dx=0,dy=0,dz=0] positioned ~-.375 ~.5625 ~ unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0