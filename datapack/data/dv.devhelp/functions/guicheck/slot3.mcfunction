# Checking Slot 3 of a chest/barrel and giving back items
clear @a glass{Remove:1b}
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}}
data modify entity @e[type=item,limit=1,distance=..1] Item set from block ~ ~ ~ Items.[{Slot:3b}]
replaceitem block ~ ~ ~ container.3 glass{Remove:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Tags:["Remove"]}}}},limit=1,distance=..1]