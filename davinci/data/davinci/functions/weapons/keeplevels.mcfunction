scoreboard objectives add Death deathCount
scoreboard objectives add Levels dummy
tag @a[tag=!added] add setzero
scoreboard players set @a[tag=setzero] Death 1
scoreboard players set @a[tag=setzero] Death 0
tag @a[tag=setzero] add added
tag @a[tag=added] remove setzero
execute as @e[type=player,scores={Death=0}] store result score @s Levels run xp query @s levels
execute as @e[type=player,scores={Death=1..}] at @s run kill @e[type=minecraft:experience_orb,distance=..10]
execute as @e[type=player,scores={Death=1..,Levels=1..}] run scoreboard players remove @s Levels 1
execute as @e[type=player,scores={Death=1..,Levels=0..}] run xp add @s 1 levels
execute as @e[type=player,scores={Death=1..,Levels=0}] run scoreboard players set @s Death 0
