execute as @e[type=item_frame,nbt={Tags:["Belt"]}] at @s run summon minecraft:item_frame ~ ~ ~ {Tags:["PlacerBelt"]}
execute as @e[tag=PlacerBelt] run kill @e[type=item_frame,nbt={Tags:["Belt"]}]
execute as @e[tag=PlacerBelt] at @s run setblock ~ ~ ~ black_carpet
execute if entity @p[y_rotation=-316..-226] run execute as @e[tag=PlacerBelt] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Belt","West"],Rotation:[-90f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10303030}}]}
execute if entity @p[y_rotation=-407..-317] run execute as @e[tag=PlacerBelt] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Belt","South"],Rotation:[-180f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10303030}}]}
execute if entity @p[y_rotation=-498..-408] run execute as @e[tag=PlacerBelt] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Belt","East"],Rotation:[-270f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10303030}}]}
execute if entity @p[y_rotation=-225..-135] run execute as @e[tag=PlacerBelt] at @s run summon armor_stand ~ ~-1 ~ {Fire:23000s,Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,Tags:["Belt","North"],Rotation:[-360f],ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10303030}}]}
execute as @e[tag=Belt] run kill @e[tag=PlacerBelt]

execute as @e[tag=Belt,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}

execute as @e[tag=South,tag=Belt] at @s run data merge entity @e[type=!minecraft:armor_stand,distance=0..0.7,limit=1] {Motion:[0.0,0.0,0.1]}
execute as @e[tag=North,tag=Belt] at @s run data merge entity @e[type=!minecraft:armor_stand,distance=0..0.7,limit=1] {Motion:[0.0,0.0,-0.1]}
execute as @e[tag=West,tag=Belt] at @s run data merge entity @e[type=!minecraft:armor_stand,distance=0..0.7,limit=1] {Motion:[-0.1,0.0,0.0]}
execute as @e[tag=East,tag=Belt] at @s run data merge entity @e[type=!minecraft:armor_stand,distance=0..0.7,limit=1] {Motion:[0.1,0.0,0.0]}

execute as @e[tag=Belt,tag=West] at @s if block ~-1 ~2 ~ black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10313131}}]}
execute as @e[tag=Belt,tag=West] at @s if block ~-1 ~2 ~ black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~-1 ~1.2 ~

execute as @e[tag=Belt,tag=East] at @s if block ~1 ~2 ~ black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10313131}}]}
execute as @e[tag=Belt,tag=East] at @s if block ~1 ~2 ~ black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~1 ~1.2 ~

execute as @e[tag=Belt,tag=South] at @s if block ~ ~2 ~1 black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10313131}}]}
execute as @e[tag=Belt,tag=South] at @s if block ~ ~2 ~1 black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~ ~1.2 ~1

execute as @e[tag=Belt,tag=North] at @s if block ~ ~2 ~-1 black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10313131}}]}
execute as @e[tag=Belt,tag=North] at @s if block ~ ~2 ~-1 black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~ ~1.2 ~-1

# Belt Down

execute as @e[tag=Belt,tag=West] at @s if block ~1 ~2 ~ black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10404040}}]}
execute as @e[tag=Belt,tag=West] at @s if block ~1 ~2 ~ black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~-1 ~1 ~

execute as @e[tag=Belt,tag=East] at @s if block ~-1 ~2 ~ black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10404040}}]}
execute as @e[tag=Belt,tag=East] at @s if block ~-1 ~2 ~ black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~1 ~1 ~

execute as @e[tag=Belt,tag=South] at @s if block ~ ~2 ~-1 black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10404040}}]}
execute as @e[tag=Belt,tag=South] at @s if block ~ ~2 ~-1 black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~ ~1 ~1

execute as @e[tag=Belt,tag=North] at @s if block ~ ~2 ~1 black_carpet run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10404040}}]}
execute as @e[tag=Belt,tag=North] at @s if block ~ ~2 ~1 black_carpet run tp @e[type=!armor_stand,type=!player,distance=0..0.7] ~ ~1 ~-1

execute as @e[tag=Belt] at @s if block ~ ~1 ~ air run summon item ~ ~ ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 10303030, display: {Name: "{\"text\":\"Conveyor Belt\",\"color\":\"dark_gray\",\"bold\":\"true\"}"}, EntityTag: {Tags: ["Belt"]}}}}
execute as @e[tag=Belt] at @s if block ~ ~1 ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:black_carpet",Count:1b}},distance=..2]
execute as @e[tag=Belt] at @s if block ~ ~1 ~ air run kill @s
