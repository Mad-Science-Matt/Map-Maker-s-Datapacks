scoreboard objectives add BEElifetime dummy
scoreboard objectives add BEEattacktime dummy

scoreboard objectives add BEEPtime dummy
scoreboard objectives add BEEPflash dummy






give @p[gamemode=creative] minecraft:bee_spawn_egg{display:{Name:'{"text":"Angry Bee"}',Lore:['{"text":"A hostile bee."}']},EntityTag:{Anger:99999999,Tags:["despawn"],CustomName:'{"text":"Angry Bee"}'}} 1

give @p[gamemode=creative] minecraft:bee_spawn_egg{display:{Name:'{"text":"Angry Hornet"}',Lore:['{"text":"A bee that keeps it stinger."}']},EntityTag:{Anger:99999999,Tags:["despawn","keepsting"],CustomName:'{"text":"Angry Hornet"}'}} 1

give @p[gamemode=creative] minecraft:bee_spawn_egg{display:{Name:'{"text":"Beeper"}',Lore:['{"text":"An exploding bee."}']},EntityTag:{Tags:["despawn","beeper"],CustomName:'{"text":"Beeper"}'}} 1

give @p[gamemode=creative] minecraft:bee_spawn_egg{display:{Name:'{"text":"Beeshooter"}',Lore:['{"text":"A bee with ranged attacks."}']},EntityTag:{Tags:["despawn","beespitter"],CustomName:'{"text":"Beeshooter"}'}} 1

give @p[gamemode=creative] minecraft:zombie_spawn_egg{display:{Name:'{"text":"Bee Keeper"}',Lore:['{"text":"A zombie that summons hostile bees."}']},EntityTag:{Health:40f,IsBaby:0b,Tags:["beekeeper"],HandItems:[{id:"minecraft:golden_axe",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16770560}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16770560}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16770560}}},{id:"minecraft:bee_nest",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.movementSpeed,Base:.15}]}} 1