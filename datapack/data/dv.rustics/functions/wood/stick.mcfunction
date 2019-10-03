#Placing the planks in ArmorItems[3] and executing the cutting commands
    data modify entity @s ArmorItems[3] set from entity @e[type=item,distance=...82,limit=1] Item
    kill @e[type=item,distance=...82,limit=1]
    tag @s add Stick