execute as @e[tag=HealingCircle] run scoreboard players add @s HCL 1
execute as @e[tag=HealingCircle] at @s run particle flame ^ ^0.5 ^5
execute as @e[tag=HealingCircle] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=HealingCircle] at @s run effect give @a[distance=0..5] regeneration 1 2 true
execute as @e[tag=HealingCircle] at @s run effect give @a[distance=0..5] saturation 1 2 true
execute as @e[tag=HealingCircle,scores={HCL=400..}] run kill @s
