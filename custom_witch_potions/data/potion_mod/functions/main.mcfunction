execute at @e[type=minecraft:witch] run tag @e[type=minecraft:potion,tag=!CWPreplaced,tag=!CWPchecked,distance=..2] add CWPreplaceme

execute at @e[type=minecraft:potion,tag=CWPreplaceme] run summon minecraft:potion ~ ~ ~ {Tags:["CWPreplaced"],Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:11534512,CustomPotionEffects:[{Id:7b,Amplifier:0b,Duration:1},{Id:19b,Amplifier:0b,Duration:200}]}}}

data modify entity @e[type=minecraft:potion,tag=CWPreplaced,limit=1] Motion set from entity @e[type=minecraft:potion,tag=CWPreplaceme,sort=nearest,limit=1] Motion

teleport @e[type=minecraft:potion,tag=CWPreplaceme] ~ -256 ~

tag @e[type=minecraft:potion,tag=!CWPchecked] add CWPchecked

execute at @e[type=minecraft:potion,tag=CWPreplaced] run particle minecraft:witch ~ ~ ~ .1 .1 .1 0 3 normal
