#Removes Chopping Block after breaking
    summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
    data modify entity @e[type=item,nbt={Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}},distance=...82,limit=1] Item set from entity @e[type=husk,tag=Chopping_Block,distance=...82,limit=1] ArmorItems[3]
    tag @e[type=husk,tag=Chopping_Block,distance=...82] add Kill
    tp @e[tag=Kill] ~ ~-257 ~
    kill @e[tag=Kill]
    kill @e[type=item,nbt={Item:{id:"minecraft:oak_slab",Count:1b}},distance=..1]
    summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1005,display:{Name:'{"text":"Chopping Block","italic":false}'},EntityTag:{Tags:["Chopping_Block"]}}}}
    kill @s