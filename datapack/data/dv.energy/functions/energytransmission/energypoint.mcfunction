#Stored Energy Information
    execute as @e[tag=EnergyPoint] at @s if block ~ ~ ~ chest[type=left] unless block ~ ~ ~ chest[type=left]{Items:[{Slot: 13b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"Click to see the stored energy","color":"gray","italic":false}'], Name: '{"text":"Energy Point:","italic":false}'}}}]} run tellraw @p [{"text":"Stored Energy: ","color":"gray","italic":false},{"score":{"name":"@s","objective":"DV.Energy"}},{"text":"Dv"}]
    execute as @e[tag=EnergyPoint] at @s if data block ~ ~ ~ Items[{Slot:13b}].Count unless block ~ ~ ~ chest[type=left]{Items:[{Slot: 13b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"Click to see the stored energy","color":"gray","italic":false}'], Name:'{"text":"Energy Point:","italic":false}'}}}]} run summon minecraft:item ~ ~1 ~ {PickupDelay:0,Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
    execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:13b}]
    execute as @e[tag=EnergyPoint] at @s run replaceitem block ~ ~ ~ container.13 minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Point:","italic":false}',Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}']}} 1

#Remove GUI elements from player inventory
    clear @a minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Point:","italic":false}',Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}']}}

#Taking energy from energy nodes (Senders)
    execute as @e[tag=Sender] at @s if entity @e[tag=EnergyPoint,limit=1,distance=..10] unless score @s DV.Energy matches 0 unless score @s DV.Counter matches 0 unless score @s dv.nodebuffer = $Energy dv.generator_1 run function dv.energy:energytransmission/sendertopoint
    execute as @e[tag=Sender] at @s if entity @e[tag=EnergyPoint,limit=1,distance=..10] if score @s dv.nodebuffer = $Energy dv.generator_1 run scoreboard players operation @e[tag=EnergyPoint,distance=..10,sort=nearest,limit=1] DV.Energy += @s dv.nodebuffer
    execute as @e[tag=Sender] if score @s dv.nodebuffer = $Energy dv.generator_1 run scoreboard players set @s dv.nodebuffer 0
    execute as @e[tag=Sender] if score @s DV.Counter matches 0 run scoreboard players operation @s DV.Counter += $Energy dv.generator_1