function dv.blocks:place
execute as @e[tag=item_frame] unless data entity @s {Glowing:1b} run data modify entity @s Glowing set value 1b