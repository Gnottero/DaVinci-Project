execute as @e[type=item_frame,nbt={Tags:["Quarry"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerQuarry"]}
execute as @e[tag=PlacerQuarry] run kill @e[type=item_frame,nbt={Tags:["Quarry"]}]
execute as @e[tag=PlacerQuarry] at @s run setblock ~ ~ ~ dropper{CustomName:"{\"text\":\"»» Basic Quarry ««\"}"}

# Direction of the block
execute if entity @p[y_rotation=-316..-226] at @e[tag=PlacerQuarry] run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Quarry","West"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10222222}}]}
execute if entity @p[y_rotation=-407..-317] at @e[tag=PlacerQuarry] run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Quarry","South"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10222222}}]}
execute if entity @p[y_rotation=-498..-408] at @e[tag=PlacerQuarry] run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Quarry","North_East"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10222222}}]}
execute if entity @p[y_rotation=-225..-135] at @e[tag=PlacerQuarry] run summon armor_stand ~ ~-1 ~ {Marker:1b,Fire:23000s,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Quarry","North_East"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10222222}}]}
execute as @e[tag=Quarry] run kill @e[tag=PlacerQuarry]

execute as @e[tag=Quarry,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

# Enabling the Quarry
execute as @e[tag=Quarry] at @s if block ~ ~1 ~ dropper{Items: [{Slot: 4b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: "fa62b984-4078-4285-a57c-6cd9d620ea92", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2YjY4Mzc2YzE4MWM5YTczNDNmZWUzNjk3ZmFhY2VjMzUxMjlmYjY0ZGU1OTE0YmRiZjg2OWM2NTJjIn19fQ=="}]}}, display: {Lore: ["{\"text\":\"Holding\",\"color\":\"white\",\"bold\":true}", "{\"text\":\"100 MF / 100 MF\",\"color\":\"white\",\"bold\":true}"], Name: "{\"text\":\"Mana Flux Battery\",\"color\":\"green\"}"}}}]} unless block ~ ~1 ~ dropper{Items:[{Slot:0b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:1b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:2b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:3b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:5b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:6b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:7b}]} unless block ~ ~1 ~ dropper{Items:[{Slot:8b}]} run tag @s add QuarryEnabled
execute as @e[tag=QuarryEnabled,tag=Quarry] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=QuarryEnabled] run tag @s remove Quarry

# Summoning the Excavator
execute at @e[tag=QuarryEnabled,tag=North_East] run summon minecraft:armor_stand ^ ^ ^-1 {Tags:["Excavator"],NoGravity:1b,Invisible:1b}
execute at @e[tag=QuarryEnabled,tag=South] run summon minecraft:armor_stand ^ ^ ^-16 {Tags:["Excavator"],NoGravity:1b,Invisible:1b}
execute at @e[tag=QuarryEnabled,tag=West] run summon minecraft:armor_stand ^-15 ^ ^-16 {Tags:["Excavator"],NoGravity:1b,Invisible:1b}

execute as @e[tag=QuarryEnabled] run tag @e remove North_East
execute as @e[tag=QuarryEnabled] run tag @e remove South
execute as @e[tag=QuarryEnabled] run tag @e remove West

# Starting digging process
execute as @e[tag=Excavator] run scoreboard players add @s QuarryTime 1
execute as @e[tag=QuarryEnabled] at @s run tp @e[tag=itp,distance=..25] ~ ~2 ~
execute as @e[tag=QuarryEnabled] at @s run tag @e[tag=itp,distance=..2] remove itp
execute as @e[tag=Excavator] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=Excavator,scores={QuarryTime=20}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=40}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=60}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=80}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=100}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=120}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=140}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=160}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=180}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=200}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=220}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=240}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=260}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=280}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=300}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=320}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=340}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=360}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=380}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=400}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=420}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=440}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=460}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=480}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=500}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=520}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=540}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=560}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=580}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=600}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=620}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=640}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=660}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=680}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=700}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=720}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=740}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=760}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=780}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=800}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=820}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=840}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=860}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=880}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=900}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=920}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=940}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=960}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=980}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1000}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1020}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1040}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1060}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1080}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1100}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1120}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1140}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1160}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1180}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1200}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1220}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1240}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1260}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=1280}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=1300}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1320}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1340}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1360}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1380}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1400}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1420}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1440}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1460}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1480}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1500}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1520}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1540}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1560}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1580}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=1600}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=1620}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1640}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1660}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1680}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1700}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1720}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1740}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1760}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1780}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1800}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1820}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1840}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1860}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1880}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1900}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=1920}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=1940}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1960}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=1980}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2000}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2020}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2040}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2060}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2080}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2100}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2120}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2140}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2160}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2180}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2200}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2220}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=2240}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=2260}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2280}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2300}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2320}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2340}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2360}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2380}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2400}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2420}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2440}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2460}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2480}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2500}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2520}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2540}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=2560}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=2580}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2600}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2620}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2640}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2660}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2680}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2700}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2720}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2740}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2760}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2780}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2800}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2820}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2840}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2860}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=2880}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=2900}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2920}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2940}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2960}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=2980}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3000}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3020}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3040}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3060}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3080}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3100}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3120}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3140}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3160}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3180}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=3200}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=3220}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3240}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3260}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3280}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3300}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3320}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3340}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3360}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3380}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3400}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3420}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3440}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3460}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3480}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3500}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=3520}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=3540}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3560}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3580}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3600}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3620}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3640}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3660}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3680}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3700}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3720}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3740}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3760}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3780}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3800}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3820}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=3840}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=3860}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3880}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3900}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3920}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3940}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3960}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=3980}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4000}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4020}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4040}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4060}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4080}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4100}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4120}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4140}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=4160}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=4180}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4200}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4220}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4240}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4260}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4280}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4300}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4320}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4340}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4360}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4380}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4400}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4420}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4440}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4460}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=4480}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=4500}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4520}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4540}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4560}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4580}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4600}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4620}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4640}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4660}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4680}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4700}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4720}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4740}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4760}] at @s run tp @s ~1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4780}] at @s run tp @s ~1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=4800}] at @s run tp @s ~ ~ ~-1

execute as @e[tag=Excavator,scores={QuarryTime=4820}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4840}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4860}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4880}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4900}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4920}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4940}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4960}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=4980}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5000}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5020}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5040}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5060}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5080}] at @s run tp @s ~-1 ~ ~
execute as @e[tag=Excavator,scores={QuarryTime=5100}] at @s run tp @s ~-1 ~ ~

execute as @e[tag=Excavator,scores={QuarryTime=5120}] at @s run tp @s ~ ~-1 ~15
execute as @e[tag=Excavator,scores={QuarryTime=5120}] at @s run tag @e[type=item,distance=..22] add itp
execute as @e[tag=Excavator,scores={QuarryTime=5120}] run scoreboard players reset @s QuarryTime

# Killing Quarry
execute as @e[tag=QuarryEnabled] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10222222, display: {Name: "{\"text\":\"Basic Quarry\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Quarry"]}}}}
execute as @e[tag=QuarryEnabled] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:1b}},distance=..2]
execute as @e[tag=QuarryEnabled] at @s if block ~ ~1 ~ air run kill @e[tag=Excavator,sort=nearest]
execute as @e[tag=QuarryEnabled] at @s if block ~ ~1 ~ air run kill @s

execute as @e[tag=Quarry] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10222222, display: {Name: "{\"text\":\"Basic Quarry\",\"color\":\"gold\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Quarry"]}}}}
execute as @e[tag=Quarry] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},distance=..2]
execute as @e[tag=Quarry] at @s if block ~ ~1 ~ air run kill @e[tag=Excavator,sort=nearest]
execute as @e[tag=Quarry] at @s if block ~ ~1 ~ air run kill @s
