particle block ice ~ ~ ~ 0 0 0 0.1 10
particle block snow ~ ~ ~ 0 0 0 0.1 10
particle note ~ ~ ~
execute as @e[tag=IcyBard,scores={ClickIB=1..}] run scoreboard players remove @s Mana 20
scoreboard players reset @a ClickIB
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ if entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run tag @e[type=!armor_stand,type=!item,type=!player,type=!item_frame] add Freezing
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function davinci:spells/action/icebolt
