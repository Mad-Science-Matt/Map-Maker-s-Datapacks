execute as @e[type=minecraft:skeleton,tag=!noswap] at @s if entity @p[distance=..6] run replaceitem entity @e[type=minecraft:skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b},{}]}] weapon.mainhand minecraft:wooden_sword

execute as @e[type=minecraft:skeleton,tag=!noswap] at @s if entity @p[distance=8..] run replaceitem entity @e[type=minecraft:skeleton,nbt={HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}] weapon.mainhand minecraft:bow