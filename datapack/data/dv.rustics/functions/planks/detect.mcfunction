#Executing the right function basing on the husk tag
    execute if entity @s[tag=Oak_Log] run function dv.rustics:planks/oak
    execute if entity @s[tag=Spruce_Log] run function dv.rustics:planks/spruce
    execute if entity @s[tag=Birch_Log] run function dv.rustics:planks/birch
    execute if entity @s[tag=Jungle_Log] run function dv.rustics:planks/jungle
    execute if entity @s[tag=Acacia_Log] run function dv.rustics:planks/acacia
    execute if entity @s[tag=Dark_oak_Log] run function dv.rustics:planks/dark_oak
    execute if entity @s[tag=Stick] run function dv.rustics:planks/stick
    tag @s remove Log