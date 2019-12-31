execute as @e[tag=piranha] at @s run summon minecraft:drowned ~ ~ ~ {Health:8f,IsBaby:1b,CanBreakDoors:0b,Tags:["angler"],CustomName:'{"text":"Piranha"}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"26dc76fd-2c5a-4fdc-92f6-2c751b5bed83",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlMjQzYTQ0Mjc2YmZjNWZjYjI2YzgwMDgwMDBhMDQ0OWQyOGE1ZGNjZTA0YmZhM2EwZGJlYmJjMWUzZDY4NiJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:8},{Name:generic.movementSpeed,Base:1},{Name:zombie.spawnReinforcements,Base:0}]}

teleport @e[tag=piranha] ~ -256 ~

scoreboard players set @e[tag=angler,tag=!AnglerCheck] AnglerAttackTime 0

tag @e[tag=angler,tag=!AnglerCheck] add AnglerCheck

scoreboard players add @e[tag=angler] AnglerAttackTime 1

execute as @e[tag=angler,scores={AnglerAttackTime=20..}] at @s if entity @p[distance=..1.4] run scoreboard players set @s AnglerAttackTime 0

execute as @p at @s if entity @e[tag=angler,scores={AnglerAttackTime=1},distance=..1.4] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"bubble_pop",Radius:0.4f,Duration:10,DurationOnUse:10f,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

replaceitem entity @e[tag=angler,nbt={HandItems:[{id:"minecraft:trident",Count:1b},{}]}] weapon.mainhand minecraft:cod

replaceitem entity @e[tag=angler,nbt={HandItems:[{id:"minecraft:fishing_rod",Count:1b},{}]}] weapon.mainhand minecraft:cod

execute as @e[tag=angler] at @s if block ~ ~ ~ air unless block ~ ~-.3 ~ water run effect give @s minecraft:instant_health 1 0 true

execute at @e[tag=angler] run particle minecraft:bubble ^ ^1 ^-.2 .01 .01 .01 .1 1 normal

#/give @p minecraft:guardian_spawn_egg{display:{Name:'{"text":"Spawn Piranha"}'},EntityTag:{Tags:["piranha"]}} 1