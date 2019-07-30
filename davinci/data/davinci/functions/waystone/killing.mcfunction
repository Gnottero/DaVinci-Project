tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Lore:["{\"text\":\"Uses 5 Mana Points to create a waypoint.\"}","{\"text\":\"Uses 30 Mana Points to teleport to the waypoint\"}"]}}}}] add WaystoneItem
execute as @e[tag=WaystoneItem] run scoreboard players reset @a ClickWay
execute as @e[tag=WaystoneItem] at @s run tag @e[tag=Way,distance=..2] add Waykiller
execute as @e[tag=Waykiller] at @s run kill @e[tag=WaystoneItem,distance=..2]
execute as @e[tag=Waykiller] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10121212,display:{Name:"{\"text\":\"Waystone\"}",Lore:["{\"text\":\"Uses 5 Mana Points to create a waypoint.\"}","{\"text\":\"Uses 30 Mana Points to teleport to the waypoint\"}"]}}}}
execute as @e[tag=Waykiller] run kill @s

