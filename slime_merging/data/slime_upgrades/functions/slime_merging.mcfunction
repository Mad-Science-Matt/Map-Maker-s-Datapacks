
scoreboard players set @e[type=slime] slimecount 0



execute at @e[type=minecraft:slime,nbt={Size:0}] run scoreboard players add @e[type=slime,nbt={Size:0},distance=..4] slimecount 1

execute at @e[type=minecraft:slime,nbt={Size:0},scores={slimecount=5..},limit=1] run summon minecraft:slime ~ ~ ~ {Size:1,Tags:["mergedslime"]}

execute at @e[type=minecraft:slime,nbt={Size:1},tag=mergedslime] run teleport @e[type=slime,nbt={Size:0},distance=..4,limit=5] ~ -256 ~



execute at @e[type=minecraft:slime,nbt={Size:1}] run scoreboard players add @e[type=slime,nbt={Size:1},distance=..6] slimecount 1

execute at @e[type=minecraft:slime,nbt={Size:1},scores={slimecount=5..},limit=1] run summon minecraft:slime ~ ~ ~ {Size:3,Tags:["mergedslime"]}

execute at @e[type=minecraft:slime,nbt={Size:3},tag=mergedslime] run teleport @e[type=slime,nbt={Size:1},distance=..6,limit=5] ~ -256 ~



#execute at @e[type=minecraft:slime,nbt={Size:3}] run scoreboard players add @e[type=slime,nbt={Size:3},distance=..8] slimecount 1

#execute at @e[type=minecraft:slime,nbt={Size:3},scores={slimecount=5..},limit=1] run summon minecraft:slime ~ ~ ~ {Size:7,Tags:["mergedslime"]}

#execute at @e[type=minecraft:slime,nbt={Size:7},tag=mergedslime] run teleport @e[type=slime,nbt={Size:3},distance=..8,limit=5] ~ -256 ~


tag @e[type=slime] remove mergedslime