particle flame ~ ~ ~
particle lava ~ ~ ~
execute as @e[tag=Firebolt,scores={ClickFB=1..}] run scoreboard players remove @s Mana 10
scoreboard players reset @a ClickFB
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ if entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run data merge entity @e[type=!armor_stand,type=!item,type=!player,type=!item_frame,limit=1,sort=nearest] {Fire:23000s}
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ if entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run effect give @e[type=!armor_stand,type=!item,type=!player,type=!item_frame] minecraft:poison 3 1 true
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[distance=..0.75,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function davinci:spells/action/firebolt
