

#adds fern to base of plant. Spitter dies when fern is removed
execute at @e[tag=newSpitter,tag=!potted] run setblock ~ ~ ~ minecraft:fern replace
execute at @e[tag=newSpitter,tag=potted] run setblock ~ ~ ~ minecraft:potted_fern replace


scoreboard players set @e[tag=newSpitter] PEAattacktime 2

scoreboard players set @e[tag=newSpitter] PEAlifetime 0



tag @e[tag=newSpitter] add spitter

tag @e[tag=newSpitter] remove newSpitter