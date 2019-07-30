scoreboard players add @e[tag=Collector] Ngen 1
execute as @e[tag=Collector,scores={Ngen=7200..}] at @s run data merge block ~ ~1 ~ {Items:[{Slot:4b,id:"minecraft:iron_ingot", Count:1b,tag:{CustomModelData:10171717,display:{Name:"{\"text\":\"Pile of Neutrons\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}}}]}
execute as @e[tag=Collector,scores={Ngen=7200..}] run scoreboard players reset @s Ngen
