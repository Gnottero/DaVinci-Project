#Placing the oak log in ArmorItems[3] and executing the cutting commands
    data modify entity @s ArmorItems[3] set from entity @e[type=item,nbt={Item:{id:"minecraft:birch_log",Count:1b}},distance=...82,limit=1] Item
    kill @e[type=item,nbt={Item:{id:"minecraft:birch_log",Count:1b}},distance=...82]
    tag @s add Birch_Log