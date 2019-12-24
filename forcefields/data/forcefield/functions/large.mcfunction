execute at @e[tag=largefield] run particle minecraft:portal ^ ^ ^ 6 6 6 1 50 force
execute at @e[type=arrow,nbt=!{pickup:0b}] if entity @e[tag=largefield,distance=12..16] run particle minecraft:flame ^ ^ ^ .2 .2 .2 0 4 normal
execute at @e[type=arrow,nbt=!{pickup:0b}] if entity @e[tag=largefield,distance=12..16] run playsound minecraft:entity.blaze.hurt hostile @p ~ ~ ~ 16 2
execute at @e[tag=largefield] run kill @e[type=arrow,distance=12..16,nbt=!{pickup:0b}]