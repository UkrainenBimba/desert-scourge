scoreboard players operation #END bdlib.raycast = #BLOCK_STOP bdlib.raycast

execute if score #END bdlib.raycast matches 1 if score #BLOCK_ACCURATE bdlib.raycast matches 1 if block ~ ~ ~ #bdlib:raycast/accurate run function bdlib:raycast/zzzzzz/block_accurate/init

execute if score #END bdlib.raycast matches 1 run scoreboard players set #DISTANCE bdlib.raycast 0