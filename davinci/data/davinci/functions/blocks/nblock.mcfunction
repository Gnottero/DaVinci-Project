execute as @e[type=item_frame,nbt={Tags:["Neutronium"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerNeutronium"]}
execute as @e[tag=PlacerNeutronium] run kill @e[type=item_frame,nbt={Tags:["Neutronium"]}]
execute as @e[tag=PlacerNeutronium] at @s run setblock ~ ~ ~ stone_bricks
execute as @e[tag=PlacerNeutronium] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Neutronium"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10212121}}]}
execute as @e[tag=Neutronium] run kill @e[tag=PlacerNeutronium]
execute as @e[tag=Neutronium,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Neutronium] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10212121, display: {Name: "{\"text\":\"Neutronium Block\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Neutronium"]}}}}
execute as @e[tag=Neutronium] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}},distance=..2]
execute as @e[tag=Neutronium] at @s if block ~ ~1 ~ air run kill @s
