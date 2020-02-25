scoreboard players add @a SPAWNrng 1





execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=..15}] if entity @e[tag=area_spiders,distance=..32] run summon minecraft:spider ~ ~ ~ {Tags:["custom_spawn"]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=16..}] if entity @e[tag=area_spiders,distance=..32] run summon minecraft:cave_spider ~ ~ ~ {Tags:["custom_spawn"]}



execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=..14}] if entity @e[tag=area_undead,distance=..32] run summon minecraft:zombie ~ ~ ~ {Tags:["custom_spawn"]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=15..}] if entity @e[tag=area_undead,distance=..32] run summon minecraft:skeleton ~ ~ ~ {Tags:["custom_spawn"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}



execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=..9}] if entity @e[tag=area_nether,distance=..32] run summon minecraft:zombie_pigman ~ ~ ~ {Tags:["custom_spawn"],HandItems:[{id:"minecraft:golden_sword",Count:1b},{}]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=10..13}] if entity @e[tag=area_nether,distance=..32] run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["custom_spawn"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=14..15}] if entity @e[tag=area_nether,distance=..32] run summon minecraft:skeleton ~ ~ ~ {Tags:["custom_spawn"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=16..18}] if entity @e[tag=area_nether,distance=..32] run summon minecraft:blaze ~ ~ ~ {Tags:["custom_spawn"]}

execute as @e[tag=hostileMob,tag=!custom_spawn] at @s if entity @p[scores={SPAWNrng=19..20}] if entity @e[tag=area_nether,distance=..32] run summon minecraft:magma_cube ~ ~ ~ {Size:3,Tags:["custom_spawn"]}



execute as @a[scores={SPAWNrng=20..}] run scoreboard players set @s SPAWNrng 0

execute at @e[tag=custom_spawn] run teleport @e[tag=hostileMob,tag=!custom_spawn,distance=..1] ~ -256 ~

tag @e[tag=hostileMob] add custom_spawn