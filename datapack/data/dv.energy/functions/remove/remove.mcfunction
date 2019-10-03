#Removing a block with a gui
    #Killing gui items
    kill @e[type=item,nbt={Item:{tag:{Remove:1b}}}]

    #Removing Tier 1 Energy Generator
    execute as @e[type=armor_stand,tag=Generator] at @s unless block ~ ~ ~ barrel run function dv.energy:remove/gent1

    #Removing Energy Point
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s unless block ~ ~ ~ chest run function dv.energy:remove/energypoint

    #Removing Energy Node (Sender)
    execute as @e[type=armor_stand,tag=Sender] at @s unless block ~ ~ ~ chest run function dv.energy:remove/sender
