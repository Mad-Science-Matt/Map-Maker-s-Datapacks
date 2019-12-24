scoreboard players add @a damagetimer 1
execute as @a[nbt={HurtTime:9s}] at @s run scoreboard players set @s damagetimer 0
execute as @a[scores={damagetimer=100..,playerhunger=20},nbt=!{ActiveEffects:[{Id:10b}]}] at @s run effect give @s minecraft:regeneration 3 0 true