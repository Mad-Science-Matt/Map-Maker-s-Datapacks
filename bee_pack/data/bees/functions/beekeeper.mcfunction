scoreboard players set @e[tag=beekeeper,tag=!KEEPcheck] BEEattacktime 0

tag @e[tag=beekeeper,tag=!KEEPcheck] add KEEPcheck

execute as @e[tag=beekeeper,scores={BEEattacktime=0}] at @s if entity @p[distance=..24] run playsound minecraft:block.beehive.work hostile @p ~ ~ ~ 16

scoreboard players add @e[tag=beekeeper] BEEattacktime 1

execute as @e[tag=beekeeper,scores={BEEattacktime=20}] at @s if entity @p[distance=..24] run playsound minecraft:block.beehive.exit hostile @p ~ ~ ~ 16 .1

execute as @e[tag=beekeeper,scores={BEEattacktime=20}] at @s if entity @p[distance=..24] run summon minecraft:bee ~ ~1.5 ~ {Anger:999999,Tags:["despawn","fastdespawn"],CustomName:'{"text":"Angry Bee"}'}

execute as @e[tag=beekeeper,scores={BEEattacktime=20}] at @s if entity @p[distance=..24] run summon minecraft:bee ~ ~1.5 ~ {Anger:999999,Tags:["despawn","fastdespawn"],CustomName:'{"text":"Angry Bee"}'}

execute as @e[tag=beekeeper,scores={BEEattacktime=160..}] at @s if entity @p[distance=..24] run scoreboard players set @s BEEattacktime 0

execute as @e[tag=beekeeper,scores={BEEattacktime=..20}] at @s run particle minecraft:falling_honey ^ ^1.2 ^ .5 .5 .5 0 2 normal
