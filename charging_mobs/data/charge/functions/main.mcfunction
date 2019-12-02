scoreboard players set @e[tag=charger,tag=!CMcheck] CMattacktime 0

tag @e[tag=charger,tag=!CMcheck] add CMcheck

scoreboard players add @e[tag=charger] CMattacktime 1

execute as @e[tag=charger,scores={CMattacktime=30}] at @s if entity @p[distance=..12] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["CMbullet"]}

scoreboard players set @e[tag=!CMaimed,tag=CMbullet] CMlifetime 0

execute as @e[tag=CMaimed,tag=CMbullet,scores={CMlifetime=..10}] at @s rotated ~ 0 run tp @s ~ ~ ~ facing entity @p

execute as @e[tag=CMaimed,tag=CMbullet,scores={CMlifetime=11..19}] run data modify entity @s Rotation[1] set value 0

execute as @e[tag=CMaimed,tag=CMbullet,scores={CMlifetime=20..30}] at @s rotated ~ 0 if block ^ ^ ^.9 air if block ^ ^ ^1.9 air run tp @s ^ ^ ^.9

tag @e[tag=!CMaimed,tag=CMbullet] add CMaimed

scoreboard players add @e[tag=CMbullet] CMlifetime 1

execute as @e[tag=CMbullet] at @s run teleport @e[tag=charger,sort=nearest,limit=1] ~ ~ ~

teleport @e[tag=CMbullet,scores={CMlifetime=50..}] ~ -256 ~

execute at @e[tag=CMbullet] run particle minecraft:firework ^ ^1.5 ^ .3 .6 .3 0 1 normal

execute as @e[tag=charger,scores={CMattacktime=200..}] run scoreboard players set @s CMattacktime 0

execute as @e[tag=CMbullet,scores={CMlifetime=1}] at @s run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 16

execute as @e[tag=CMbullet,scores={CMlifetime=20}] at @s run playsound minecraft:entity.wither.shoot hostile @p ~ ~ ~ 16

