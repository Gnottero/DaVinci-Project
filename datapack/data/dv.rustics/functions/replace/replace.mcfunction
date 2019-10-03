#Replacing petrified oak slab
    execute as @a[nbt={Inventory:[{id:"minecraft:petrified_oak_slab"}]}] run function dv.rustics:replace/items/chopping_block
#Replacing petrified oak slab
    execute as @a[nbt={Inventory:[{id:"minecraft:structure_void"}]}] run function dv.rustics:replace/items/twine
#Replacing petrified oak slab
    execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]}] run function dv.rustics:replace/items/grass_mesh
#Replacing petrified oak slab
    execute as @a[nbt={Inventory:[{id:"minecraft:vex_spawn_egg"}]}] run function dv.rustics:replace/items/work_stump
#Replacing the stick with a flint and steel if the player is holding two fire sticks (Mainhand and Offhand)
    execute as @a if data entity @s SelectedItem{id:"minecraft:stick",Count:1b,tag:{FireStick:1b}} if data entity @s Inventory[{Slot:-106b,id:"minecraft:stick",Count:1b,tag:{FireStick:1b}}] run replaceitem entity @s weapon.mainhand minecraft:flint_and_steel{FireStick:1b,Check:1b,CustomModelData:1000,display:{Name:'{"text":"Fire Stick","italic":false}'}}
#Replacing the Flint and steel with a fire stick if not held in the main hand
    execute as @a[nbt={Inventory:[{id:"minecraft:flint_and_steel",Count:1b,tag:{FireStick:1b,Check:1b,CustomModelData:1000}}]},nbt=!{SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{FireStick:1b,Check:1b}}}] run function dv.rustics:replace/items/firestick

