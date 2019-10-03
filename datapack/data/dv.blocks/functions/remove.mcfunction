#Removes the item frames generated by normal spawner
    kill @e[type=item,nbt={Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}]

#Removes the item frames generated by Custom Blocks and generates break particles
    execute as @e[type=item,nbt={Item:{id:"minecraft:item_frame",tag:{EntityTag:{Tags:["removexp"]}}}}] at @s run kill @e[type=minecraft:experience_orb,distance=..1]
    execute as @e[type=item,nbt={Item:{id:"minecraft:item_frame",tag:{EntityTag:{Tags:["removexp"]}}}}] at @s align xyz positioned ~.5 ~.5 ~.5 run particle block stone ~ ~ ~ .4 .4 .4 .8 80 normal
    execute as @e[type=item,nbt={Item:{id:"minecraft:item_frame",tag:{EntityTag:{Tags:["removexp"]}}}}] run data remove entity @s Item.tag.EntityTag.Tags[2]