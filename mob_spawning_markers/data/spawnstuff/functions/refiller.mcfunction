scoreboard players set @e[tag=refiller] mobcount 0

execute as @e[tag=hostileMob] at @s run scoreboard players add @e[tag=refiller,distance=..12] mobcount 1


execute as @e[tag=zombie_spawner,scores={mobcount=..2,timer=1}] at @s if entity @a[distance=24..64] unless predicate spawnstuff:light_level run summon minecraft:zombie ~ ~ ~ {Tags:["custom_spawn"]}

execute as @e[tag=skeleton_spawner,scores={mobcount=..2,timer=1}] at @s if entity @a[distance=24..64] unless predicate spawnstuff:light_level run summon minecraft:skeleton ~ ~ ~ {Tags:["custom_spawn"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}

execute as @e[tag=spider_spawner,scores={mobcount=..2,timer=1}] at @s if entity @a[distance=24..64] unless predicate spawnstuff:light_level run summon minecraft:spider ~ ~ ~ {Tags:["custom_spawn"]}

execute as @e[tag=creeper_spawner,scores={mobcount=..2,timer=1}] at @s if entity @a[distance=24..64] unless predicate spawnstuff:light_level run summon minecraft:creeper ~ ~ ~ {Tags:["custom_spawn"]}


execute as @e[tag=refiller,scores={timer=500..}] at @s if entity @a[distance=24..64] run scoreboard players set @s timer 0

scoreboard players add @e[tag=refiller] timer 1