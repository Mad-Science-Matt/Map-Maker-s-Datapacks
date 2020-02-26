execute at @e[type=minecraft:shulker,tag=eggsac] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:1,Tags:["eggalarm"]}

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:area_effect_cloud,tag=eggalarm,distance=..10] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:3,Tags:["eggburst"]}

execute at @e[type=minecraft:shulker,tag=eggsac,nbt={HurtTime:9s}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:3,Tags:["eggburst"]}

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:arrow,distance=..3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:3,Tags:["eggburst"]}

execute at @e[type=minecraft:shulker,tag=eggsac] if entity @e[type=minecraft:arrow,distance=..3] run kill @e[type=minecraft:arrow,distance=..3,limit=1]

execute as @a at @s run execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] run execute at @e[type=minecraft:shulker,tag=eggsac,distance=..1] run playsound minecraft:entity.turtle.egg_break hostile @p ~ ~ ~ 16

execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] if entity @e[type=minecraft:shulker,tag=eggsac,distance=..1] run teleport @e[type=minecraft:shulker,tag=eggsac,distance=..1] ~ -256 ~

execute at @e[type=minecraft:area_effect_cloud,tag=eggburst] run summon minecraft:cave_spider ~ ~ ~ {Health:1f,Motion:[0.0,0.6,0.0],CustomName:'{"text":"Hatchling"}',Attributes:[{Name:generic.maxHealth,Base:1}]}