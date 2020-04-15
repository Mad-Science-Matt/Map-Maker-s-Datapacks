#used to determine the remaining lifetime of the spitter's projectiles
scoreboard objectives add PEAlifetime dummy

#used to determine the cooldown between attacks
scoreboard objectives add PEAattacktime dummy


# Zombie based plants

give @a[gamemode=creative] minecraft:mooshroom_spawn_egg{display:{Name:'{"text":"Spitterbud"}'},EntityTag:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,NoAI:1b,Health:.1f,IsBaby:1b,Tags:["newSpitter"],CustomName:'{"text":"Spitterbud"}',HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"8bd21c1e-33f7-41df-a647-c8d5ef706317",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI2OTI5Mjc1ZGE4NWRjMGY3ZWUyMGY4OGM3NWZjZTE4NzcxZGZjNjQ1ODZkNzQ1MGJlZDVkOGMwZjRhMiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.maxHealth,Base:.1}]}} 1

give @a[gamemode=creative] minecraft:mooshroom_spawn_egg{display:{Name:'{"text":"Potted Spitterbud"}'},EntityTag:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,NoAI:1b,Health:.1f,IsBaby:1b,Tags:["newSpitter","potted"],CustomName:'{"text":"Spitterbud"}',HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"8bd21c1e-33f7-41df-a647-c8d5ef706317",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI2OTI5Mjc1ZGE4NWRjMGY3ZWUyMGY4OGM3NWZjZTE4NzcxZGZjNjQ1ODZkNzQ1MGJlZDVkOGMwZjRhMiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.maxHealth,Base:.1}]}} 1


# Armorstand based plants

#give @a[gamemode=creative] minecraft:mooshroom_spawn_egg{display:{Name:'{"text":"Spitterbud"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["newSpitter"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"8bd21c1e-33f7-41df-a647-c8d5ef706317",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI2OTI5Mjc1ZGE4NWRjMGY3ZWUyMGY4OGM3NWZjZTE4NzcxZGZjNjQ1ODZkNzQ1MGJlZDVkOGMwZjRhMiJ9fX0="}]}}}}],CustomName:'{"text":"Spitterbud"}'}} 1

#give @a[gamemode=creative] minecraft:mooshroom_spawn_egg{display:{Name:'{"text":"Potted Spitterbud"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["newSpitter","potted"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"8bd21c1e-33f7-41df-a647-c8d5ef706317",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI2OTI5Mjc1ZGE4NWRjMGY3ZWUyMGY4OGM3NWZjZTE4NzcxZGZjNjQ1ODZkNzQ1MGJlZDVkOGMwZjRhMiJ9fX0="}]}}}}],CustomName:'{"text":"Spitterbud"}'}} 1