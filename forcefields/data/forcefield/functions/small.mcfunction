execute at @e[tag=smallfield] run particle minecraft:portal ^ ^ ^ 1.5 1.5 1.5 1 5 force
execute at @e[type=arrow,nbt=!{pickup:0b}] if entity @e[tag=smallfield,distance=..4] run particle minecraft:flame ^ ^ ^ .2 .2 .2 0 4 normal
execute at @e[type=arrow,nbt=!{pickup:0b}] if entity @e[tag=smallfield,distance=..4] run playsound minecraft:entity.blaze.hurt hostile @p ~ ~ ~ 16 2
execute at @e[tag=smallfield] run kill @e[type=arrow,distance=..4,nbt=!{pickup:0b}]