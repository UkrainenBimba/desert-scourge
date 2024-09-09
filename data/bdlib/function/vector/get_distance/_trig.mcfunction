$execute positioned 0.5 0.0 0.5 facing -$(x) -$(y) $(z) run tp 10-0-0-0-1 ~ ~ ~ ~ ~
execute store result storage bdlib:temp vector.get_distance.t int 1 run data get entity 10-0-0-0-1 Rotation[1] 100
function bdlib:vector/get_distance/_sin with storage bdlib:temp vector.get_distance