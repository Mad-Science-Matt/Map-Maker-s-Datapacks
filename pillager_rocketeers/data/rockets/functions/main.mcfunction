execute at @e[type=minecraft:firework_rocket] if entity @e[type=minecraft:pillager,tag=rocketeer,distance=..3] run summon minecraft:armor_stand ~ ~-1 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["pillagerRocket"]}

execute at @e[type=minecraft:firework_rocket] if entity @e[type=minecraft:pillager,tag=rocketeer,distance=..3] run playsound minecraft:entity.firework_rocket.launch hostile @p ~ ~ ~ 16

execute as @e[type=minecraft:firework_rocket] at @s if entity @e[type=minecraft:pillager,tag=rocketeer,distance=..3] run teleport @s ~ -256 ~

scoreboard players set @e[tag=!rocketAimed,tag=pillagerRocket] RocketLifetime 0

execute as @e[tag=!rocketAimed,tag=pillagerRocket] at @s run tp @s ^ ^ ^.1 facing entity @p

execute as @e[tag=rocketAimed,tag=pillagerRocket] at @s run tp @s ^ ^ ^.5

tag @e[tag=!rocketAimed,tag=pillagerRocket] add rocketAimed

scoreboard players add @e[tag=pillagerRocket] RocketLifetime 1



tag @e[tag=pillagerRocket,scores={RocketLifetime=100..}] add explodingRocket

execute as @e[tag=pillagerRocket] at @s unless block ^ ^1 ^.6 minecraft:air run tag @s add explodingRocket

execute as @e[tag=pillagerRocket] at @s if entity @p[distance=..1.4] run tag @s add explodingRocket


#1 explosion
#execute at @e[tag=pillagerRocket,tag=explodingRocket] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}}}

#2 explosions
#execute at @e[tag=pillagerRocket,tag=explodingRocket] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]}]}}}}

#3 explosions
execute at @e[tag=pillagerRocket,tag=explodingRocket] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]}]}}}}



teleport @e[tag=pillagerRocket,tag=explodingRocket] ~ -256 ~

execute at @e[tag=pillagerRocket] run particle minecraft:firework ^ ^1 ^-.2 .1 .1 .1 0 3 force













