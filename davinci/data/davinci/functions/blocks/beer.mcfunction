execute as @e[type=item_frame,nbt={Tags:["Beer"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerBeer"]}
execute as @e[tag=PlacerBeer] run kill @e[type=item_frame,nbt={Tags:["Beer"]}]
execute as @e[tag=PlacerBeer] at @s run setblock ~ ~ ~ brown_carpet
execute as @e[tag=PlacerBeer] at @s run summon armor_stand ~ ~-1.43 ~ {Small:1b,Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Beer"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10454545}}]}
execute as @e[tag=Beer] run kill @e[tag=PlacerBeer]
execute as @e[tag=Beer,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Beer] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10464646, display: {Name: "{\"text\":\"Mug of Beer\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Beer"]}}}}
execute as @e[tag=Beer] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:brown_carpet",Count:1b}},distance=..2]
execute as @e[tag=Beer] at @s if block ~ ~1 ~ air run kill @s
