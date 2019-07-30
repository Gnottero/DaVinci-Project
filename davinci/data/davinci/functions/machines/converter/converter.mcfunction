execute as @e[type=item_frame,nbt={Tags:["EC"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerConverter"]}
execute as @e[tag=PlacerConverter] run kill @e[type=item_frame,nbt={Tags:["EC"]}]
execute as @e[tag=PlacerConverter] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"Energy Converter\"}"}
execute as @e[tag=PlacerConverter] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["EC"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10252525}}]}
execute as @e[tag=EC] run kill @e[tag=PlacerConverter]
execute as @e[tag=EC,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=EC] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10252525, display: {Name: "{\"text\":\"Energy Converter\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["EC"]}}}}
execute as @e[tag=EC] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=EC] at @s if block ~ ~1 ~ air run kill @s
