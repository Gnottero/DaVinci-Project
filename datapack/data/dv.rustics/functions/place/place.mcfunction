#Giving block back if not placed correctly (Chopping Block)
    execute as @e[type=item_frame,tag=Chopping_Block] at @s if entity @p[distance=...82] run function dv.rustics:obstructed/chopping_block
    execute as @e[type=item_frame,tag=Chopping_Block] at @s unless block ~ ~ ~ #dv.master:air run function dv.rustics:obstructed/chopping_block

    execute as @e[type=item_frame,tag=Zero_Crafting] at @s if entity @p[distance=...82] run function dv.rustics:obstructed/work_stump
    execute as @e[type=item_frame,tag=Zero_Crafting] at @s unless block ~ ~ ~ #dv.master:air run function dv.rustics:obstructed/work_stump

#Chopping Block
    execute as @e[type=item_frame,nbt={Tags:["Chopping_Block"]}] at @s align xyz positioned ~.5 ~.035 ~.5 if block ~ ~ ~ #dv.master:air unless entity @p[distance=...82] run function dv.rustics:place/chopping_block

#Work Stump
    execute as @e[type=item_frame,nbt={Tags:["Zero_Crafting"]}] at @s align xyz positioned ~.5 ~.035 ~.5 if block ~ ~ ~ #dv.master:air unless entity @p[distance=...82] run function dv.rustics:place/work_stump