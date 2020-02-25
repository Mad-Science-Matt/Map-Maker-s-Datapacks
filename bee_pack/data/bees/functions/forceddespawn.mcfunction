scoreboard players set @e[tag=despawn,tag=!DSPcheck] BEElifetime 0

tag @e[tag=despawn,tag=!DSPcheck] add DSPcheck

scoreboard players add @e[tag=despawn] BEElifetime 1

scoreboard players add @e[tag=fastdespawn] BEElifetime 5

execute as @e[tag=despawn,scores={BEElifetime=3600..}] at @s if entity @p[distance=24..] run teleport @s ~ -256 ~
