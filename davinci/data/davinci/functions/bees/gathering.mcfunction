execute as @e[tag=Hive] at @s if block ~ ~1 ~ barrel{Items:[{Slot:11b,Count:1b,id:"minecraft:sugar"}]} run tag @s add Gathering
execute as @e[tag=Gathering] at @s run replaceitem block ~ ~1 ~ container.11 air
execute as @e[tag=Gathering] run scoreboard players add @s BGathering 1
execute as @e[tag=Gathering,scores={BGathering=6000}] at @s run replaceitem block ~ ~1 ~ container.15 minecraft:iron_ingot{CustomModelData:10525252,display:{Name:'{"text":"Basic Bee"}'}} 2
execute as @e[tag=Gathering,scores={BGathering=6000..}] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:iron_ingot", Count: 2b, tag: {CustomModelData:10525252,display: {Name: '{"text":"Basic Bee"}'}}}]} run tag @s remove Gathering
execute as @e[tag=Hive,scores={BGathering=6000..}] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:iron_ingot", Count: 2b, tag: {CustomModelData:10525252,display: {Name: '{"text":"Basic Bee"}'}}}]} run scoreboard players reset @s BGathering