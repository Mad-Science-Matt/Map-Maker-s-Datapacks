execute at @e[type=minecraft:shulker_bullet] run summon minecraft:armor_stand ~ ~-.5 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["CSBshulkerbullet"]}

teleport @e[type=minecraft:shulker_bullet] ~ -256 ~

scoreboard players set @e[tag=!CSBaimed,tag=CSBshulkerbullet] CSBlifetime 0

execute as @e[tag=!CSBaimed,tag=CSBshulkerbullet] at @s run tp @s ^ ^ ^.1 facing entity @p

execute as @e[tag=CSBaimed,tag=CSBshulkerbullet] at @s run tp @s ^ ^ ^.5

tag @e[tag=!CSBaimed,tag=CSBshulkerbullet] add CSBaimed

scoreboard players add @e[tag=CSBshulkerbullet] CSBlifetime 1

teleport @e[tag=CSBshulkerbullet,scores={CSBlifetime=100..}] ~ -256 ~

execute as @e[tag=CSBshulkerbullet] at @s unless block ~ ~.5 ~ minecraft:air run teleport @s ~ -256 ~

execute as @p at @s if entity @e[tag=CSBshulkerbullet,distance=..1.2] run effect give @s minecraft:instant_damage 1 0 true

execute at @e[tag=CSBshulkerbullet] run particle minecraft:crit ^ ^1 ^-.2 .1 .1 .1 0 3 normal













