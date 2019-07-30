execute as @e[type=item_frame,nbt={Tags:["Laser"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerLaser"]}
execute as @e[tag=PlacerLaser] run kill @e[type=item_frame,nbt={Tags:["Laser"]}]
execute as @e[tag=PlacerLaser] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"Laser Drill\"}"}
execute as @e[tag=PlacerLaser] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Laser"],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10383838}}]}
execute as @e[tag=Laser] run kill @e[tag=PlacerLaser]
execute as @e[tag=Laser,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=ActivatedLaser,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=Laser] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10383838, display: {Name: "{\"text\":\"Laser Drill\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Laser"]}}}}
execute as @e[tag=Laser] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Laser] at @s if block ~ ~1 ~ air run kill @s

# Disabled Laser Drill Break
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10383838, display: {Name: "{\"text\":\"Laser Drill\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Laser"]}}}}
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ air run kill @s

# Iron Drill  Break
execute as @e[tag=IronDrill] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10383838, display: {Name: "{\"text\":\"Laser Drill\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Laser"]}}}}
execute as @e[tag=IronDrill] at @s if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"Ore Laser (Iron)\",\"color\":\"dark_gray\",\"bold\":true}",Lore:["{\"text\":\"Put it in a Laser Drill to extract iron ore\",\"color\":\"white\"}"]},CustomModelData:10454545}}}
execute as @e[tag=IronDrill] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=IronDrill] at @s if block ~ ~1 ~ air run kill @s

# Diamond Drill Break
execute as @e[tag=DiamondDrill] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10383838, display: {Name: "{\"text\":\"Laser Drill\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Laser"]}}}}
execute as @e[tag=DiamondDrill] at @s if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"Ore Laser (Diamond)\",\"color\":\"blue\",\"bold\":true}",Lore:["{\"text\":\"Put it in a Laser Drill to extract diamond ore\",\"color\":\"white\"}"]},CustomModelData:10464646}}}
execute as @e[tag=DiamondDrill] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=DiamondDrill] at @s if block ~ ~1 ~ air run kill @s

# Gold Drill Break
execute as @e[tag=GoldDrill] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10383838, display: {Name: "{\"text\":\"Laser Drill\",\"color\":\"white\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Laser"]}}}}
execute as @e[tag=GoldDrill] at @s if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:"{\"text\":\"Ore Laser (Gold)\",\"color\":\"gold\",\"bold\":true}",Lore:["{\"text\":\"Put it in a Laser Drill to extract gold ore\",\"color\":\"white\"}"]},CustomModelData:10474747}}}
execute as @e[tag=GoldDrill] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=GoldDrill] at @s if block ~ ~1 ~ air run kill @s

# Activation
execute as @e[tag=Laser] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "3b52c749-e28a-4d47-b0f6-42902e9b48b3", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE1ZDM2YWJhODE1MzkyNjM2MTU3ODliZjMxNGIwMzNlNjJjNzM4YzZhYzZmNDk2ZTRjYzc5ZTkxOGYwNiJ9fX0="}]}}, display: {Lore: ['{"text":"Holding","color":"white","bold":true}', '{"text":"100 EP/ 100 EP","color":"dark_red","bold":true}'], Name: '{"text":"Explosion Infused Mana"}'}}}]} run tag @s add ActivatedLaser
execute as @e[tag=Laser,tag=ActivatedLaser] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=ActivatedLaser,tag=Laser] run tag @s remove Laser

execute as @e[tag=ActivatedLaser] at @s run particle happy_villager ~ ~1.5 ~

# Iron Ore Drill
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 10454545, display: {Lore: ['{"text":"Put it in a Laser Drill to extract iron ore","color":"white"}'], Name: '{"text":"Ore Laser (Iron)","color":"dark_gray","bold":true}'}}}]} run tag @s add IronDrill
execute as @e[tag=ActivatedLaser,tag=IronDrill] run scoreboard players add @s IronDrillUsage 64
execute as @e[tag=ActivatedLaser,tag=IronDrill] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=ActivatedLaser,tag=IronDrill] run tag @s remove ActivatedLaser
execute as @e[tag=IronDrill] at @s run fill ~ ~ ~ ~ 1 ~ air
execute as @e[tag=IronDrill] run scoreboard players add @s IronTimer 1
execute as @e[tag=IronDrill,scores={IronTimer=6000..,IronDrillUsage=1..}] at @s run summon item ~ ~1.5 ~ {Item:{id:"minecraft:iron_ore",Count:1b}}
execute as @e[tag=IronDrill,scores={IronTimer=6000..,IronDrillUsage=1..}] run scoreboard players remove @s IronDrillUsage 1
execute as @e[tag=IronDrill,scores={IronTimer=6000..}] run scoreboard players reset @s IronTimer

# Diamond Ore Drill
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 10464646, display: {Lore: ['{"text":"Put it in a Laser Drill to extract diamond ore","color":"white"}'], Name: '{"text":"Ore Laser (Diamond)","color":"blue","bold":true}'}}}]} run tag @s add DiamondDrill
execute as @e[tag=ActivatedLaser,tag=DiamondDrill] run scoreboard players add @s DDrillUsage 16
execute as @e[tag=ActivatedLaser,tag=DiamondDrill] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=ActivatedLaser,tag=DiamondDrill] run tag @s remove ActivatedLaser
execute as @e[tag=DiamondDrill] at @s run fill ~ ~ ~ ~ 1 ~ air
execute as @e[tag=DiamondDrill] run scoreboard players add @s DiamondTimer 1
execute as @e[tag=DiamondDrill,scores={DiamondTimer=18000..,DDrillUsage=1..}] at @s run summon item ~ ~1.5 ~ {Item:{id:"minecraft:diamond_ore",Count:1b}}
execute as @e[tag=DiamondDrill,scores={DiamondTimer=18000..,DDrillUsage=1..}] run scoreboard players remove @s DDrillUsage 1
execute as @e[tag=DiamondDrill,scores={DiamondTimer=18000..}] run scoreboard players reset @s DiamondTimer

# Gold Ore Drill
execute as @e[tag=ActivatedLaser] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 10474747, display: {Lore: ['{"text":"Put it in a Laser Drill to extract gold ore","color":"white"}'], Name: '{"text":"Ore Laser (Gold)","color":"gold","bold":true}'}}}]} run tag @s add GoldDrill
execute as @e[tag=ActivatedLaser,tag=GoldDrill] run scoreboard players add @s GoldDrillUsage 32
execute as @e[tag=ActivatedLaser,tag=GoldDrill] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=ActivatedLaser,tag=GoldDrill] run tag @s remove ActivatedLaser
execute as @e[tag=GoldDrill] at @s run fill ~ ~ ~ ~ 1 ~ air
execute as @e[tag=GoldDrill] run scoreboard players add @s GoldTimer 1
execute as @e[tag=GoldDrill,scores={GoldTimer=12000..,GoldDrillUsage=1..}] at @s run summon item ~ ~1.5 ~ {Item:{id:"minecraft:gold_ore",Count:1b}}
execute as @e[tag=GoldDrill,scores={GoldTimer=12000..,GoldDrillUsage=1..}] run scoreboard players remove @s GoldDrillUsage 1
execute as @e[tag=GoldDrill,scores={GoldTimer=12000..}] run scoreboard players reset @s GoldTimer
