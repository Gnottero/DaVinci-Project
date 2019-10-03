#Checking if the entity was hit by the player and if so turning the log into 2 planks
    summon item ~ ~1 ~ {Item:{id:"minecraft:birch_planks",Count:2b}}
    data merge entity @s {Health:20.0f}
    data merge entity @s {ArmorItems:[{},{},{},{}]}
    tag @s remove Birch_Log