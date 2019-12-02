scoreboard players set @e[type=spider,tag=!WEBcheck] WEBattacktime 0

tag @e[type=spider,tag=!WEBcheck] add WEBcheck

scoreboard players add @e[type=spider] WEBattacktime 1

execute as @e[type=spider,scores={WEBattacktime=..30}] at @s if entity @p[distance=..12] run effect give @s minecraft:slowness 1 5 true

execute as @e[type=spider,scores={WEBattacktime=30}] at @s if entity @p[distance=..12] run summon minecraft:armor_stand ~ ~-.4 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["WEBbullet"]}

scoreboard players set @e[tag=!WEBaimed,tag=WEBbullet] WEBlifetime 0

execute as @e[tag=!WEBaimed,tag=WEBbullet] at @s run tp @s ^ ^ ^.1 facing entity @p

execute as @e[tag=WEBaimed,tag=WEBbullet] at @s run tp @s ^ ^ ^.7

tag @e[tag=!WEBaimed,tag=WEBbullet] add WEBaimed

scoreboard players add @e[tag=WEBbullet] WEBlifetime 1

teleport @e[tag=WEBbullet,scores={WEBlifetime=50..}] ~ -256 ~

execute as @e[tag=WEBbullet] at @s unless block ~ ~.5 ~ minecraft:air run teleport @s ~ -256 ~

execute as @e[tag=WEBbullet] at @s if entity @p[distance=..1.2] run execute at @p[sort=nearest] run setblock ~ ~ ~ minecraft:cobweb keep

execute as @e[tag=WEBbullet] at @s if entity @p[distance=..1.2] run teleport @s ~ -256 ~

execute at @e[tag=WEBbullet] run particle minecraft:cloud ^ ^1 ^-.2 .1 .1 .1 0 3 normal

execute as @e[type=spider,scores={WEBattacktime=200..}] run scoreboard players set @s WEBattacktime 0

execute as @e[type=spider,scores={WEBattacktime=..30}] at @s if entity @p[distance=..12] run particle minecraft:cloud ^ ^1 ^ .4 .4 .4 0 1 normal

