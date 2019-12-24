execute at @e[tag=interdiction] run particle minecraft:end_rod ^ ^ ^ 12 12 12 0 10 force
execute at @e[type=ender_pearl] if entity @e[tag=interdiction,distance=..32] run particle minecraft:flame ^ ^ ^ .2 .2 .2 0 4 normal
execute at @e[type=ender_pearl] if entity @e[tag=interdiction,distance=..32] run playsound minecraft:entity.blaze.hurt hostile @p ~ ~ ~ 16 2
execute at @e[tag=interdiction] run kill @e[type=ender_pearl,distance=..32]