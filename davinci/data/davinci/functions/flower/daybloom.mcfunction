execute as @e[tag=Day] store result score @e[tag=Day] Day run time query daytime
execute as @e[tag=Day,scores={Day=12999}] at @s run summon item ~ ~ ~ {Item: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "e310abff-2ada-4f40-a8e9-16fef2045ccf", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ4NGFhNWJlZTg5OGE2ZTg5NjBhM2Y5YTk5NzU5YjFmMzlmOWRjYjMyMTA1MGY3MTRjZDcyYjNkOGE4MDQxIn19fQ=="}]}}, display: {Name: "{\"text\":\"Mana Fragment\"}"}}}}
execute as @e[tag=Day,scores={Day=12999}] at @s run particle happy_villager ~ ~1 ~

# Flower Placing
execute as @e[type=item_frame,nbt={Tags:["Day"]}] at @s unless block ~ ~-1 ~ #minecraft:dirt_like run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10414141, display: {Name: "{\"text\":\"DayBloom\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Day"]}}}}
execute as @e[type=item_frame,nbt={Tags:["Day"]}] at @s unless block ~ ~-1 ~ #minecraft:dirt_like run kill @s
execute as @e[type=item_frame,nbt={Tags:["Day"]}] at @s if block ~ ~-1 ~ #minecraft:dirt_like run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerBloom"]}
execute as @e[tag=PlacerBloom] run kill @e[type=item_frame,nbt={Tags:["Day"]}]
execute as @e[tag=PlacerBloom] at @s run setblock ~ ~ ~ lime_carpet
execute as @e[tag=PlacerBloom] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Day"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10414141}}]}
execute as @e[tag=Day] run kill @e[tag=PlacerBloom]
execute as @e[tag=Day,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

execute as @e[tag=Day] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10414141, display: {Name: "{\"text\":\"DayBloom\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Day"]}}}}
execute as @e[tag=Day] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b}},distance=..2]
execute as @e[tag=Day] at @s if block ~ ~1 ~ air run kill @s
