execute at @a unless entity @e[tag=big_stone,distance=..200] run summon minecraft:armor_stand ~ ~ ~ {Tags:["big_stone"]}
execute as @e[tag=big_stone,tag=!Spread] at @s run spreadplayers ~ ~ 100 150 false @s
execute as @e[tag=big_stone,tag=!Spread] at @s run setblock ~ ~ ~ minecraft:structure_block{mode: "LOAD",name:"stone", posX: -4, posZ: -4}
execute as @e[tag=big_stone,tag=!Spread] at @s run setblock ~ ~ ~1 minecraft:redstone_block
execute as @e[tag=big_stone] run tag @s add Spread
