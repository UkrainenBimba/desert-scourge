scoreboard objectives add death deathCount

scoreboard objectives add math dummy

scoreboard objectives add const dummy
scoreboard players set *-1 const -1
scoreboard players set *0 const 0
scoreboard players set *2 const 2
scoreboard players set *5 const 5
scoreboard players set *7 const 7
scoreboard players set *8 const 8
scoreboard players set *9 const 9
scoreboard players set *10 const 10
scoreboard players set *15 const 15
scoreboard players set *16 const 16
scoreboard players set *20 const 20
scoreboard players set *100 const 100
scoreboard players set *180 const 180
scoreboard players set *225 const 225
scoreboard players set *360 const 360
scoreboard players set *720 const 720
scoreboard players set *1600 const 1600
scoreboard players set *16000 const 16000

scoreboard objectives add mobID dummy
execute unless score *cloud mobID matches -2147483648..2147483647 run scoreboard players set *cloud mobID 0

scoreboard objectives add playerID dummy
execute unless score *cloud playerID matches -2147483648..2147483647 run scoreboard players set *cloud playerID 0


scoreboard objectives add wormPart dummy
scoreboard objectives add wormZRot dummy
scoreboard objectives add wormZRotSpeed dummy
scoreboard objectives add wormTarget dummy
scoreboard objectives add wormSoundTimer dummy
scoreboard objectives add wormHealth dummy
scoreboard objectives add wormAttackTimer dummy
scoreboard objectives add wormDeathTimer dummy

scoreboard objectives add wormMotion_X dummy
scoreboard objectives add wormMotion_Y dummy
scoreboard objectives add wormMotion_Z dummy

scoreboard objectives add musicTimer_desertscourge dummy

scoreboard objectives add sandTornadoTimer dummy
scoreboard objectives add sandTornadoAdvancementTimer dummy
scoreboard objectives add sandTornadoSpawn dummy

scoreboard objectives add bagOfWindsCooldown dummy

scoreboard objectives add bowUse used:bow

scoreboard objectives add settings dummy
execute unless score *setted settings matches 1 run function desertscourge:settings

data modify storage desertscourge:const sineTable set value [0, 17, 34, 52, 69, 87, 104, 121, 139, 156, 173, 190, 207, 224, 241, 258, 275, 292, 309, 325, 342, 358, 374, 390, 406, 422, 438, 453, 469, 484, 499, 515, 529, 544, 559, 573, 587, 601, 615, 629, 642, 656, 669, 681, 694, 707, 719, 731, 743, 754, 766, 777, 788, 798, 809, 819, 829, 838, 848, 857, 866, 874, 882, 891, 898, 906, 913, 920, 927, 933, 939, 945, 951, 956, 961, 965, 970, 974, 978, 981, 984, 987, 990, 992, 994, 996, 997, 998, 999, 999, 1000, 999, 999, 998, 997, 996, 994, 992, 990, 987, 984, 981, 978, 974, 970, 965, 961, 956, 951, 945, 939, 933, 927, 920, 913, 906, 898, 891, 882, 874, 866, 857, 848, 838, 829, 819, 809, 798, 788, 777, 766, 754, 743, 731, 719, 707, 694, 681, 669, 656, 642, 629, 615, 601, 587, 573, 559, 544, 529, 515, 499, 484, 469, 453, 438, 422, 406, 390, 374, 358, 342, 325, 309, 292, 275, 258, 241, 224, 207, 190, 173, 156, 139, 121, 104, 87, 69, 52, 34, 17]
data modify storage desertscourge:const cosineTable set value [1000, 999, 999, 998, 997, 996, 994, 992, 990, 987, 984, 981, 978, 974, 970, 965, 961, 956, 951, 945, 939, 933, 927, 920, 913, 906, 898, 891, 882, 874, 866, 857, 848, 838, 829, 819, 809, 798, 788, 777, 766, 754, 743, 731, 719, 707, 694, 681, 669, 656, 642, 629, 615, 601, 587, 573, 559, 544, 529, 515, 500, 484, 469, 453, 438, 422, 406, 390, 374, 358, 342, 325, 309, 292, 275, 258, 241, 224, 207, 190, 173, 156, 139, 121, 104, 87, 69, 52, 34, 17, 0, -17, -34, -52, -69, -87, -104, -121, -139, -156, -173, -190, -207, -224, -241, -258, -275, -292, -309, -325, -342, -358, -374, -390, -406, -422, -438, -453, -469, -484, -499, -515, -529, -544, -559, -573, -587, -601, -615, -629, -642, -656, -669, -681, -694, -707, -719, -731, -743, -754, -766, -777, -788, -798, -809, -819, -829, -838, -848, -857, -866, -874, -882, -891, -898, -906, -913, -920, -927, -933, -939, -945, -951, -956, -961, -965, -970, -974, -978, -981, -984, -987, -990, -992, -994, -996, -997, -998, -999, -999, -1000, -999, -999, -998, -997, -996, -994, -992, -990, -987, -984, -981, -978, -974, -970, -965, -961, -956, -951, -945, -939, -933, -927, -920, -913, -906, -898, -891, -882, -874, -866, -857, -848, -838, -829, -819, -809, -798, -788, -777, -766, -754, -743, -731, -719, -707, -694, -681, -669, -656, -642, -629, -615, -601, -587, -573, -559, -544, -529, -515, -500, -484, -469, -453, -438, -422, -406, -390, -374, -358, -342, -325, -309, -292, -275, -258, -241, -224, -207, -190, -173, -156, -139, -121, -104, -87, -69, -52, -34, -17, 0, 17, 34, 52, 69, 87, 104, 121, 139, 156, 173, 190, 207, 224, 241, 258, 275, 292, 309, 325, 342, 358, 374, 390, 406, 422, 438, 453, 469, 484, 500, 515, 529, 544, 559, 573, 587, 601, 615, 629, 642, 656, 669, 681, 694, 707, 719, 731, 743, 754, 766, 777, 788, 798, 809, 819, 829, 838, 848, 857, 866, 874, 882, 891, 898, 906, 913, 920, 927, 933, 939, 945, 951, 956, 961, 965, 970, 974, 978, 981, 984, 987, 990, 992, 994, 996, 997, 998, 999, 999]

data modify storage desertscourge:const worm.z_rotation set value [[0f,0f,0f,1f],[0f,0f,0.087f,0.996f],[0f,0f,0.174f,0.985f],[0f,0f,0.259f,0.966f],[0f,0f,0.342f,0.940f],[0f,0f,0.423f,0.906f],[0f,0f,0.500f,0.866f],[0f,0f,0.574f,0.819f],[0f,0f,0.643f,0.766f],[0f,0f,0.707f,0.707f],[0f,0f,0.766f,0.643f],[0f,0f,0.819f,0.574f],[0f,0f,0.866f,0.500f],[0f,0f,0.906f,0.423f],[0f,0f,0.940f,0.342f],[0f,0f,0.966f,0.259f],[0f,0f,0.985f,0.174f],[0f,0f,0.996f,0.087f],[0f,0f,1f,0f],[0f,0f,-0.996f,0.087f],[0f,0f,-0.985f,0.174f],[0f,0f,-0.966f,0.259f],[0f,0f,-0.940f,0.342f],[0f,0f,-0.906f,0.423f],[0f,0f,-0.866f,0.500f],[0f,0f,-0.819f,0.574f],[0f,0f,-0.766f,0.643f],[0f,0f,-0.707f,0.707f],[0f,0f,-0.643f,0.766f],[0f,0f,-0.574f,0.819f],[0f,0f,-0.500f,0.866f],[0f,0f,-0.423f,0.906f],[0f,0f,-0.342f,0.940f],[0f,0f,-0.259f,0.966f],[0f,0f,-0.174f,0.985f],[0f,0f,-0.087f,0.996f]]

team add noCol
team modify noCol collisionRule never

summon item_display 0 -64 0 {UUID:[I;0,0,0,0]}
forceload add 0 0