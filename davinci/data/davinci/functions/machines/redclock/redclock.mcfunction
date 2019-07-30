execute as @e[type=item_frame,nbt={Tags:["Red"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerClock"]}
execute as @e[tag=PlacerClock] run kill @e[type=item_frame,nbt={Tags:["Red"]}]
execute as @e[tag=PlacerClock] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=PlacerClock] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Red"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10333333}}]}
execute as @e[tag=Red] run kill @e[tag=PlacerClock]

execute as @e[tag=Red,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

execute as @e[tag=Red] run scoreboard players add @s Clock1s 1
execute as @e[tag=Red,scores={Clock1s=20}] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[tag=Red,scores={Clock1s=40}] at @s run setblock ~ ~1 ~ red_stained_glass
execute as @e[tag=Red,scores={Clock1s=41}] run scoreboard players reset @s Clock1s

execute as @e[tag=Red] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: "{\"text\":\"Redstone Clock\",\"color\":\"red\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Red"]}}}}
execute as @e[tag=Red] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}},distance=..2]
execute as @e[tag=Red] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass",Count:1b}},distance=..2]
execute as @e[tag=Red] at @s if block ~ ~1 ~ air run kill @s
