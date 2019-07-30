execute as @e[tag=Tree] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "fa62b984-4078-4285-a57c-6cd9d620ea92", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2YjY4Mzc2YzE4MWM5YTczNDNmZWUzNjk3ZmFhY2VjMzUxMjlmYjY0ZGU1OTE0YmRiZjg2OWM2NTJjIn19fQ=="}]}}, display: {Lore: ['{"text":"Holding","color":"white","bold":true}', '{"text":"100 MF / 100 MF","color":"white","bold":true}'], Name: '{"text":"Mana Flux Battery","color":"green"}'}}}]} run tag @s add TreeEnabled
execute as @e[tag=TreeEnabled,tag=Tree] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=TreeEnabled,tag=Tree] at @s run tag @s remove Tree
execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:acacia_sapling", Count: 1b}]} run tag @s add Acacia
execute as @e[tag=TreeEnabled,tag=Acacia] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=TreeEnabled,tag=Acacia] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[tag=TreeEnabled,tag=Acacia] run tag @s remove TreeEnabled

execute as @e[tag=TreeEnabled,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Acacia,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ air run setblock ~ ~2 ~ air destroy
execute as @e[tag=TreeEnabled] at @s if block ~ ~2 ~ air run setblock ~ ~1 ~ air destroy
execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10424242, display: {Name: "{\"text\":\"Mini Tree Farm\",\"color\":\"green\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Tree"]}}}}
execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}},distance=..2]
execute as @e[tag=TreeEnabled] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @s

execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air run setblock ~ ~2 ~ air destroy
execute as @e[tag=Acacia] at @s if block ~ ~2 ~ air run setblock ~ ~1 ~ air destroy
execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10424242, display: {Name: "{\"text\":\"Mini Tree Farm\",\"color\":\"green\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Tree"]}}}}
execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:acacia_sapling",Count:1b}}
execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:glass",Count:1b}},distance=..2]
execute as @e[tag=Acacia] at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run kill @s
