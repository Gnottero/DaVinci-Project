tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Lore:["{\"text\":\"Uses 5 Mana Points to create a waypoint.\"}","{\"text\":\"Uses 30 Mana Points to teleport to the waypoint\"}"]}}}}] add Waystone
execute as @e[scores={ClickWay=1,Mana=5..},tag=Waystone] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Glowing:1b,Small:1b,Invisible:1b,Tags:["Way"],CustomName:"{\"text\":\"Way\"}"}
scoreboard players remove @a[scores={ClickWay=1,Mana=5..},tag=Waystone] Mana 5
execute as @e[tag=Way] run scoreboard players set @a[scores={ClickWay=..1}] ClickWay 2
execute as @e[tag=Way] at @s run tp @a[scores={ClickWay=3},tag=Waystone] ~ ~ ~
scoreboard players remove @a[scores={ClickWay=3,Mana=10..},tag=Waystone] Mana 30
execute as @e[tag=Way] run scoreboard players set @a[scores={ClickWay=3}] ClickWay 2
execute as @a[tag=!Waystone] run scoreboard players set @s ClickWay 0
tag @a remove Waystone
