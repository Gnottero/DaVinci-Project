#Stored Energy Information
    execute as @e[tag=Sender] at @s if block ~ ~ ~ chest[type=left] unless block ~ ~ ~ chest[type=left]{Items:[{Slot: 13b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"Click to see the stored energy","color":"gray","italic":false}'], Name: '{"text":"Energy Point:","italic":false}'}}}]} run tellraw @p [{"text":"Stored Energy: ","color":"gray","italic":false},{"score":{"name":"@s","objective":"DV.Energy"}},{"text":"Dv"}]
    execute as @e[tag=Sender] at @s if data block ~ ~ ~ Items[{Slot:13b}].Count unless block ~ ~ ~ chest[type=left]{Items:[{Slot: 13b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"Click to see the stored energy","color":"gray","italic":false}'], Name:'{"text":"Energy Point:","italic":false}'}}}]} run summon minecraft:item ~ ~1 ~ {PickupDelay:0,Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
    execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:13b}]
    execute as @e[tag=Sender] at @s run replaceitem block ~ ~ ~ container.13 minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Point:","italic":false}',Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}']}} 1

#Remove GUI elements from player inventory
    clear @a minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Point:","italic":false}',Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}']}}

#Taking energy from a generator
    execute as @e[tag=Sender] at @s positioned ^ ^ ^1 unless score @s DV.Energy matches 5000 if entity @e[tag=EnergyGenerator,distance=...1] if score @e[tag=EnergyGenerator,distance=...1,limit=1] DV.Energy >= $Energy dv.generator_1 run scoreboard players operation @e[tag=EnergyGenerator,distance=...1,limit=1] dv.nodebuffer += @e[tag=EnergyGenerator,distance=...1,limit=1] DV.Energy
    execute as @e[tag=Sender] at @s positioned ^ ^ ^1 unless score @s DV.Energy matches 5000 run scoreboard players operation @s DV.Energy += @e[tag=EnergyGenerator,distance=...1,limit=1] dv.nodebuffer
    execute as @e[tag=Sender] at @s positioned ^ ^ ^1 run scoreboard players operation @e[tag=EnergyGenerator,distance=...1,limit=1] DV.Energy -= @e[tag=EnergyGenerator,distance=...1,limit=1] dv.nodebuffer
    execute as @e[tag=Sender] at @s positioned ^ ^ ^1 run scoreboard players set @e[tag=EnergyGenerator,distance=...1,limit=1] dv.nodebuffer 0
