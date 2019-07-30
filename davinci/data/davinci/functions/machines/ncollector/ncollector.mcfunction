execute as @e[type=item_frame,nbt={Tags:["Collector"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerCollector"]}
execute as @e[tag=PlacerCollector] run kill @e[type=item_frame,nbt={Tags:["Collector"]}]
execute as @e[tag=PlacerCollector] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"Neutronium Collector\"}"}
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerCollector] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Collector"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10161616}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerCollector] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Collector"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10161616}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerCollector] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Collector"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10161616}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerCollector] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Collector"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10161616}}]}
execute as @e[tag=Collector] run kill @e[tag=PlacerCollector]
execute as @e[tag=Collector,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Collector] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10161616, display: {Name: "{\"text\":\"Neutronium Collector\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Collector"]}}}}
execute as @e[tag=Collector] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Collector] at @s if block ~ ~1 ~ air run kill @s
