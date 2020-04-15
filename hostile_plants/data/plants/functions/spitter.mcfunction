#code for hostile spitters

scoreboard players add @e[tag=spitter] PEAattacktime 1

effect give @e[tag=spitter,nbt=!{ActiveEffects:[{Id:14b}]}] minecraft:invisibility 1000000 0 true

#firing projectiles
execute as @e[tag=spitter,scores={PEAattacktime=20}] at @s if entity @a[distance=..16] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["PEABADbullet"]}

execute as @e[tag=spitter,scores={PEAattacktime=..20}] at @s if entity @p[distance=..16] run particle minecraft:sneeze ^ ^.3 ^ .3 .3 .3 0 1 normal

execute as @e[tag=spitter,scores={PEAattacktime=20}] at @s if entity @a[distance=..16] run playsound minecraft:entity.fox.spit hostile @p ~ ~ ~ 16

scoreboard players set @e[tag=!PEABADaimed,tag=PEABADbullet] PEAlifetime 0


#projectile code. Notice that part of the code is run twice per tick. This is so that the projectile can fly faster without passing through walls or players
execute as @e[tag=!PEABADaimed,tag=PEABADbullet] at @s run tp @s ^ ^ ^.1 facing entity @a[sort=nearest,limit=1]

tag @e[tag=!PEABADaimed,tag=PEABADbullet] add PEABADaimed

execute as @e[tag=spitter] at @s run tp @s ^ ^ ^ facing entity @a[sort=nearest,limit=1]





execute as @e[tag=PEABADbullet] at @s unless block ^ ^1 ^.2 minecraft:air run teleport @s ~ -256 ~
execute as @e[tag=PEABADaimed,tag=PEABADbullet] at @s run tp @s ^ ^ ^.6
scoreboard players add @e[tag=PEABADbullet] PEAlifetime 1
teleport @e[tag=PEABADbullet,scores={PEAlifetime=60..}] ~ -256 ~

# 3 points damage
execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"item_slime",Radius:.5f,Duration:20,DurationOnUse:-20f,Tags:["playerDamage"],Effects:[{Id:7b,Amplifier:0b,Duration:10}]}

# 3 seconds poison
#execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run effect give @s minecraft:poison 3 0

# 6 points damage
#execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run effect give @s minecraft:instant_damage 1 0

execute as @e[tag=PEABADbullet] at @s if entity @a[distance=..0.9] run teleport @s ~ -256 ~
execute at @e[tag=PEABADbullet] run particle minecraft:item_slime ^ ^1 ^ .1 .1 .1 0 3 normal



# Projectile commands repeated for increased velocity

execute as @e[tag=PEABADbullet] at @s unless block ^ ^1 ^.2 minecraft:air run teleport @s ~ -256 ~
execute as @e[tag=PEABADaimed,tag=PEABADbullet] at @s run tp @s ^ ^ ^.6
scoreboard players add @e[tag=PEABADbullet] PEAlifetime 1
teleport @e[tag=PEABADbullet,scores={PEAlifetime=60..}] ~ -256 ~

execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"item_slime",Radius:.5f,Duration:20,DurationOnUse:-20f,Tags:["playerDamage"],Effects:[{Id:7b,Amplifier:0b,Duration:10}]}
#execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run effect give @s minecraft:poison 3 0
#execute as @a at @s if entity @e[tag=PEABADbullet,distance=..0.9] run effect give @s minecraft:instant_damage 1 0

execute as @e[tag=PEABADbullet] at @s if entity @a[distance=..0.9] run teleport @s ~ -256 ~
execute at @e[tag=PEABADbullet] run particle minecraft:item_slime ^ ^1 ^ .1 .1 .1 0 3 normal


teleport @e[tag=playerDamage] @p


execute as @e[tag=spitter,scores={PEAattacktime=60..}] at @s if entity @a[distance=..16] run scoreboard players set @s PEAattacktime 0


#kills the spitter if the fern is destroyed

execute as @e[tag=spitter,tag=!potted] at @s unless block ~ ~ ~ minecraft:fern run kill @s
execute as @e[tag=spitter,tag=potted] at @s unless block ~ ~ ~ minecraft:potted_fern run kill @s


#SPITrng

