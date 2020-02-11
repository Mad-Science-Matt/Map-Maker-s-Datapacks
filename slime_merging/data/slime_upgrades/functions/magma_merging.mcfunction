
scoreboard players set @e[type=magma_cube] slimecount 0



execute at @e[type=minecraft:magma_cube,nbt={Size:0}] run scoreboard players add @e[type=magma_cube,nbt={Size:0},distance=..4] slimecount 1

execute at @e[type=minecraft:magma_cube,nbt={Size:0},scores={slimecount=5..},limit=1] run summon minecraft:magma_cube ~ ~ ~ {Size:1,Tags:["mergedslime"]}

execute at @e[type=minecraft:magma_cube,nbt={Size:1},tag=mergedslime] run teleport @e[type=magma_cube,nbt={Size:0},distance=..4,limit=5] ~ -256 ~



execute at @e[type=minecraft:magma_cube,nbt={Size:1}] run scoreboard players add @e[type=magma_cube,nbt={Size:1},distance=..6] slimecount 1

execute at @e[type=minecraft:magma_cube,nbt={Size:1},scores={slimecount=5..},limit=1] run summon minecraft:magma_cube ~ ~ ~ {Size:3,Tags:["mergedslime"]}

execute at @e[type=minecraft:magma_cube,nbt={Size:3},tag=mergedslime] run teleport @e[type=magma_cube,nbt={Size:1},distance=..6,limit=5] ~ -256 ~



#execute at @e[type=minecraft:magma_cube,nbt={Size:3}] run scoreboard players add @e[type=magma_cube,nbt={Size:3},distance=..8] slimecount 1

#execute at @e[type=minecraft:magma_cube,nbt={Size:3},scores={slimecount=5..},limit=1] run summon minecraft:magma_cube ~ ~ ~ {Size:7,Tags:["mergedslime"]}

#execute at @e[type=minecraft:magma_cube,nbt={Size:7},tag=mergedslime] run teleport @e[type=magma_cube,nbt={Size:3},distance=..8,limit=5] ~ -256 ~


tag @e[type=magma_cube] remove mergedslime