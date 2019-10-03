#Initialization function for the energy module
    
    #Global variables
    scoreboard objectives add DV.Energy dummy
    scoreboard objectives add DV.Counter dummy

    #Temporary variables
    scoreboard objectives add dv.energybackup dummy
    scoreboard objectives add dv.generator_1 dummy
    scoreboard objectives add dv.used_item dummy
    scoreboard objectives add dv.nodebuffer dummy
    
    #Storing value into scoreboards
    execute store result score $Energy dv.generator_1 run data get storage minecraft:dv.master energy/generators/tier1