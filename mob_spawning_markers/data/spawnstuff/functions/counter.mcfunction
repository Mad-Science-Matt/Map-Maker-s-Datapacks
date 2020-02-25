execute as @e[tag=hostileMob] at @s run scoreboard players add @e[tag=counter,distance=..24] mobcount 1

execute as @e[tag=counter] at @s if entity @a[distance=..1] run scoreboard players set @s mobcount 0