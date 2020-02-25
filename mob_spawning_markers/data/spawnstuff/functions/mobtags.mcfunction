#gives mobs tags. used by friendly spitters to target enemies.
#also separates undead mobs from living mobs, allowing for undead mobs to be given instant health instead of damage.

tag @e[type=minecraft:bat,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:blaze,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:cave_spider,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:creeper,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:drowned,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:elder_guardian,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:ender_dragon,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:enderman,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:endermite,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:evoker,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:ghast,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:guardian,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:husk,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:illusioner,tag=!hostileMob] add hostileMob
#tag @e[type=minecraft:magma_cube,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:phantom,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:pillager,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:ravager,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:shulker,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:silverfish,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:skeleton,tag=!hostileMob] add hostileMob
#tag @e[type=minecraft:slime,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:spider,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:stray,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:vex,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:vindicator,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:witch,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:wither,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:wither_skeleton,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:zombie,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:zombie_pigman,tag=!hostileMob] add hostileMob
tag @e[type=minecraft:zombie_villager,tag=!hostileMob] add hostileMob


tag @e[type=!minecraft:zombie,type=!minecraft:drowned,type=!minecraft:husk,type=!minecraft:zombie_pigman,type=!minecraft:zombie_villager,type=!minecraft:skeleton,type=!minecraft:stray,type=!minecraft:wither_skeleton,type=!minecraft:wither,type=!minecraft:phantom,type=!minecraft:skeleton_horse,type=!minecraft:zombie_horse,tag=!notundead] add notundead
