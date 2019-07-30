execute as @e[type=item_frame,nbt={Tags:["Tree"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerTree"]}
execute as @e[tag=PlacerTree] run kill @e[type=item_frame,nbt={Tags:["Tree"]}]
execute as @e[tag=PlacerTree] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"Mini Tree Farm\"}"}
execute as @e[tag=PlacerTree] at @s run setblock ~ ~1 ~ glass
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerTree] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Tree"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10424242}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerTree] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Tree"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10424242}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerTree] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Tree"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10424242}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerTree] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Tree"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10424242}}]}
execute as @e[tag=Tree] run kill @e[tag=PlacerTree]
execute as @e[tag=Tree,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Tree] at @s if block ~ ~1 ~ air run setblock ~ ~2 ~ air destroy
execute as @e[tag=Tree] at @s if block ~ ~2 ~ air run setblock ~ ~1 ~ air destroy
execute as @e[tag=Tree] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10424242, display: {Name: "{\"text\":\"Mini Tree Farm\",\"color\":\"green\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Tree"]}}}}
execute as @e[tag=Tree] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Tree] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}},distance=..2]
execute as @e[tag=Tree] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @s
