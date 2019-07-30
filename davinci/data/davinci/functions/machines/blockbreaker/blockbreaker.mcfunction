execute as @e[type=item_frame,nbt={Tags:["Breaker"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerBreaker"]}
execute as @e[tag=PlacerBreaker] run kill @e[type=item_frame,nbt={Tags:["Breaker"]}]
execute as @e[tag=PlacerBreaker] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"Block Breaker\"}"}
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerBreaker] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Breaker"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10262626}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerBreaker] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Breaker"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10262626}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerBreaker] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Breaker"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10262626}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerBreaker] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Breaker"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10262626}}]}
execute as @e[tag=Breaker] run kill @e[tag=PlacerBreaker]
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10262626, display: {Name: "{\"text\":\"Block Breaker\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Breaker"]}}}}
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run kill @s

execute as @e[tag=Breaker,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=BreakerEnabled,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

# Block Breaker (Energy Check)
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "fa62b984-4078-4285-a57c-6cd9d620ea92", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2YjY4Mzc2YzE4MWM5YTczNDNmZWUzNjk3ZmFhY2VjMzUxMjlmYjY0ZGU1OTE0YmRiZjg2OWM2NTJjIn19fQ=="}]}}, display: {Lore: ["{\"text\":\"Holding\",\"color\":\"white\",\"bold\":true}", "{\"text\":\"100 MF / 100 MF\",\"color\":\"white\",\"bold\":true}"], Name: "{\"text\":\"Mana Flux Battery\",\"color\":\"green\"}"}}}]} unless block ~ ~1 ~ dropper{Items:[{Slot:0b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:1b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:2b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:3b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:5b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:6b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:7b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:8b}]} run tag @s add BreakerEnabled
execute as @e[tag=BreakerEnabled,tag=Breaker] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=BreakerEnabled] run tag @s remove Breaker

# Block Breaker Functionality
execute as @e[tag=BreakerEnabled] at @s if block ^ ^1 ^-1 chest unless block ^ ^1 ^1 bedrock run loot insert ^ ^1 ^-1 mine ^ ^1 ^1 diamond_pickaxe
execute as @e[tag=BreakerEnabled] at @s if block ^ ^1 ^-1 chest unless block ^ ^1 ^1 bedrock run setblock ^ ^1 ^1 air destroy
execute as @e[tag=BreakerEnabled] at @s if block ^ ^1 ^-1 chest run kill @e[type=item,distance=..2]

# Block Breaker (On Destroy)
execute as @e[tag=BreakerEnabled] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10262626, display: {Name: "{\"text\":\"Block Breaker\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Breaker"]}}}}
execute as @e[tag=BreakerEnabled] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=BreakerEnabled] at @s if block ~ ~1 ~ air run kill @s

# Block Breaker (On Destroy)
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10262626, display: {Name: "{\"text\":\"Block Breaker\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Breaker"]}}}}
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Breaker] at @s if block ~ ~1 ~ air run kill @s
