#Removing a block with a gui
    #Killing gui items
    kill @e[type=item,nbt={Item:{tag:{Remove:1b}}}]

    #Removing Tier 1 Energy Generator
    execute as @e[type=armor_stand,tag=EnergyGenerator] at @s unless block ~ ~ ~ barrel run kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    execute as @e[type=armor_stand,tag=EnergyGenerator] at @s unless block ~ ~ ~ barrel run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..1]
    execute as @e[type=armor_stand,tag=EnergyGenerator] at @s unless block ~ ~ ~ barrel run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1002,display:{Name:'{"text":"Energy Generator [Tier 1]","italic":false}'},EntityTag:{Tags:["Generator"]}}}}
    execute as @e[type=armor_stand,tag=EnergyGenerator] at @s unless block ~ ~ ~ barrel run kill @s

    #Removing Energy Point
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s unless block ~ ~ ~ chest run kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s unless block ~ ~ ~ chest run kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=..1]
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s unless block ~ ~ ~ chest run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1003,display:{Name:'{"text":"Energy Point","italic":false}'},EntityTag:{Tags:["EnergyPoint"]}}}}
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s unless block ~ ~ ~ chest run kill @s

    #Removing Energy Node (Sender)
    execute as @e[type=armor_stand,tag=Sender] at @s unless block ~ ~ ~ chest run kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    execute as @e[type=armor_stand,tag=Sender] at @s unless block ~ ~ ~ chest run kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=..1]
    execute as @e[type=armor_stand,tag=Sender] at @s unless block ~ ~ ~ chest run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1004,display:{Name:'{"text":"Energy Node [Sender]","italic":false}'},EntityTag:{Tags:["Sender"]}}}}
    execute as @e[type=armor_stand,tag=Sender] at @s unless block ~ ~ ~ chest run kill @s