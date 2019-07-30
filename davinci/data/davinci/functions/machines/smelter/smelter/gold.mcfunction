execute as @e[tag=Smelter] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 3b, id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 10292929, display: {Name: '{"text":"Gold Dust","color":"gold","bold":"true"}'}}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:22b}]} run tag @s add Gold
execute as @e[tag=Smelter,tag=Gold] run scoreboard players add @s Smelter 1
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.3 air
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.3 diamond_hoe{CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.4 diamond_hoe{CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.5 diamond_hoe{CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run loot insert ~ ~1 ~ loot davinci:custom/smeltergold
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.3 air
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] at @s run replaceitem block ~ ~1 ~ container.5 air
execute as @e[tag=Smelter,tag=Gold,scores={Smelter=270..}] run tag @s remove Gold
execute as @e[tag=Smelter,scores={Smelter=270..}] run scoreboard players set @s Smelter 0

execute as @e[tag=Smelter,tag=Gold,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:3b}]} run tag @s remove Gold
execute as @e[tag=Smelter,scores={Smelter=1..270}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:3b}]} run scoreboard players set @s Smelter 0
