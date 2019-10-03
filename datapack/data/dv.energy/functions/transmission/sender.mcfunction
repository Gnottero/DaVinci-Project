#Taking energy from a generator
    execute unless score @s DV.Energy matches 5000 if entity @e[tag=Generator,distance=...1] if score @e[tag=Generator,distance=...1,limit=1] DV.Energy >= $Energy dv.generator_1 run scoreboard players operation @e[tag=Generator,distance=...1,limit=1] dv.nodebuffer += @e[tag=Generator,distance=...1,limit=1] DV.Energy
    execute unless score @s DV.Energy matches 5000 run scoreboard players operation @s DV.Energy += @e[tag=Generator,distance=...1,limit=1] dv.nodebuffer
    scoreboard players operation @e[tag=Generator,distance=...1,limit=1] DV.Energy -= @e[tag=Generator,distance=...1,limit=1] dv.nodebuffer
    scoreboard players set @e[tag=Generator,distance=...1,limit=1] dv.nodebuffer 0