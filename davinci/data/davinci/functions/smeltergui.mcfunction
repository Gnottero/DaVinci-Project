# Blocked Slots (Smelter)

execute unless block ~ ~1 ~ barrel{Items:[{Slot:0b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper0"]}
execute as @e[tag=SmelterDropper0] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:0b}]
replaceitem block ~ ~1 ~ container.0 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper0] run tp @s @p
tag @e remove SmelterDropper0

execute unless block ~ ~1 ~ barrel{Items:[{Slot:1b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:1b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper1"]}
execute as @e[tag=SmelterDropper1] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:1b}]
replaceitem block ~ ~1 ~ container.1 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper1] run tp @s @p
tag @e remove SmelterDropper1

execute unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10585858}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10595959}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10606060}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10616161}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10626262}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10636363}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10646464}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10656565}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10666666}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10676767}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper2"]}

execute as @e[tag=SmelterDropper2] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:2b}]
execute as @e[tag=Smelter,scores={Smelter=0}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10585858, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=1..29}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10595959, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=30..59}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10606060, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=60..89}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10616161, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=90..119}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10626262, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=120..149}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10636363, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=150..179}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10646464, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=180..209}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10656565, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=210..239}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10666666, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=Smelter,scores={Smelter=240..269}] at @s run replaceitem block ~ ~1 ~ container.2 barrier{tag:{Smelter:1b},CustomModelData: 10676767, HideFlags: 2, display: {Name: '{"text":" "}'}}

execute as @e[tag=SmelterDropper2] run tp @s @p
tag @e remove SmelterDropper2

execute unless block ~ ~1 ~ barrel{Items:[{Slot:6b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:6b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper6"]}
execute as @e[tag=SmelterDropper6] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:6b}]
replaceitem block ~ ~1 ~ container.6 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper6] run tp @s @p
tag @e remove SmelterDropper6

execute unless block ~ ~1 ~ barrel{Items:[{Slot:7b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:7b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper7"]}
execute as @e[tag=SmelterDropper7] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:7b}]
replaceitem block ~ ~1 ~ container.7 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper7] run tp @s @p
tag @e remove SmelterDropper7

execute unless block ~ ~1 ~ barrel{Items:[{Slot:8b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper8"]}
execute as @e[tag=SmelterDropper8] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:8b}]
replaceitem block ~ ~1 ~ container.8 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper8] run tp @s @p
tag @e remove SmelterDropper8

execute unless block ~ ~1 ~ barrel{Items:[{Slot:9b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:9b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper9"]}
execute as @e[tag=SmelterDropper9] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:9b}]
replaceitem block ~ ~1 ~ container.9 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper9] run tp @s @p
tag @e remove SmelterDropper9

execute unless block ~ ~1 ~ barrel{Items:[{Slot:10b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:10b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper10"]}
execute as @e[tag=SmelterDropper10] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:10b}]
replaceitem block ~ ~1 ~ container.10 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper10] run tp @s @p
tag @e remove SmelterDropper10

execute unless block ~ ~1 ~ barrel{Items:[{Slot:11b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:11b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper11"]}
execute as @e[tag=SmelterDropper11] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:11b}]
replaceitem block ~ ~1 ~ container.11 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper11] run tp @s @p
tag @e remove SmelterDropper11

execute unless block ~ ~1 ~ barrel{Items:[{Slot:12b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:12b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper12"]}
execute as @e[tag=SmelterDropper12] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:12b}]
replaceitem block ~ ~1 ~ container.12 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper12] run tp @s @p
tag @e remove SmelterDropper12

execute unless block ~ ~1 ~ barrel{Items:[{Slot:13b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper13"]}
execute as @e[tag=SmelterDropper13] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:13b}]
replaceitem block ~ ~1 ~ container.13 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper13] run tp @s @p
tag @e remove SmelterDropper13

execute unless block ~ ~1 ~ barrel{Items:[{Slot:14b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper14"]}
execute as @e[tag=SmelterDropper14] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:14b}]
replaceitem block ~ ~1 ~ container.14 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper14] run tp @s @p
tag @e remove SmelterDropper14

execute unless block ~ ~1 ~ barrel{Items:[{Slot:15b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:15b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper15"]}
execute as @e[tag=SmelterDropper15] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:15b}]
replaceitem block ~ ~1 ~ container.15 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper15] run tp @s @p
tag @e remove SmelterDropper15

execute unless block ~ ~1 ~ barrel{Items:[{Slot:16b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:16b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper16"]}
execute as @e[tag=SmelterDropper16] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:16b}]
replaceitem block ~ ~1 ~ container.16 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper16] run tp @s @p
tag @e remove SmelterDropper16

execute unless block ~ ~1 ~ barrel{Items:[{Slot:17b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:17b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper17"]}
execute as @e[tag=SmelterDropper17] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:17b}]
replaceitem block ~ ~1 ~ container.17 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper17] run tp @s @p
tag @e remove SmelterDropper17

execute unless block ~ ~1 ~ barrel{Items:[{Slot:18b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper18"]}
execute as @e[tag=SmelterDropper18] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:18b}]
replaceitem block ~ ~1 ~ container.18 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper18] run tp @s @p
tag @e remove SmelterDropper18

execute unless block ~ ~1 ~ barrel{Items:[{Slot:19b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:19b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper19"]}
execute as @e[tag=SmelterDropper19] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:19b}]
replaceitem block ~ ~1 ~ container.19 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper19] run tp @s @p
tag @e remove SmelterDropper19

execute unless block ~ ~1 ~ barrel{Items:[{Slot:20b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:20b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper20"]}
execute as @e[tag=SmelterDropper20] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:20b}]
replaceitem block ~ ~1 ~ container.20 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper20] run tp @s @p
tag @e remove SmelterDropper20

execute unless block ~ ~1 ~ barrel{Items:[{Slot:21b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:21b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper21"]}
execute as @e[tag=SmelterDropper21] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:21b}]
replaceitem block ~ ~1 ~ container.21 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper21] run tp @s @p
tag @e remove SmelterDropper21

execute unless block ~ ~1 ~ barrel{Items:[{Slot:23b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:23b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper23"]}
execute as @e[tag=SmelterDropper23] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:23b}]
replaceitem block ~ ~1 ~ container.23 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper23] run tp @s @p
tag @e remove SmelterDropper23

execute unless block ~ ~1 ~ barrel{Items:[{Slot:24b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:24b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper24"]}
execute as @e[tag=SmelterDropper24] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:24b}]
replaceitem block ~ ~1 ~ container.24 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper24] run tp @s @p
tag @e remove SmelterDropper24

execute unless block ~ ~1 ~ barrel{Items:[{Slot:25b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:25b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper25"]}
execute as @e[tag=SmelterDropper25] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:25b}]
replaceitem block ~ ~1 ~ container.25 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper25] run tp @s @p
tag @e remove SmelterDropper25

execute unless block ~ ~1 ~ barrel{Items:[{Slot:26b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["SmelterDropper26"]}
execute as @e[tag=SmelterDropper26] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:26b}]
replaceitem block ~ ~1 ~ container.26 barrier{tag:{Smelter:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=SmelterDropper26] run tp @s @p
tag @e remove SmelterDropper26
