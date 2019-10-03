#Generates energy when a player put at least one piece of coal into the Generator
    execute if score @s dv.energybackup matches 0 store result score @s dv.used_item run data get block ~ ~ ~ Items.[{Slot:13b}].Count
    execute if score @s dv.energybackup matches 0 store result block ~ ~ ~ Items.[{Slot:13b}].Count byte 1 run scoreboard players remove @s dv.used_item 1
    execute unless score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players add @s dv.energybackup 1
    execute if score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players operation @s DV.Energy += @s dv.energybackup
    execute if score @s dv.energybackup = $Energy dv.generator_1 run tag @s remove tag.temp
    execute if score @s dv.energybackup = $Energy dv.generator_1 run scoreboard players set @s dv.energybackup 0