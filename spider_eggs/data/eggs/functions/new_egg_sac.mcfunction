#execute at @e[type=minecraft:shulker,tag=neweggsac] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:1f,Duration:1,Tags:["eggalarm"]}

execute at @e[tag=neweggsac] run setblock ~ ~ ~ minecraft:dragon_egg replace

tag @e[tag=neweggsac] remove neweggsac