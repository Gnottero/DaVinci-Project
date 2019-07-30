execute as @e[type=item_frame,nbt={Tags:["Hive"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerHive"]}
execute as @e[tag=PlacerHive] run kill @e[type=item_frame,nbt={Tags:["Hive"]}]
execute as @e[tag=PlacerHive] at @s run setblock ~ ~ ~ barrel
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerHive] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Hive"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10484848}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerHive] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Hive"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10484848}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerHive] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Hive"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10484848}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerHive] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Hive"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10484848}}]}
execute as @e[tag=Hive] run kill @e[tag=PlacerHive]
execute as @e[tag=Hive,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Hive] at @s run function davinci:bees/gathering
execute as @e[tag=Hive] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10474747, display: {Name: "{\"text\":\"Bee Hive\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Hive"]}}}}
execute as @e[tag=Hive] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2]
execute as @e[tag=Hive] at @s if block ~ ~1 ~ air run kill @s