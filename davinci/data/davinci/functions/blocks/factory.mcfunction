execute as @e[type=item_frame,nbt={Tags:["Factory"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerFactory"]}
execute as @e[tag=PlacerFactory] run kill @e[type=item_frame,nbt={Tags:["Factory"]}]
execute as @e[tag=PlacerFactory] at @s run setblock ~ ~ ~ stone_bricks
execute as @e[tag=PlacerFactory] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Factory"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10353535}}]}
execute as @e[tag=Factory] run kill @e[tag=PlacerFactory]
execute as @e[tag=Factory,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Factory] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10353535, display: {Name: "{\"text\":\"Factory Block\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Factory"]}}}}
execute as @e[tag=Factory] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}},distance=..2]
execute as @e[tag=Factory] at @s if block ~ ~1 ~ air run kill @s
