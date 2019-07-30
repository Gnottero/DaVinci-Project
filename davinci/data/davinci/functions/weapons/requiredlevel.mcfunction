# Level 15 Weapons

# Iron Sword
execute as @a[level=15..] run tag @s add ais
execute as @a[level=..14,tag=!ais,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect give @s slowness 1 5 true
execute as @a[level=..14,tag=!ais,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run effect give @s weakness 1 255 true
execute as @a[level=..14,tag=!ais,tag=!is,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tellraw @s {"text":"Your level is too low to lift this item","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"Required Level: 15"}}
execute as @a[level=..14,tag=!is,tag=!ais,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s add is
execute as @a[level=..14,tag=is,tag=!ais,nbt=!{SelectedItem:{id:"minecraft:iron_sword"}}] run tag @s remove is
execute as @e[level=..14] run tag @s remove ais

# Diamond Sword
execute as @a[level=30..] run tag @s add ads
execute as @a[level=..29,tag=!ads,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s slowness 1 5 true
execute as @a[level=..29,tag=!ads,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s weakness 1 255 true
execute as @a[level=..29,tag=!ads,tag=!ds,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tellraw @s {"text":"Your level is too low to lift this item","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"Required Level: 30"}}
execute as @a[level=..29,tag=!ds,tag=!ads,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add ds
execute as @a[level=..29,tag=ds,tag=!ads,nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s remove ds
execute as @e[level=..29] run tag @s remove ads