execute on passengers at @s run function desertscourge:sand_tornado/rotate

tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=!boss] if entity @a[distance=..24,gamemode=!spectator] facing entity @p[distance=..24,gamemode=!spectator,limit=1] eyes rotated ~ 0 positioned ^ ^ ^0.025 run tp @s ~ ~ ~
execute if entity @s[tag=boss] if entity @a[distance=..64,gamemode=!spectator] facing entity @p[distance=..64,gamemode=!spectator,limit=1] eyes rotated ~ 0 positioned ^ ^ ^0.065 run tp @s ~ ~ ~
execute if block ~ ~-0.1 ~ #desertscourge:cannot_dig run tp @s ~ ~-0.1 ~
execute unless block ~ ~ ~ #desertscourge:cannot_dig run tp @s ~ ~0.1 ~

function desertscourge:sand_tornado/particles_start

execute positioned ~-1 ~ ~-1 as @a[dx=1,dz=1,dy=2,gamemode=!spectator] unless score @s sandTornadoTimer matches 1.. run function desertscourge:sand_tornado/motion
execute positioned ~-2 ~3 ~-2 as @a[dx=3,dz=3,dy=2,gamemode=!spectator] unless score @s sandTornadoTimer matches 1.. run function desertscourge:sand_tornado/motion

execute if data entity @s interaction run function desertscourge:sand_tornado/interaction

scoreboard players add @s math 1
execute if score @s math matches 40.. run function desertscourge:sand_tornado/play_sound

execute if entity @s[tag=!boss] run scoreboard players add @s sandTornadoTimer 1
execute if entity @s[tag=!boss] if score @s sandTornadoTimer matches 12000.. run function desertscourge:sand_tornado/kill