##        BDLIB
##    vector/get_vec_looking/init
##
## INPUT - #X, #Y, #LENGTH (bdlib.vector)
##   1.0 = 100
## OUTPUT - #V.X, #V.Y, #V.Z (bdlib.vector), vector.out (storage bdlib:temp)

execute store result storage bdlib:temp vector.x float 0.01 run scoreboard players get #X bdlib.vector
execute store result storage bdlib:temp vector.y float 0.01 run scoreboard players get #Y bdlib.vector
execute store result storage bdlib:temp vector.length float 0.01 run scoreboard players get #LENGTH bdlib.vector
execute summon marker run function bdlib:vector/get_vec_looking/_marker with storage bdlib:temp vector