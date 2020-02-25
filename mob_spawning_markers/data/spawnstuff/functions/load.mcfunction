scoreboard objectives add mobcount dummy

scoreboard objectives add timer dummy

scoreboard objectives add SPAWNrng dummy


#initializing variables
scoreboard players set @a SPAWNrng 0



give @p[gamemode=creative] minecraft:ender_eye{display:{Name:'{"text":"Reveal Markers"}'},marker:reveal} 1

give @p[gamemode=creative] minecraft:ender_pearl{display:{Name:'{"text":"Hide Markers"}'},marker:hide} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Zombie Spawner"}'},EntityTag:{NoGravity:1b,Tags:["marker","refiller","zombie_spawner"],CustomName:'{"text":"Zombie Spawner"}'}} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Skeleton Spawner"}'},EntityTag:{NoGravity:1b,Tags:["marker","refiller","skeleton_spawner"],CustomName:'{"text":"Skeleton Spawner"}'}} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Spider Spawner"}'},EntityTag:{NoGravity:1b,Tags:["marker","refiller","spider_spawner"],CustomName:'{"text":"Spider Spawner"}'}} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Creeper Spawner"}'},EntityTag:{NoGravity:1b,Tags:["marker","refiller","creeper_spawner"],CustomName:'{"text":"Creeper Spawner"}'}} 1


give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Area: Spider Nest"}'},EntityTag:{NoGravity:1b,Tags:["marker","area_spiders"],CustomName:'{"text":"Area: Spider Nest"}'}} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Area: Undead Lair"}'},EntityTag:{NoGravity:1b,Tags:["marker","area_undead"],CustomName:'{"text":"Area: Undead Lair"}'}} 1

give @p[gamemode=creative] minecraft:armor_stand{display:{Name:'{"text":"Area: Nether Fortress"}'},EntityTag:{NoGravity:1b,Tags:["marker","area_nether"],CustomName:'{"text":"Area: Nether Fortress"}'}} 1