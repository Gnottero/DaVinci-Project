#Removing Energy Generator after breaking
    kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..1]
    summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1002,display:{Name:'{"text":"Energy Generator [Tier 1]","italic":false}'},EntityTag:{Tags:["Generator"]}}}}
    kill @s