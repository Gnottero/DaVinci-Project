#Placing blocks with a GUI
    #Giving block back if not placed correctly (Tier 1 Generator)
    execute as @e[type=item_frame,tag=Generator] at @s if entity @p[distance=...82] run function dv.energy:obstructed/gent1
    execute as @e[type=item_frame,tag=Generator] at @s unless block ~ ~ ~ #dv.master:air run function dv.energy:obstructed/gent1

    #Giving block back if not placed correctly (Energy Point)
    execute as @e[type=item_frame,tag=EnergyPoint] at @s if entity @p[distance=...82] run function dv.energy:obstructed/point
    execute as @e[type=item_frame,tag=EnergyPoint] at @s unless block ~ ~ ~ #dv.master:air run function dv.energy:obstructed/point

    #Giving block back if not placed correctly (Energy Node [Sender])
    execute as @e[type=item_frame,tag=Sender] at @s if entity @p[distance=...82] run function dv.energy:obstructed/sender
    execute as @e[type=item_frame,tag=Sender] at @s unless block ~ ~ ~ #dv.master:air run function dv.energy:obstructed/sender
    
#Generator Tier 1
    execute as @e[type=item_frame,nbt={Tags:["Generator"]}] at @s align xyz positioned ~.5 ~.035 ~.5 if block ~ ~ ~ #dv.master:air unless entity @p[distance=...82] run function dv.energy:place/gent1

    execute as @e[type=armor_stand,tag=Generator,tag=Remove] at @s run function dv.energy:setup/gent1

#Energy Point
    execute as @e[type=item_frame,nbt={Tags:["EnergyPoint"]}] at @s align xyz positioned ~.5 ~.035 ~.5 if block ~ ~ ~ #dv.master:air unless entity @p[distance=...82] run function dv.energy:place/point
    
    execute as @e[type=armor_stand,tag=EnergyPoint,tag=Remove] at @s run function dv.energy:setup/point
    
    execute as @e[type=armor_stand,tag=EnergyPoint] at @s if block ~ ~ ~ minecraft:chest unless block ~ ~ ~ minecraft:chest[type=left] run setblock ~ ~ ~ minecraft:chest[facing=north,type=left,waterlogged=false]{Items:[{Slot:0b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:1b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:2b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:3b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:4b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:5b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:6b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:7b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:8b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:9b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:10b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:11b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:12b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:13b,id:"minecraft:lime_terracotta",Count:1b,tag:{Remove:1b,display:{Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}'],Name:'{"text":"Energy Point:","italic":false}'}}},{Slot:14b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:15b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:16b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:17b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:18b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:19b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:20b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:21b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:22b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:23b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:24b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:25b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:26b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}}]}  

#Sender
    execute as @e[type=minecraft:item_frame,nbt={Tags:["Sender"]}] at @s align xyz positioned ~.5 ~.035 ~.5 if block ~ ~ ~ #dv.master:air unless entity @p[distance=...82] run function dv.energy:place/sender

    execute as @e[type=armor_stand,tag=Sender,tag=Remove] at @s run function dv.energy:setup/sender

    execute at @e[nbt={Tags:["Sender"]}] if block ~ ~ ~ minecraft:chest unless block ~ ~ ~ minecraft:chest[type=left] run setblock ~ ~ ~ minecraft:chest[facing=north,type=left,waterlogged=false]{Items:[{Slot:0b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:1b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:2b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:3b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:4b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:5b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:6b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:7b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:8b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:9b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:10b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:11b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:12b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:13b,id:"minecraft:lime_terracotta",Count:1b,tag:{Remove:1b,display:{Lore:['{"text":"Click to see the stored energy","color":"gray","italic":false}'],Name:'{"text":"Energy Point:","italic":false}'}}},{Slot:14b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:15b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:16b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:17b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:18b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:19b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:20b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:21b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:22b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:23b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:24b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:25b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}},{Slot:26b,id:"minecraft:glass",Count:1b,tag:{Remove:1b}}]}
