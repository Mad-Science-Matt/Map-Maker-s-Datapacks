scoreboard players set @e[type=spider,tag=!WEBcheck] WEBattacktime 0

tag @e[type=spider,tag=!WEBcheck] add WEBcheck

tag @e remove seesplayer

execute as @e at @s at @p anchored eyes facing entity @s eyes run function spidermod:check_sight

scoreboard players add @e[type=spider] WEBattacktime 1

execute as @e[type=spider,scores={WEBattacktime=..30}] at @s if entity @p[distance=..16] run effect give @s minecraft:slowness 1 5 true

execute as @e[type=spider,tag=seesplayer,scores={WEBattacktime=30}] at @s if entity @p[distance=..16] run playsound minecraft:entity.llama.spit hostile @p ~ ~ ~ 16

execute as @e[type=spider,tag=seesplayer,scores={WEBattacktime=30}] at @s if entity @p[distance=..16] run summon minecraft:armor_stand ~ ~-.4 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["WEBbullet"]}

scoreboard players set @e[tag=!WEBaimed,tag=WEBbullet] WEBlifetime 0

execute as @e[tag=!WEBaimed,tag=WEBbullet] at @s run tp @s ^ ^ ^.1 facing entity @p

execute as @e[tag=WEBaimed,tag=WEBbullet] at @s run tp @s ^ ^ ^.7

tag @e[tag=!WEBaimed,tag=WEBbullet] add WEBaimed

scoreboard players add @e[tag=WEBbullet] WEBlifetime 1

teleport @e[tag=WEBbullet,scores={WEBlifetime=30..}] ~ -256 ~

execute as @e[tag=WEBbullet] at @s unless block ~ ~.5 ~ minecraft:air run teleport @s ~ -256 ~

execute as @e[tag=WEBbullet] at @s if entity @p[dx=0] run execute at @p[sort=nearest] run playsound minecraft:block.honey_block.step hostile @a ~ ~ ~ 16

execute as @e[tag=WEBbullet] at @s if entity @p[dx=0] run execute at @p[sort=nearest] run fill ~-.2 ~ ~-.2 ~.2 ~ ~.2 cobweb replace air

execute as @e[tag=WEBbullet] at @s if entity @p[dx=0] run teleport @s ~ -256 ~

execute at @e[tag=WEBbullet] run particle minecraft:cloud ^ ^1 ^-.2 .1 .1 .1 0 3 normal

execute as @e[type=spider,tag=seesplayer,scores={WEBattacktime=200..}] at @s if entity @p[distance=..16] run scoreboard players set @s WEBattacktime 0

execute as @e[type=spider,scores={WEBattacktime=1}] at @s if entity @p[distance=..16] run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 16 .3

execute as @e[type=spider,scores={WEBattacktime=1}] at @s if entity @p[distance=..16] run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 16 .7

execute as @e[type=spider,scores={WEBattacktime=..30}] at @s if entity @p[distance=..16] run particle minecraft:cloud ^ ^1 ^ .4 .4 .4 0 1 normal

