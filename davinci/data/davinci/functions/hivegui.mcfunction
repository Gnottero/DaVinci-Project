# Blocked Slots (Hive)

execute unless block ~ ~1 ~ barrel{Items:[{Slot:0b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:0b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10575757}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper0"]}
execute as @e[tag=HiveDropper0] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:0b}]
replaceitem block ~ ~1 ~ container.0 barrier{tag:{Hive:1b},CustomModelData: 10575757, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper0] run tp @s @p
tag @e remove HiveDropper0

execute unless block ~ ~1 ~ barrel{Items:[{Slot:1b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:1b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper1"]}
execute as @e[tag=HiveDropper1] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:1b}]
replaceitem block ~ ~1 ~ container.1 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper1] run tp @s @p
tag @e remove HiveDropper1

execute unless block ~ ~1 ~ barrel{Items:[{Slot:2b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper2"]}
execute as @e[tag=HiveDropper2] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:2b}]
replaceitem block ~ ~1 ~ container.2 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper2] run tp @s @p
tag @e remove HiveDropper2

execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper3"]}
execute as @e[tag=HiveDropper3] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:3b}]
replaceitem block ~ ~1 ~ container.3 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper3] run tp @s @p
tag @e remove HiveDropper3

execute unless block ~ ~1 ~ barrel{Items:[{Slot:4b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:4b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper4"]}
execute as @e[tag=HiveDropper4] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:4b}]
replaceitem block ~ ~1 ~ container.4 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper4] run tp @s @p
tag @e remove HiveDropper4

execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper5"]}
execute as @e[tag=HiveDropper5] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:5b}]
replaceitem block ~ ~1 ~ container.5 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper5] run tp @s @p
tag @e remove HiveDropper5

execute unless block ~ ~1 ~ barrel{Items:[{Slot:6b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:6b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper6"]}
execute as @e[tag=HiveDropper6] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:6b}]
replaceitem block ~ ~1 ~ container.6 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper6] run tp @s @p
tag @e remove HiveDropper6

execute unless block ~ ~1 ~ barrel{Items:[{Slot:7b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:7b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper7"]}
execute as @e[tag=HiveDropper7] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:7b}]
replaceitem block ~ ~1 ~ container.7 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper7] run tp @s @p
tag @e remove HiveDropper7

execute unless block ~ ~1 ~ barrel{Items:[{Slot:8b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:8b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper8"]}
execute as @e[tag=HiveDropper8] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:8b}]
replaceitem block ~ ~1 ~ container.8 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper8] run tp @s @p
tag @e remove HiveDropper8

execute unless block ~ ~1 ~ barrel{Items:[{Slot:9b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:9b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper9"]}
execute as @e[tag=HiveDropper9] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:9b}]
replaceitem block ~ ~1 ~ container.9 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper9] run tp @s @p
tag @e remove HiveDropper9

execute unless block ~ ~1 ~ barrel{Items:[{Slot:10b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:10b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper10"]}
execute as @e[tag=HiveDropper10] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:10b}]
replaceitem block ~ ~1 ~ container.10 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper10] run tp @s @p
tag @e remove HiveDropper10

execute unless block ~ ~1 ~ barrel{Items:[{Slot:12b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:12b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper12"]}
execute as @e[tag=HiveDropper12] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:12b}]
replaceitem block ~ ~1 ~ container.12 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper12] run tp @s @p
tag @e remove HiveDropper12

execute unless block ~ ~1 ~ barrel{Items:[{Slot:13b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper13"]}
execute as @e[tag=HiveDropper13] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:13b}]
replaceitem block ~ ~1 ~ container.13 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper13] run tp @s @p
tag @e remove HiveDropper13

execute unless block ~ ~1 ~ barrel{Items:[{Slot:14b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper14"]}
execute as @e[tag=HiveDropper14] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:14b}]
replaceitem block ~ ~1 ~ container.14 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper14] run tp @s @p
tag @e remove HiveDropper14

execute unless block ~ ~1 ~ barrel{Items:[{Slot:16b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:16b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper16"]}
execute as @e[tag=HiveDropper16] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:16b}]
replaceitem block ~ ~1 ~ container.16 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper16] run tp @s @p
tag @e remove HiveDropper16

execute unless block ~ ~1 ~ barrel{Items:[{Slot:17b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:17b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper17"]}
execute as @e[tag=HiveDropper17] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:17b}]
replaceitem block ~ ~1 ~ container.17 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper17] run tp @s @p
tag @e remove HiveDropper17

execute unless block ~ ~1 ~ barrel{Items:[{Slot:18b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:18b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper18"]}
execute as @e[tag=HiveDropper18] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:18b}]
replaceitem block ~ ~1 ~ container.18 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper18] run tp @s @p
tag @e remove HiveDropper18

execute unless block ~ ~1 ~ barrel{Items:[{Slot:19b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:19b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper19"]}
execute as @e[tag=HiveDropper19] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:19b}]
replaceitem block ~ ~1 ~ container.19 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper19] run tp @s @p
tag @e remove HiveDropper19

execute unless block ~ ~1 ~ barrel{Items:[{Slot:20b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:20b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper20"]}
execute as @e[tag=HiveDropper20] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:20b}]
replaceitem block ~ ~1 ~ container.20 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper20] run tp @s @p
tag @e remove HiveDropper20

execute unless block ~ ~1 ~ barrel{Items:[{Slot:21b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:21b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper21"]}
execute as @e[tag=HiveDropper21] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:21b}]
replaceitem block ~ ~1 ~ container.21 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper21] run tp @s @p
tag @e remove HiveDropper21

execute unless block ~ ~1 ~ barrel{Items:[{Slot:22b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper22"]}
execute as @e[tag=HiveDropper22] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:22b}]
replaceitem block ~ ~1 ~ container.22 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper22] run tp @s @p
tag @e remove HiveDropper22

execute unless block ~ ~1 ~ barrel{Items:[{Slot:23b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:23b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper23"]}
execute as @e[tag=HiveDropper23] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:23b}]
replaceitem block ~ ~1 ~ container.23 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper23] run tp @s @p
tag @e remove HiveDropper23

execute unless block ~ ~1 ~ barrel{Items:[{Slot:24b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:24b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper24"]}
execute as @e[tag=HiveDropper24] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:24b}]
replaceitem block ~ ~1 ~ container.24 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper24] run tp @s @p
tag @e remove HiveDropper24

execute unless block ~ ~1 ~ barrel{Items:[{Slot:25b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:25b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper25"]}
execute as @e[tag=HiveDropper25] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:25b}]
replaceitem block ~ ~1 ~ container.25 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper25] run tp @s @p
tag @e remove HiveDropper25

execute unless block ~ ~1 ~ barrel{Items:[{Slot:26b,Count:0b}]} unless block ~ ~1 ~ barrel{Items:[{Slot:26b,id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}}]} run summon item ~ ~2 ~ {PickupDelay:0,Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10515151}},Tags:["HiveDropper26"]}
execute as @e[tag=HiveDropper26] at @s run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:26b}]
replaceitem block ~ ~1 ~ container.26 barrier{tag:{Hive:1b},CustomModelData: 10515151, HideFlags: 2, display: {Name: '{"text":" "}'}}
execute as @e[tag=HiveDropper26] run tp @s @p
tag @e remove HiveDropper26
