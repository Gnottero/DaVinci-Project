# Adding Tags
tag @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b}}] add ST
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:4b}}] add LP
# Summoning Waystone
execute at @e[tag=ST] as @e[tag=LP,distance=..1] at @s run summon item ~ ~ ~ {Tags:["WaystoneItem"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10121212,display:{Name:"{\"text\":\"Waystone\"}",Lore:["{\"text\":\"Uses 5 Mana Points to create a waypoint.\"}","{\"text\":\"Uses 30 Mana Points to teleport to the waypoint\"}"]}}}}
# Killing crafting materials
execute as @e[tag=WaystoneItem] at @s run kill @e[tag=ST,distance=..2]
execute as @e[tag=WaystoneItem] at @s run kill @e[tag=LP,distance=..2]


