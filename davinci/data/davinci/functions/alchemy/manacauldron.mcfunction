execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Mana in a Bottle\",\"color\":\"blue\"}"},SkullOwner:{Id:"23945e63-cf8b-492b-9457-1df4d42259ca"}}}}] at @s if block ~ ~ ~ cauldron[level=3] run tag @s add fluidmana 
execute as @e[tag=fluidmana] at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~0.25 ~ {Marker:1b,Invisible:1b,Tags:["FluidMana","ManaKiller"],Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:firework_rocket",Count:1b,tag:{CustomModelData:10464646}}]}
execute as @e[tag=ManaKiller] at @s run setblock ~ ~ ~ cauldron[level=0]
execute as @e[tag=ManaKiller] at @s run kill @e[tag=fluidmana,distance=..2,limit=1,sort=nearest]
tag @e[tag=ManaKiller] remove ManaKiller

execute as @e[tag=FluidMana] at @s if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=0]

execute as @e[tag=FluidMana] at @s unless block ~ ~ ~ cauldron run kill @s