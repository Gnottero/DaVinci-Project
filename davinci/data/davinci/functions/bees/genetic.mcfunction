execute as @e[type=item_frame,nbt={Tags:["Genetic"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerGenetic"]}
execute as @e[tag=PlacerGenetic] run kill @e[type=item_frame,nbt={Tags:["Genetic"]}]
execute as @e[tag=PlacerGenetic] at @s run setblock ~ ~ ~ barrel
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerGenetic] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Genetic"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10494949}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerGenetic] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Genetic"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10494949}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerGenetic] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Genetic"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10494949}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerGenetic] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Genetic"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10494949}}]}
execute as @e[tag=Genetic] run kill @e[tag=PlacerGenetic]
execute as @e[tag=Genetic,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Genetic] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10484848, display: {Name: "{\"text\":\"Genetic Modificator\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Genetic"]}}}}
execute as @e[tag=Genetic] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2]
execute as @e[tag=Genetic] at @s if block ~ ~1 ~ air run kill @s