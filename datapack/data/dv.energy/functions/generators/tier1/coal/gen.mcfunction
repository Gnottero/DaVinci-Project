#Energy Generation System
    execute as @e[tag=Generator] at @s unless score @s DV.Energy matches 5000 if block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:coal"}]} run tag @s add tag.temp

    execute as @e[tag=Generator,tag=tag.temp] at @s run function dv.energy:generators/tier1/coal/coal

#Stored Energy Information
    execute as @e[tag=Generator] at @s if block ~ ~ ~ barrel unless block ~ ~ ~ barrel{Items:[{Slot: 4b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}'], Name: '{"text":"Energy Generation:","italic":false}'}}}]} run tellraw @p [{"text":"Stored Energy: ","color":"gray","italic":false},{"score":{"name":"@s","objective":"DV.Energy"}},{"text":"Dv"}]
    execute as @e[tag=Generator] at @s if data block ~ ~ ~ Items[{Slot:4b}].Count unless block ~ ~ ~ barrel{Items:[{Slot: 4b, id: "minecraft:lime_terracotta", Count: 1b, tag: {Remove:1b,display: {Lore: ['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}'], Name: '{"text":"Energy Generation:","italic":false}'}}}]} run summon minecraft:item ~ ~1 ~ {PickupDelay:0,Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
    execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:spawner",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:4b}]
    execute as @e[tag=Generator] at @s run replaceitem block ~ ~ ~ container.4 minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Generation:","italic":false}',Lore:['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}']}} 1

#Remove GUI elements from player inventory
    clear @a minecraft:lime_terracotta{Remove:1b,display:{Name:'{"text":"Energy Generation:","italic":false}',Lore:['{"text":"100 Dv/Mana Bottle","color":"gray","italic":false}','{"text":"Can hold up to 5000Dv","color":"gray","italic":false}']}}

#Solving dark texture bug
    execute as @e[type=armor_stand,tag=Generator,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}