#Placing the right log in ArmorItems[3]
    execute as @e[tag=Chopping_Block,type=husk] at @s if entity @e[type=item,distance=...82,limit=1] unless data entity @s ArmorItems[].Count run function dv.rustics:wood/detect
    execute as @e[tag=Log,nbt=!{Health:20.0f}] at @s if entity @p[predicate=dv.rustics:holdanaxe,distance=..5] run function dv.rustics:planks/detect

#Status effects of the husk
    data merge entity @e[type=minecraft:husk,tag=Chopping_Block,nbt=!{Health:20.0f},limit=1] {Health:20.0f}
