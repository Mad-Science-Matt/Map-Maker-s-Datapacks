execute as @a[nbt={SelectedItem:{id:"minecraft:snowball"}}] run tag @s remove holdingdart

execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{dart:1}}}] run tag @s add holdingdart

execute as @a[tag=holdingdart] at @s run tag @e[type=minecraft:snowball,tag=!checked,distance=..3] add dart

execute as @e[type=snowball,tag=dart] at @s run summon minecraft:arrow ~ ~ ~ {pickup:0b,damage:5d,Tags:["dart"]}

data modify entity @e[type=minecraft:arrow,tag=dart,limit=1] Motion set from entity @e[type=minecraft:snowball,tag=dart,sort=nearest,limit=1] Motion

execute at @e[type=minecraft:arrow,tag=dart] run teleport @e[type=minecraft:snowball,tag=dart,sort=nearest,limit=1] ~ -256 ~

tag @e[type=minecraft:snowball,tag=!checked] add checked

tag @e[type=minecraft:arrow,tag=dart] add throwndart

tag @e[type=minecraft:arrow,tag=dart] remove dart

execute at @e[type=minecraft:arrow,tag=throwndart,nbt={inGround:1b}] as @p[distance=..2] run give @p minecraft:snowball{display:{Name:'{"text":"Throwing Dart"}'},CustomModelData:1,dart:1} 1

execute as @e[type=minecraft:arrow,tag=throwndart,nbt={inGround:1b}] at @s if entity @p[distance=..2] run kill @s









