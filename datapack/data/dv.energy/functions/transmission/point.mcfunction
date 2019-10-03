#Send energy from Senders to an Energy Point in a radius of 10 blocks
    execute if entity @e[tag=EnergyPoint,limit=1,distance=..10] unless score @s DV.Energy matches 0 unless score @s DV.Counter matches 0 unless score @s dv.nodebuffer = $Energy dv.generator_1 run function dv.energy:transmission/count
    execute if entity @e[tag=EnergyPoint,limit=1,distance=..10] if score @s dv.nodebuffer = $Energy dv.generator_1 run scoreboard players operation @e[tag=EnergyPoint,distance=..10,sort=nearest,limit=1] DV.Energy += @s dv.nodebuffer
    execute if score @s dv.nodebuffer = $Energy dv.generator_1 run scoreboard players set @s dv.nodebuffer 0
    execute if score @s DV.Counter matches 0 run scoreboard players operation @s DV.Counter += $Energy dv.generator_1