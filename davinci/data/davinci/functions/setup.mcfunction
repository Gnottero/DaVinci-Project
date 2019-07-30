# Creating Scoreboards
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add Pulverizer dummy
scoreboard objectives add Smelter dummy
scoreboard objectives add Licht dummy
scoreboard objectives add Spiral dummy
scoreboard objectives add Regeneration dummy
scoreboard objectives add LichtLife dummy
scoreboard objectives add Lightning dummy
scoreboard objectives add Day dummy
scoreboard objectives add MBC dummy
scoreboard objectives add Esplosive dummy
scoreboard objectives add IronDrillUsage dummy
scoreboard objectives add IronTimer dummy
scoreboard objectives add DDrillUsage dummy
scoreboard objectives add DiamondTimer dummy
scoreboard objectives add GoldDrillUsage dummy
scoreboard objectives add GoldTimer dummy
scoreboard objectives add Ngen dummy
scoreboard objectives add Farm dummy
scoreboard objectives add QuarryTime dummy
scoreboard objectives add Clock1s dummy
scoreboard objectives add RoboticTimer dummy
scoreboard objectives add Spawner minecraft.mined:minecraft.spawner
scoreboard objectives add Timer dummy
scoreboard objectives add HCL dummy
scoreboard objectives add Mana dummy
scoreboard objectives add GainMana minecraft.custom:minecraft.sneak_time
scoreboard objectives add ClickWay minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ReloadMana dummy
scoreboard objectives add BGathering dummy
scoreboard objectives add Freezing dummy

execute as @a[scores={ReloadMana=0}] run scoreboard players add @s Mana 1
tellraw @a ["",{"text":"DaVinci Project","bold":true,"italic":true,"color":"aqua"},{"text":" has been successfully loaded","bold":true,"italic":true,"color":"dark_blue"}]
