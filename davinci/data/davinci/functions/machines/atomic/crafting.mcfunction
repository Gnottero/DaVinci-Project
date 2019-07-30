execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run tag @s add Atomic
execute as @e[tag=Atomic] run clear @s knowledge_book
execute as @e[tag=Atomic] run give @s item_frame{CustomModelData: 10181818, display: {Name: "{\"text\":\"Atomic Crafting Table\",\"color\":\"dark_purple\",\"bold\":\"true\"}"},EntityTag:{Tags:["atomicplacer"]}}
execute as @e[tag=Atomic] run tag @s remove Atomic
