execute as @e[tag=Smelter] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 3b, id: "minecraft:gunpowder", Count: 1b, tag: {CustomModelData: 10484848, display: {Name: '{"text":"Mana Dust","color":"aqua","bold":"true"}'}}}, {Slot: 4b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 5b, id: "minecraft:gunpowder", Count: 1b, tag: {CustomModelData: 10484848, display: {Name: '{"text":"Mana Dust","color":"aqua","bold":"true"}'}}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:22b}]} run tag @s add ManaSteel
execute as @e[tag=Smelter,tag=ManaSteel] run scoreboard players add @s Smelter 1
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=270..}] at @s run loot insert ~ ~1 ~ loot davinci:custom/manasteel
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.3 air
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.5 air
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=270..}] run tag @s remove ManaSteel
execute as @e[tag=Smelter,scores={Smelter=270..}] run scoreboard players set @s Smelter 0

execute as @e[tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:3b}]} run scoreboard players set @s Smelter 0
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:3b}]} run tag @s remove ManaSteel
execute as @e[tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:4b}]} run scoreboard players set @s Smelter 0
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:4b}]} run tag @s remove ManaSteel
execute as @e[tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:5b}]} run scoreboard players set @s Smelter 0
execute as @e[tag=Smelter,tag=ManaSteel,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:5b}]} run tag @s remove ManaSteel