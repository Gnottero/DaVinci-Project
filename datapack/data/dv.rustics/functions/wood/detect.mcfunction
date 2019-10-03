#Detecting the log type that will be placed
    tag @s add Log
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/oak
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/spruce
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:birch_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/birch
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/jungle
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/acacia
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/dark_oak
#Detecting the planks type that will be placed
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:birch_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick
    execute if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks",Count:1b}},distance=...82,limit=1] run function dv.rustics:wood/stick