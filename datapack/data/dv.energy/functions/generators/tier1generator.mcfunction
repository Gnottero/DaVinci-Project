#Energy Generation System
    execute as @e[tag=EnergyGenerator] at @s unless score @s DV.Energy matches 5000 if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:coal"}]} run tag @s add tag.temp
    execute as @e[tag=EnergyGenerator,tag=tag.temp,scores={dv.energybackup=0}] at @s store result score @s dv.used_item run data get block ~ ~ ~ Items.[{Slot:13b}].Count
    execute as @e[tag=EnergyGenerator,tag=tag.temp,scores={dv.energybackup=0}] at @s store result block ~ ~ ~ Items.[{Slot:13b}].Count byte 1 run scoreboard players remove @s dv.used_item 1
    execute as @e[tag=tag.temp] unless score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players add @s dv.energybackup 1
    execute as @e[tag=tag.temp] if score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players operation @s DV.Energy += @s dv.energybackup
    execute as @e[tag=EnergyGenerator,tag=tag.temp] if score @s dv.energybackup = $Energy dv.generator_1 run tag @s remove tag.temp
    execute as @e[tag=EnergyGenerator] if score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players set @s dv.energybackup 0

#Stored Energy Information
    execute as @e[tag=EnergyGenerator] at @s if block ~ ~ ~ barrel unless block ~ ~ ~ barrel{Items:[{Slot: 4b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}'], Name: '{"text":"Energy Generation:","italic":false}'}}}]} run tellraw @p [{"text":"Stored Energy: ","color":"gray","italic":false},{"score":{"name":"@s","objective":"DV.Energy"}},{"text":"Dv"}]
    execute as @e[tag=EnergyGenerator] at @s if data block ~ ~ ~ Items[{Slot:4b}].Count unless block ~ ~ ~ barrel{Items:[{Slot: 4b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}'], Name: '{"text":"Energy Generation:","italic":false}'}}}]} run summon minecraft:item ~ ~1 ~ {PickupDelay:0,Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
    execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:4b}]
    execute as @e[tag=EnergyGenerator] at @s run replaceitem block ~ ~ ~ container.4 minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Generation:","italic":false}',Lore:['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}']}} 1

#Remove GUI elements from player inventory
    clear @a minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Generation:","italic":false}',Lore:['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}']}}

#Solving dark texture bug
    execute as @e[type=armor_stand,tag=EnergyGenerator,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}