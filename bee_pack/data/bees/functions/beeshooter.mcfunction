scoreboard players set @e[tag=beespitter,tag=!BSPITcheck] BEEattacktime 0

tag @e[tag=beespitter,tag=!BSPITcheck] add BSPITcheck

scoreboard players add @e[tag=beespitter] BEEattacktime 1

execute as @e[tag=beespitter,scores={BEEattacktime=20}] at @s if entity @p[distance=..24] run playsound minecraft:entity.fox.spit hostile @p ~ ~ ~ 16

execute as @e[tag=beespitter,scores={BEEattacktime=20}] at @s if entity @p[distance=..24] run summon minecraft:armor_stand ~ ~-.4 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["BSPITbullet"]}

scoreboard players set @e[tag=!BSPITaimed,tag=BSPITbullet] BEElifetime 0

execute as @e[tag=!BSPITaimed,tag=BSPITbullet] at @s run tp @s ^ ^ ^.1 facing entity @p

execute as @e[tag=BSPITaimed,tag=BSPITbullet] at @s run tp @s ^ ^ ^.7

tag @e[tag=!BSPITaimed,tag=BSPITbullet] add BSPITaimed

scoreboard players add @e[tag=BSPITbullet] BEElifetime 1

teleport @e[tag=BSPITbullet,scores={BEElifetime=60..}] ~ -256 ~

execute as @e[tag=BSPITbullet] at @s unless block ~ ~.5 ~ minecraft:air run teleport @s ~ -256 ~

execute as @e[tag=BSPITbullet] at @s if entity @p[distance=..1.2] run effect give @p minecraft:poison 7 0

execute as @e[tag=BSPITbullet] at @s if entity @p[distance=..1.2] run teleport @s ~ -256 ~

execute at @e[tag=BSPITbullet] run particle minecraft:item_slime ^ ^.6 ^-.2 .1 .1 .1 1 3 normal

execute as @e[tag=beespitter,scores={BEEattacktime=100..}] run scoreboard players set @s BEEattacktime 0

execute as @e[tag=beespitter,scores={BEEattacktime=..20}] at @s run particle minecraft:sneeze ^ ^.3 ^ .3 .3 .3 0 1 normal

data merge entity @e[type=bee,tag=beespitter,nbt=!{Anger:0},sort=random,limit=1] {Anger:0,HurtBy:""}
