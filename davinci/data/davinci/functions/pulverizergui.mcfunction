# Blocked Slots (Pulverizer)

execute unless block ~ ~1 ~ barrel{Items:[{Slot:0b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper0"]}
execute as @e[tag=PulverizerDropper0] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:0b}]
replaceitem block ~ ~1 ~ container.0 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper0] run tp @s @p
tag @e remove PulverizerDropper0

execute unless block ~ ~1 ~ barrel{Items:[{Slot:1b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:1b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper1"]}
execute as @e[tag=PulverizerDropper1] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:1b}]
replaceitem block ~ ~1 ~ container.1 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper1] run tp @s @p
tag @e remove PulverizerDropper1

execute unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10505050}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10525252}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10535353}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10545454}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10555555}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10565656}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper2"]}
execute as @e[tag=PulverizerDropper2] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:2b}]
execute as @e[tag=Pulverizer,scores={Pulverizer=0}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10505050, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Pulverizer,scores={Pulverizer=1..39}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10525252, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Pulverizer,scores={Pulverizer=40..79}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10535353, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Pulverizer,scores={Pulverizer=80..119}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10545454, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Pulverizer,scores={Pulverizer=120..159}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10555555, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Pulverizer,scores={Pulverizer=160..200}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Pulverizer:1b},CustomModelData: 10565656, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper2] run tp @s @p
tag @e remove PulverizerDropper2

execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper3"]}
execute as @e[tag=PulverizerDropper3] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:3b}]
replaceitem block ~ ~1 ~ container.3 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper3] run tp @s @p
tag @e remove PulverizerDropper3

execute unless block ~ ~1 ~ barrel{Items:[{Slot:4b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:4b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper4"]}
execute as @e[tag=PulverizerDropper4] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:4b}]
replaceitem block ~ ~1 ~ container.4 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper4] run tp @s @p
tag @e remove PulverizerDropper4

execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper5"]}
execute as @e[tag=PulverizerDropper5] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:5b}]
replaceitem block ~ ~1 ~ container.5 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper5] run tp @s @p
tag @e remove PulverizerDropper5

execute unless block ~ ~1 ~ barrel{Items:[{Slot:6b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:6b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper6"]}
execute as @e[tag=PulverizerDropper6] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:6b}]
replaceitem block ~ ~1 ~ container.6 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper6] run tp @s @p
tag @e remove PulverizerDropper6

execute unless block ~ ~1 ~ barrel{Items:[{Slot:7b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:7b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper7"]}
execute as @e[tag=PulverizerDropper7] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:7b}]
replaceitem block ~ ~1 ~ container.7 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper7] run tp @s @p
tag @e remove PulverizerDropper7

execute unless block ~ ~1 ~ barrel{Items:[{Slot:8b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper8"]}
execute as @e[tag=PulverizerDropper8] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:8b}]
replaceitem block ~ ~1 ~ container.8 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper8] run tp @s @p
tag @e remove PulverizerDropper8

execute unless block ~ ~1 ~ barrel{Items:[{Slot:9b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:9b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper9"]}
execute as @e[tag=PulverizerDropper9] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:9b}]
replaceitem block ~ ~1 ~ container.9 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper9] run tp @s @p
tag @e remove PulverizerDropper9

execute unless block ~ ~1 ~ barrel{Items:[{Slot:10b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:10b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper10"]}
execute as @e[tag=PulverizerDropper10] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:10b}]
replaceitem block ~ ~1 ~ container.10 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper10] run tp @s @p
tag @e remove PulverizerDropper10

execute unless block ~ ~1 ~ barrel{Items:[{Slot:11b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:11b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper11"]}
execute as @e[tag=PulverizerDropper11] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:11b}]
replaceitem block ~ ~1 ~ container.11 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper11] run tp @s @p
tag @e remove PulverizerDropper11

execute unless block ~ ~1 ~ barrel{Items:[{Slot:12b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:12b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper12"]}
execute as @e[tag=PulverizerDropper12] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:12b}]
replaceitem block ~ ~1 ~ container.12 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper12] run tp @s @p
tag @e remove PulverizerDropper12

#skipped 13

execute unless block ~ ~1 ~ barrel{Items:[{Slot:14b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper14"]}
execute as @e[tag=PulverizerDropper14] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:14b}]
replaceitem block ~ ~1 ~ container.14 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper14] run tp @s @p
tag @e remove PulverizerDropper14

execute unless block ~ ~1 ~ barrel{Items:[{Slot:15b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:15b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper15"]}
execute as @e[tag=PulverizerDropper15] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:15b}]
replaceitem block ~ ~1 ~ container.15 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper15] run tp @s @p
tag @e remove PulverizerDropper15

execute unless block ~ ~1 ~ barrel{Items:[{Slot:16b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:16b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper16"]}
execute as @e[tag=PulverizerDropper16] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:16b}]
replaceitem block ~ ~1 ~ container.16 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper16] run tp @s @p
tag @e remove PulverizerDropper16

execute unless block ~ ~1 ~ barrel{Items:[{Slot:17b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:17b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper17"]}
execute as @e[tag=PulverizerDropper17] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:17b}]
replaceitem block ~ ~1 ~ container.17 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper17] run tp @s @p
tag @e remove PulverizerDropper17

execute unless block ~ ~1 ~ barrel{Items:[{Slot:18b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper18"]}
execute as @e[tag=PulverizerDropper18] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:18b}]
replaceitem block ~ ~1 ~ container.18 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper18] run tp @s @p
tag @e remove PulverizerDropper18

execute unless block ~ ~1 ~ barrel{Items:[{Slot:19b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:19b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper19"]}
execute as @e[tag=PulverizerDropper19] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:19b}]
replaceitem block ~ ~1 ~ container.19 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper19] run tp @s @p
tag @e remove PulverizerDropper19

execute unless block ~ ~1 ~ barrel{Items:[{Slot:20b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:20b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper20"]}
execute as @e[tag=PulverizerDropper20] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:20b}]
replaceitem block ~ ~1 ~ container.20 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper20] run tp @s @p
tag @e remove PulverizerDropper20

execute unless block ~ ~1 ~ barrel{Items:[{Slot:21b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:21b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper21"]}
execute as @e[tag=PulverizerDropper21] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:21b}]
replaceitem block ~ ~1 ~ container.21 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper21] run tp @s @p
tag @e remove PulverizerDropper21

execute unless block ~ ~1 ~ barrel{Items:[{Slot:22b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper22"]}
execute as @e[tag=PulverizerDropper22] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:22b}]
replaceitem block ~ ~1 ~ container.22 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper22] run tp @s @p
tag @e remove PulverizerDropper22

execute unless block ~ ~1 ~ barrel{Items:[{Slot:23b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:23b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper23"]}
execute as @e[tag=PulverizerDropper23] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:23b}]
replaceitem block ~ ~1 ~ container.23 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper23] run tp @s @p
tag @e remove PulverizerDropper23

execute unless block ~ ~1 ~ barrel{Items:[{Slot:24b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:24b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper24"]}
execute as @e[tag=PulverizerDropper24] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:24b}]
replaceitem block ~ ~1 ~ container.24 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper24] run tp @s @p
tag @e remove PulverizerDropper24

execute unless block ~ ~1 ~ barrel{Items:[{Slot:25b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:25b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper25"]}
execute as @e[tag=PulverizerDropper25] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:25b}]
replaceitem block ~ ~1 ~ container.25 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper25] run tp @s @p
tag @e remove PulverizerDropper25

execute unless block ~ ~1 ~ barrel{Items:[{Slot:26b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["PulverizerDropper26"]}
execute as @e[tag=PulverizerDropper26] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:26b}]
replaceitem block ~ ~1 ~ container.26 barrier{tag:{Pulverizer:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=PulverizerDropper26] run tp @s @p
tag @e remove PulverizerDropper26

# Pulverizer GUI
execute as @e[tag=Pulverizer] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:iron_ore",Count:1}]} run scoreboard players add @s Pulverizer 0
execute as @e[tag=Pulverizer] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:gold_ore",Count:1}]} run scoreboard players add @s Pulverizer 0

# GUI Updates (Pulverizer)
execute as @e[tag=Pulverizer,scores={Pulverizer=1..200}] at @s unless block ~ ~1 ~ barrel{Items:[{Slot:13b}]} run scoreboard players set @s Pulverizer 0