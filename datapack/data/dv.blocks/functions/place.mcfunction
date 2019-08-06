#Whitelist regular item frames
	execute as @e[type=item_frame,tag=!item_frame,tag=!copper_ore] run tag @s add sound.itemframe.place
	execute as @e[type=item_frame,tag=sound.itemframe.place] run tag @s add item_frame

#Place blocks
	#Copper Ore
	execute as @e[tag=copper_ore] at @s if block ~ ~ ~ air unless entity @a[distance=...82] run setblock ~ ~ ~ spawner{SpawnCount:0,SpawnRange:0,Delay:0,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"armor_stand",CustomName:"{\"text\":\"Copper Ore\",\"italic\":false}",EntityTag:{Tags:["copper_ore","sound.stone.place"]},Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"item_frame",Count:1b,tag:{CustomModelData:1001}}]}}

#Play place sounds
	#Item Frame
	execute as @e[tag=sound.itemframe.place] at @s run playsound davinci.itemframe.place block @a[distance=..15] ~ ~ ~ 1 1
	#Stone
	execute as @e[tag=sound.stone.place] at @s unless entity @a[distance=...8] run playsound block.stone.place block @a[distance=..15] ~ ~ ~ 1 1

#Removes dummy item frames
kill @e[type=item_frame,tag=!item_frame]
execute as @e[type=item_frame,tag=sound.itemframe.place] run tag @s remove sound.itemframe.place
