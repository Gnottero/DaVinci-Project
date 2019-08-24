#Initialization function for the energy module
    scoreboard objectives add DV.Energy dummy
    scoreboard objectives add dv.energybackup dummy
    scoreboard objectives add dv.generator_1 dummy
    scoreboard objectives add dv.used_item dummy
    scoreboard objectives add dv.nodebuffer dummy
    execute store result score $Energy dv.generator_1 run data get block 3 56 17 RecordItem.tag.energy.generator.tier1.generation
    scoreboard players set @e[tag=EnergyGenerator] dv.energybackup 0
    scoreboard objectives add DV.Counter dummy
    scoreboard players set @e[tag=EnergyGenerator] dv.nodebuffer 0