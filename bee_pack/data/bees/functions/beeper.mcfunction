data merge entity @e[type=bee,tag=beeper,nbt={Anger:0},sort=random,limit=1] {Anger:999999}

execute as @e[type=bee,tag=beeper,nbt={HasStung:0b},sort=random,limit=1] at @s if entity @p[distance=..2] run data merge entity @s {HasStung:1b}

execute as @e[type=bee,tag=beeper,nbt={HasStung:1b},sort=random,limit=1] at @s if entity @p[distance=2.01..] run data merge entity @s {HasStung:0b}

execute as @e[tag=beeper] at @s if entity @p[distance=4.01..] run scoreboard players set @e[tag=beeper,sort=nearest,limit=1] BEEPtime 0

execute as @e[tag=beeper] at @s if entity @p[distance=..4] run scoreboard players add @e[tag=beeper,sort=nearest,limit=1] BEEPtime 1

scoreboard players set @e[tag=beeper,scores={BEEPtime=0}] BEEPflash 0

scoreboard players add @e[tag=beeper,scores={BEEPtime=1..}] BEEPflash 1

scoreboard players add @e[tag=beeper,scores={BEEPtime=20..}] BEEPflash 1

scoreboard players set @e[tag=beeper,scores={BEEPflash=8..}] BEEPflash 0



effect give @e[tag=beeper,scores={BEEPflash=4..8}] minecraft:glowing 1 0 true

effect clear @e[tag=beeper,scores={BEEPflash=0..3}] minecraft:glowing



execute as @e[tag=beeper,scores={BEEPtime=1}] at @s run playsound minecraft:entity.creeper.primed hostile @p ~ ~ ~ 16



execute as @e[tag=beeper,scores={BEEPtime=30..}] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"Beeper"}'}

teleport @e[tag=beeper,scores={BEEPtime=30..}] ~ -256 ~

execute as @e[tag=beeper] at @s run particle minecraft:smoke ^ ^.3 ^ .3 .3 .3 0 3 normal


