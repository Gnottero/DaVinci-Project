# Checking Boss Time
execute as @e[nbt={ArmorItems: [{id: "minecraft:golden_boots", Count: 1b}, {id: "minecraft:golden_leggings", Count: 1b}, {id: "minecraft:golden_chestplate", Count: 1b}, {id: "minecraft:golden_helmet", Count: 1b}]}] run tag @s add GoldArmored
execute as @e[tag=GoldArmored] store result score @e[tag=GoldArmored] Day run time query daytime
# End Checking Boss Time

# Summoning Circle
execute as @e[scores={Day=12999},nbt={ArmorItems: [{id: "minecraft:golden_boots", Count: 1b}, {id: "minecraft:golden_leggings", Count: 1b}, {id: "minecraft:golden_chestplate", Count: 1b}, {id: "minecraft:golden_helmet", Count: 1b}]}] run tag @s add SunSummoner
execute as @e[tag=SunSummoner] at @s if block ~1 ~ ~1 yellow_carpet if block ~-1 ~ ~1 yellow_carpet if block ~-1 ~ ~-1 yellow_carpet if block ~1 ~ ~-1 yellow_carpet if block ~ ~-1 ~ yellow_concrete if block ~ ~-1 ~1 minecraft:smooth_sandstone_stairs[facing=north] if block ~ ~-1 ~2 minecraft:smooth_sandstone_stairs[facing=south] if block ~ ~-1 ~-1 minecraft:smooth_sandstone_stairs[facing=south] if block ~ ~-1 ~-2 minecraft:smooth_sandstone_stairs[facing=north] if block ~-1 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=east] if block ~-2 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=west] if block ~1 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=west] if block ~2 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=east] if block ~1 ~-1 ~1 yellow_concrete if block ~-1 ~-1 ~1 yellow_concrete if block ~-1 ~-1 ~-1 yellow_concrete if block ~1 ~-1 ~-1 yellow_concrete if block ~-1 ~-1 ~2 smooth_red_sandstone_stairs[facing=north] if block ~-2 ~-1 ~1 smooth_red_sandstone_stairs[facing=east] if block ~1 ~-1 ~-2 smooth_red_sandstone_stairs[facing=south] if block ~2 ~-1 ~-1 smooth_red_sandstone_stairs[facing=west] if block ~1 ~-1 ~2 smooth_red_sandstone_stairs[facing=north] if block ~2 ~-1 ~1 smooth_red_sandstone_stairs[facing=west] if block ~-1 ~-1 ~-2 smooth_red_sandstone_stairs[facing=south] if block ~-2 ~-1 ~-1 smooth_red_sandstone_stairs[facing=east] run summon minecraft:armor_stand ~ ~ ~ {Tags:["Circle"],Invisible:1b}
# End Summoning Circle

# Summoning Spiral
execute as @e[tag=SunSummoner] at @s if block ~1 ~ ~1 yellow_carpet if block ~-1 ~ ~1 yellow_carpet if block ~-1 ~ ~-1 yellow_carpet if block ~1 ~ ~-1 yellow_carpet if block ~ ~-1 ~ yellow_concrete if block ~ ~-1 ~1 minecraft:smooth_sandstone_stairs[facing=north] if block ~ ~-1 ~2 minecraft:smooth_sandstone_stairs[facing=south] if block ~ ~-1 ~-1 minecraft:smooth_sandstone_stairs[facing=south] if block ~ ~-1 ~-2 minecraft:smooth_sandstone_stairs[facing=north] if block ~-1 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=east] if block ~-2 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=west] if block ~1 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=west] if block ~2 ~-1 ~ minecraft:smooth_sandstone_stairs[facing=east] if block ~1 ~-1 ~1 yellow_concrete if block ~-1 ~-1 ~1 yellow_concrete if block ~-1 ~-1 ~-1 yellow_concrete if block ~1 ~-1 ~-1 yellow_concrete if block ~-1 ~-1 ~2 smooth_red_sandstone_stairs[facing=north] if block ~-2 ~-1 ~1 smooth_red_sandstone_stairs[facing=east] if block ~1 ~-1 ~-2 smooth_red_sandstone_stairs[facing=south] if block ~2 ~-1 ~-1 smooth_red_sandstone_stairs[facing=west] if block ~1 ~-1 ~2 smooth_red_sandstone_stairs[facing=north] if block ~2 ~-1 ~1 smooth_red_sandstone_stairs[facing=west] if block ~-1 ~-1 ~-2 smooth_red_sandstone_stairs[facing=south] if block ~-2 ~-1 ~-1 smooth_red_sandstone_stairs[facing=east] run summon minecraft:armor_stand ~ ~ ~ {Tags:["Air"],Invisible:1b}
# End Summoning Spiral

# Killing Summoning Stand
execute as @e[tag=Circle] at @s run kill @e[tag=SunSummoner,distance=..2]
# End Killing Summoning Stand

# Inizializing Scoreboards
execute as @e[tag=Licht] store result score @s LichtLife run data get entity @s Health
execute as @e[tag=Circle] run scoreboard players add @s Licht 1
execute as @e[tag=Licht] run scoreboard players add @s Regeneration 1
# End Inizializing Scoreboards

# Circle Animation
execute as @e[tag=Circle] at @s run particle dust 1.000 0.733 0.000 1 ^4 ^-0.5 ^ 0 0 0 1 0 normal
execute as @e[tag=Circle] at @s run particle dust 1.000 0.733 0.000 1 ^-4 ^-0.5 ^ 0 0 0 1 0 normal
execute as @e[tag=Circle] at @s run tp @s ~ ~ ~ ~5 ~
# End Circle Animation

# Spiral Animation
execute as @e[tag=Air] at @s run particle dust 1.000 0.733 0.000 1 ^3 ^-0.5 ^ 0 0 0 1 0 normal
execute as @e[tag=Air] at @s run particle dust 1.000 0.733 0.000 1 ^-3 ^-0.5 ^ 0 0 0 1 0 normal
execute as @e[tag=Air] at @s run particle dust 1.000 0.733 0.000 1 ^ ^-0.5 ^3 0 0 0 1 0 normal
execute as @e[tag=Air] at @s run particle dust 1.000 0.733 0.000 1 ^ ^-0.5 ^-3 0 0 0 1 0 normal
execute as @e[tag=Air] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=Air] run scoreboard players add @s Spiral 1
execute as @e[tag=Air,scores={Spiral=..30}] at @s run tp ~ ~0.2 ~
execute as @e[tag=Air,scores={Spiral=30..}] at @s run summon minecraft:armor_stand ~ ~-6 ~ {Tags:["Air"],Invisible:1b}
execute as @e[tag=Air,scores={Spiral=30..}] run kill @s
# End Spiral Animation

# Lightning Animation
execute as @e[tag=Circle,scores={Licht=350}] at @s run summon lightning_bolt ~3 ~ ~
execute as @e[tag=Circle,scores={Licht=350}] at @s run summon lightning_bolt ~-3 ~ ~
execute as @e[tag=Circle,scores={Licht=350}] at @s run summon lightning_bolt ~ ~ ~3
execute as @e[tag=Circle,scores={Licht=350}] at @s run summon lightning_bolt ~ ~ ~-3
# End Lightning Animation

# Boss Summoning
execute as @e[tag=Circle,scores={Licht=400}] at @s run summon zombie_villager ~ ~2 ~ {ConversionTime:-1,Tags:["Licht","Setlife"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Sunlgiht Spear\",\"color\":\"gold\",\"bold\":true}"},HideFlags:6,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:2,Operation:0,UUIDLeast:867592,UUIDMost:941862,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:371219,UUIDMost:198796,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:3,Operation:0,UUIDLeast:793070,UUIDMost:306307,Slot:"mainhand"}]}},{}],HandDropChances:[0.4F,0.85F],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:86879,UUIDMost:316283,Slot:"feet"}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15},{id:"minecraft:fire_protection",lvl:99999999999},{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:thorns",lvl:5}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:250260,UUIDMost:914584,Slot:"legs"}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:15},{id:"minecraft:fire_protection",lvl:99999999999},{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:projectile_protection",lvl:5},{id:"minecraft:thorns",lvl:5}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:372328,UUIDMost:511570,Slot:"chest"}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"101bc6e9-610c-4d8e-a80b-9d2517705102",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTJmMzU3YWI1OWUwNGU2NzY3MjRjNjNkNzA0YzNkMWYyZjlhZTFhZDQyODNlOTFkN2RhMjZlZmM2YzQ4MDgifX19"}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:jungle"},Offers:{}}
execute as @e[tag=Licht] at @s run kill @e[tag=Circle,distance=..2]
execute as @e[tag=Licht] at @s run kill @e[tag=Air,distance=..10]
effect give @e[tag=Licht] strength 2 3 true
effect give @e[tag=Licht] fire_resistance 2 3 true
# Boss Summoning

# Licht Parameter
execute as @e[tag=Licht,scores={LichtLife=50..}] run data merge entity @s {Health:50}
execute as @e[tag=Setlife] run data merge entity @s {Health:50}
execute as @e[tag=Setlife] run tag @s remove Setlife
# End Licht Parameter

# Boss Abilities
execute as @e[tag=Licht] run scoreboard players add @s Lightning 1
execute as @e[tag=Licht,scores={Lightning=590}] at @s run tellraw @a[distance=..30] {"text":"Sunlight will destroy you: Ceartas Dealain!","color":"gold","bold":true,"italic":true}
execute as @e[tag=Licht,scores={Lightning=600}] at @p run summon lightning_bolt
execute as @e[tag=Licht,scores={Lightning=600}] at @p run summon lightning_bolt
execute as @e[tag=Licht,scores={Lightning=600}] at @p run summon lightning_bolt
execute as @e[tag=Licht,scores={Lightning=600}] at @p run summon lightning_bolt
execute as @e[tag=Licht,scores={Lightning=600}] at @p run summon lightning_bolt
execute as @e[tag=Licht,scores={Lightning=601}] run scoreboard players set @s Lightning 0
execute as @e[tag=Licht] run time set 12999
execute as @e[tag=Licht] at @s run kill @e[type=arrow,distance=..3]
execute as @e[tag=Licht,scores={Regeneration=500}] run effect give @s instant_damage 1 1 true
execute as @e[tag=Licht,scores={Regeneration=501}] run scoreboard players set @s Regeneration 0 
# End Boss Abilities