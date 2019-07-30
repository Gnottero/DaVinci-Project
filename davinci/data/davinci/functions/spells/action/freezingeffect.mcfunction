execute as @e[tag=Freezing] at @s run particle item ice ~ ~1 ~ 0 0 0 0.1 1 force
execute as @e[tag=Freezing] at @s run particle block snow ~ ~1 ~ 0 0 0 0.1 1 force
execute as @e[tag=Freezing] at @s run particle block water ~ ~1 ~ 0 0 0 0.1 1 force

execute as @e[tag=Freezing,scores={Freezing=1..600}] run effect give @s minecraft:slowness 1 20 true
execute as @e[tag=Freezing,scores={Freezing=1..600}] run effect give @s minecraft:jump_boost 1 128 true

execute as @e[tag=Freezing] run scoreboard players add @s Freezing 1
execute as @e[tag=Freezing,scores={Freezing=600}] run scoreboard players set @s Freezing 0
execute as @e[tag=Freezing] if score @s Freezing matches 0 run tag @s remove Freezing
