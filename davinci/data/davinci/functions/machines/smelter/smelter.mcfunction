execute as @e[type=item_frame,nbt={Tags:["Smelter"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerSmelter"]}
execute as @e[tag=PlacerSmelter] run kill @e[type=item_frame,nbt={Tags:["Smelter"]}]
execute as @e[tag=PlacerSmelter] at @s run setblock ~ ~ ~ barrel{CustomName:"{\"text\":\"Alloy Smelter\"}"}
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerSmelter] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Smelter"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10343434}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerSmelter] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Smelter"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10343434}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerSmelter] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Smelter"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10343434}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerSmelter] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Smelter"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10343434}}]}
execute as @e[tag=PlacerSmelter] at @s run scoreboard players set @e[tag=Smelter,distance=..2,limit=1,sort=nearest] Smelter 1
execute as @e[tag=Smelter] run kill @e[tag=PlacerSmelter]
execute as @e[tag=Smelter,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Smelter] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10343434, display: {Name: "{\"text\":\"Alloy Smelter\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Smelter"]}}}}
execute as @e[tag=Smelter] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2]
execute as @e[tag=Smelter] at @s if block ~ ~1 ~ air run kill @s

# Smelter Recipes
execute as @e[tag=Smelter] at @s run function davinci:machines/smelter/smelter/iron
execute as @e[tag=Smelter] at @s run function davinci:machines/smelter/smelter/manasteel
execute as @e[tag=Smelter] at @s run function davinci:machines/smelter/smelter/gold
