#Removing Chopping Block
    execute as @e[type=armor_stand,tag=Chopping_Block] at @s unless block ~ ~ ~ oak_slab run function dv.rustics:remove/blocks/chopping_block

#Removing Chopping Block
    execute as @e[type=armor_stand,tag=Zero_Crafting] at @s unless block ~ ~ ~ chest run function dv.rustics:remove/blocks/work_stump

#Removing the fire stick if it was used once by the player
    execute as @e[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick",Count:1b,tag:{FireStick:1b}}],SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{FireStick:1b,Check:1b,Damage:1}}}] run function dv.rustics:remove/items/firestick