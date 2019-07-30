execute as @a[tag=Troll,scores={Troll=1..,Mana=50..}] run tag @s add Rage
execute as @a[tag=Rage,scores={Troll=1,Mana=50..}] run scoreboard players remove @s Mana 50
execute as @a[tag=Troll,scores={Troll=1,Mana=1..49}] run scoreboard players reset @s Troll
execute as @a[tag=Rage] run scoreboard players add @s Troll 1
execute as @a[tag=Rage] run effect give @s speed 1 3 true
execute as @a[tag=Rage] run effect give @s strength 1 2 true
execute as @a[tag=Rage,scores={Troll=600}] run effect clear @s minecraft:strength
execute as @a[tag=Rage,scores={Troll=600}] run effect clear @s minecraft:speed
execute as @a[tag=Rage,scores={Troll=600}] run tag @s remove Rage
execute as @a[scores={Troll=600}] run scoreboard players reset @s Troll
