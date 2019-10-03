#Checking if the entity was hit by the player and if so turning the planks into 4 sticks
    summon item ~ ~1 ~ {Item:{id:"minecraft:stick",Count:4b}}
    data merge entity @s {Health:20.0f}
    data merge entity @s {ArmorItems:[{},{},{},{}]}
    tag @s remove Stick