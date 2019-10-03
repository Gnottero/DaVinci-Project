#Removing Work Stump after breaking
    kill @e[nbt={Item:{tag:{Remove:1b}}},distance=..1]
    kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=..1]
    summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:2001,display:{Name:'{"text":"Work Stump","italic":false}'},EntityTag:{Tags:["Zero_Crafting"]}}}}
    kill @s