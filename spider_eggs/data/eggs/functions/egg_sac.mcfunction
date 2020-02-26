execute at @e[type=minecraft:shulker,tag=eggsac] run kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:dragon_egg"},Time:1},distance=..32]

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..3] run setblock ~ ~ ~ minecraft:air replace

execute as @e[tag=eggsac] at @s unless block ~ ~ ~ minecraft:dragon_egg run fill ~-12 ~-12 ~-12 ~12 ~12 ~12 minecraft:air replace minecraft:dragon_egg

execute at @e[type=minecraft:shulker,tag=eggsac,nbt={HurtTime:9s}] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:arrow,distance=..3] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:arrow,distance=..3] run setblock ~ ~ ~ minecraft:air replace

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:arrow,distance=..3] run kill @e[type=minecraft:arrow,distance=..3,limit=1]

execute as @e[tag=eggsac] at @s unless block ~ ~ ~ minecraft:dragon_egg run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:3,Tags:["eggburst"]}

execute as @a at @s run execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] run execute at @e[type=minecraft:shulker,tag=eggsac,distance=..1] run playsound minecraft:entity.turtle.egg_break hostile @p ~ ~ ~ 16

execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] if entity @e[type=minecraft:shulker,tag=eggsac,distance=..0.5] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:dragon_egg

execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] if entity @e[type=minecraft:shulker,tag=eggsac,distance=..0.5] run teleport @e[type=minecraft:shulker,tag=eggsac,distance=..1] ~ -256 ~

execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] run summon minecraft:cave_spider ~ ~ ~ {Health:1f,Motion:[0.0,0.6,0.0],CustomName:'{"text":"Hatchling"}',Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.movementSpeed,Base:0.25}]}