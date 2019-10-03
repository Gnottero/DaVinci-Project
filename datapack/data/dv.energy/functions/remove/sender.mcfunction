# Removes Sender after breaking
    kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=..1]
    summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1004,display:{Name:'{"text":"Energy Node [Sender]","italic":false}'},EntityTag:{Tags:["Sender"]}}}}
    kill @s