execute as @e[tag=Atom] at @s unless data block ~ ~1 ~ Items.[{Slot:15b}] if block ~ ~1 ~ barrel{Items:[{Slot: 2b, id: "minecraft:redstone", Count: 1b}, {Slot: 3b, id: "minecraft:stone", Count: 1b}, {Slot: 4b, id: "minecraft:redstone", Count: 1b},{Slot: 11b, id: "minecraft:stone", Count: 1b}, {Slot: 12b, id: "minecraft:redstone_torch", Count: 1b}, {Slot: 13b, id: "minecraft:stone", Count: 1b},{Slot: 20b, id: "minecraft:redstone", Count: 1b}, {Slot: 21b, id: "minecraft:stone", Count: 1b}, {Slot: 22b, id: "minecraft:redstone", Count: 1b}]} run tag @s add Red
execute as @e[tag=Atom,tag=Red] at @s run replaceitem block ~ ~1 ~ container.15 item_frame{CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.2 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.3 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.4 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.11 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.12 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.13 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.20 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.21 air
execute as @e[tag=Atom,tag=Red] at @s if block ~ ~1 ~ barrel{Items:[{Slot: 15b, id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10333333, display: {Name: '{"text":"Redstone Clock","color":"red","bold":"true"}'}, EntityTag: {Tags: ["Red"]}}}]} run replaceitem block ~ ~1 ~ container.22 air
execute as @e[tag=Atom,tag=Red] run tag @s remove Red
