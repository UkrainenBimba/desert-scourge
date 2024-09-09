scoreboard players remove #DISTANCE bdlib.raycast 1

$execute if score #COLLIDE_BLOCK bdlib.raycast matches 1 unless block ~ ~ ~ $(block_ignore) run function bdlib:raycast/zzzzzz/collide_block with storage bdlib:temp raycast

$execute if score #DISTANCE bdlib.raycast matches 0 run particle end_rod ^ ^ ^-$(interval)
$execute if score #DISTANCE bdlib.raycast matches 1.. positioned ^ ^ ^$(interval) run function bdlib:raycast/zzzzzz/loop with storage bdlib:temp raycast