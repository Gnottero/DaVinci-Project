execute as @e[type=item_frame,nbt={Tags:["Farm"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerFarm"]}
execute as @e[tag=PlacerFarm] run kill @e[type=item_frame,nbt={Tags:["Farm"]}]
execute as @e[tag=PlacerFarm] at @s run setblock ~ ~ ~ hopper[facing=down]{CustomName:"{\"text\":\"Portable Farm Inventory\"}"}
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerFarm] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Farm"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10323232}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerFarm] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Farm"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10323232}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerFarm] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Farm"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10323232}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerFarm] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Farm"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10323232}}]}
execute as @e[tag=PlacerFarm] at @s run fill ~-2 ~-1 ~2 ~2 ~-1 ~-2 farmland[moisture=7]
execute as @e[tag=PlacerFarm] at @s run setblock ~ ~-1 ~ water
execute as @e[tag=Farm] run kill @e[tag=PlacerFarm]

execute as @e[tag=Farm,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

execute as @e[tag=Farm] at @s if block ~ ~1 ~ hopper{Items: [{Slot: 2b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "fa62b984-4078-4285-a57c-6cd9d620ea92", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2YjY4Mzc2YzE4MWM5YTczNDNmZWUzNjk3ZmFhY2VjMzUxMjlmYjY0ZGU1OTE0YmRiZjg2OWM2NTJjIn19fQ=="}]}}, display: {Lore: ["{\"text\":\"Holding\",\"color\":\"white\",\"bold\":true}", "{\"text\":\"100 MF / 100 MF\",\"color\":\"white\",\"bold\":true}"], Name: "{\"text\":\"Mana Flux Battery\",\"color\":\"green\"}"}}}]} unless block ~ ~1 ~ hopper{Items:[{Slot:0b}]} unless block ~ ~1 ~ hopper{Items:[{Slot:1b}]} unless block ~ ~1 ~ hopper{Items:[{Slot:3b}]} unless block ~ ~1 ~ hopper{Items:[{Slot:4b}]} run tag @s add FarmEnabled
execute as @e[tag=FarmEnabled,tag=Farm] at @s run replaceitem block ~ ~1 ~ container.2 air
execute as @e[tag=FarmEnabled,tag=Farm] at @s run summon minecraft:armor_stand ~-2 ~ ~2 {Tags:["Harvester"],NoGravity:1b,Invisible:1b}
execute as @e[tag=FarmEnabled] run tag @s remove Farm

execute as @e[tag=FarmEnabled] at @s run tp @e[type=item,nbt={Item:{id:"minecraft:potato"}},distance=0..5] ~ ~2 ~
execute as @e[tag=FarmEnabled] at @s run tp @e[type=item,nbt={Item:{id:"minecraft:carrot"}},distance=0..5] ~ ~2 ~

execute as @e[tag=Harvester] run scoreboard players add @s Farm 1

execute as @e[tag=Harvester,scores={Farm=40}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=80}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=120}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=160}] at @s run tp @s ^ ^ ^-1

execute as @e[tag=Harvester,scores={Farm=200}] at @s run tp @s ^1 ^ ^4

execute as @e[tag=Harvester,scores={Farm=240}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=280}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=320}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=360}] at @s run tp @s ^ ^ ^-1

execute as @e[tag=Harvester,scores={Farm=400}] at @s run tp @s ^1 ^ ^4

execute as @e[tag=Harvester,scores={Farm=440}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=480}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=520}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=560}] at @s run tp @s ^ ^ ^-1

execute as @e[tag=Harvester,scores={Farm=600}] at @s run tp @s ^1 ^ ^4

execute as @e[tag=Harvester,scores={Farm=660}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=700}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=740}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=780}] at @s run tp @s ^ ^ ^-1

execute as @e[tag=Harvester,scores={Farm=820}] at @s run tp @s ^1 ^ ^4

execute as @e[tag=Harvester,scores={Farm=860}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=900}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=940}] at @s run tp @s ^ ^ ^-1
execute as @e[tag=Harvester,scores={Farm=980}] at @s run tp @s ^ ^ ^-1

execute as @e[tag=Harvester,scores={Farm=1020}] at @s run tp @s ^-4 ^ ^4

execute as @e[tag=Harvester,scores={Farm=1021}] run scoreboard players reset @s Farm

execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ hopper{Items:[{Slot:2b,id:"minecraft:potato",Count:24b}]} unless block ~-2 ~1 ~2 potatoes unless block ~-2 ~1 ~1 potatoes unless block ~-2 ~1 ~ potatoes unless block ~-2 ~1 ~-1 potatoes unless block ~-2 ~1 ~-2 potatoes unless block ~-1 ~1 ~2 potatoes unless block ~-1 ~1 ~1 potatoes unless block ~-1 ~1 ~ potatoes unless block ~-1 ~1 ~-1 potatoes unless block ~-1 ~1 ~-2 potatoes unless block ~ ~1 ~2 potatoes unless block ~ ~1 ~1 potatoes unless block ~-2 ~1 ~ potatoes unless block ~ ~1 ~-2 potatoes unless block ~1 ~1 ~2 potatoes unless block ~1 ~1 ~1 potatoes unless block ~1 ~1 ~ potatoes unless block ~1 ~1 ~-1 potatoes unless block ~1 ~1 ~-2 potatoes unless block ~2 ~1 ~2 potatoes unless block ~2 ~1 ~1 potatoes unless block ~2 ~1 ~ potatoes unless block ~2 ~1 ~-1 potatoes unless block ~2 ~1 ~-2 potatoes unless block ~-2 ~1 ~2 carrots unless block ~-2 ~1 ~1 carrots unless block ~-2 ~1 ~ carrots unless block ~-2 ~1 ~-1 carrots unless block ~-2 ~1 ~-2 carrots unless block ~-1 ~1 ~2 carrots unless block ~-1 ~1 ~1 carrots unless block ~-1 ~1 ~ carrots unless block ~-1 ~1 ~-1 carrots unless block ~-1 ~1 ~-2 carrots unless block ~ ~1 ~2 carrots unless block ~ ~1 ~1 carrots unless block ~-2 ~1 ~ carrots unless block ~ ~1 ~-2 carrots unless block ~1 ~1 ~2 carrots unless block ~1 ~1 ~1 carrots unless block ~1 ~1 ~ carrots unless block ~1 ~1 ~-1 carrots unless block ~1 ~1 ~-2 carrots unless block ~2 ~1 ~2 carrots unless block ~2 ~1 ~1 carrots unless block ~2 ~1 ~ carrots unless block ~2 ~1 ~-1 carrots unless block ~2 ~1 ~-2 carrots run tag @s add Potatoes
execute as @e[tag=Potatoes] at @s run fill ~-2 ~1 ~2 ~2 ~1 ~-2 potatoes replace air
execute as @e[tag=Potatoes] at @s run replaceitem block ~ ~1 ~ container.2 air
execute as @e[tag=Potatoes] run tag @s remove Potatoes
execute as @e[tag=Harvester] at @s if block ~ ~1 ~ potatoes[age=7] run tag @s add PDestroy
execute as @e[tag=Harvester,tag=PDestroy] at @s run setblock ~ ~1 ~ air destroy
execute as @e[tag=Harvester,tag=PDestroy] at @s run setblock ~ ~1 ~ potatoes
execute as @e[tag=Harvester,tag=PDestroy] run tag @s remove PDestroy

execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ hopper{Items:[{Slot:2b,id:"minecraft:carrot",Count:24b}]} unless block ~-2 ~1 ~2 carrots unless block ~-2 ~1 ~1 carrots unless block ~-2 ~1 ~ carrots unless block ~-2 ~1 ~-1 carrots unless block ~-2 ~1 ~-2 carrots unless block ~-1 ~1 ~2 carrots unless block ~-1 ~1 ~1 carrots unless block ~-1 ~1 ~ carrots unless block ~-1 ~1 ~-1 carrots unless block ~-1 ~1 ~-2 carrots unless block ~ ~1 ~2 carrots unless block ~ ~1 ~1 carrots unless block ~-2 ~1 ~ carrots unless block ~ ~1 ~-2 carrots unless block ~1 ~1 ~2 carrots unless block ~1 ~1 ~1 carrots unless block ~1 ~1 ~ carrots unless block ~1 ~1 ~-1 carrots unless block ~1 ~1 ~-2 carrots unless block ~2 ~1 ~2 carrots unless block ~2 ~1 ~1 carrots unless block ~2 ~1 ~ carrots unless block ~2 ~1 ~-1 carrots unless block ~2 ~1 ~-2 carrots unless block ~-2 ~1 ~2 potatoes unless block ~-2 ~1 ~1 potatoes unless block ~-2 ~1 ~ potatoes unless block ~-2 ~1 ~-1 potatoes unless block ~-2 ~1 ~-2 potatoes unless block ~-1 ~1 ~2 potatoes unless block ~-1 ~1 ~1 potatoes unless block ~-1 ~1 ~ potatoes unless block ~-1 ~1 ~-1 potatoes unless block ~-1 ~1 ~-2 potatoes unless block ~ ~1 ~2 potatoes unless block ~ ~1 ~1 potatoes unless block ~-2 ~1 ~ potatoes unless block ~ ~1 ~-2 potatoes unless block ~1 ~1 ~2 potatoes unless block ~1 ~1 ~1 potatoes unless block ~1 ~1 ~ potatoes unless block ~1 ~1 ~-1 potatoes unless block ~1 ~1 ~-2 potatoes unless block ~2 ~1 ~2 potatoes unless block ~2 ~1 ~1 potatoes unless block ~2 ~1 ~ potatoes unless block ~2 ~1 ~-1 potatoes unless block ~2 ~1 ~-2 potatoes run tag @s add Carrots
execute as @e[tag=Carrots] at @s run fill ~-2 ~1 ~2 ~2 ~1 ~-2 carrots replace air
execute as @e[tag=Carrots] at @s run replaceitem block ~ ~1 ~ container.2 air
execute as @e[tag=Carrots] run tag @s remove Carrots
execute as @e[tag=Harvester] at @s if block ~ ~1 ~ carrots[age=7] run tag @s add CDestroy
execute as @e[tag=Harvester,tag=CDestroy] at @s run setblock ~ ~1 ~ air destroy
execute as @e[tag=Harvester,tag=CDestroy] at @s run setblock ~ ~1 ~ carrots
execute as @e[tag=Harvester,tag=CDestroy] run tag @s remove CDestroy

execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10323232, display: {Name: "{\"text\":\"Portable Farm\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Farm"]}}}}
execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},distance=..2]
execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ air run kill @e[tag=Harvester,distance=..3]
execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ air run fill ~-2 ~ ~2 ~2 ~ ~-2 air
execute as @e[tag=FarmEnabled] at @s if block ~ ~1 ~ air run kill @s

execute as @e[tag=Farm] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10323232, display: {Name: "{\"text\":\"Portable Farm\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Farm"]}}}}
execute as @e[tag=Farm] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:hopper",Count:1b}},distance=..2]
execute as @e[tag=Farm] at @s if block ~ ~1 ~ air run kill @e[tag=Harvester,distance=..3]
execute as @e[tag=Farm] at @s if block ~ ~1 ~ air run fill ~-2 ~ ~2 ~2 ~ ~-2 air
execute as @e[tag=Farm] at @s if block ~ ~1 ~ air run kill @s
