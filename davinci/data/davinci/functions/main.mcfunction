# Spell System
function davinci:tag
# Action Spells
execute as @e[tag=Freezing] at @s run function davinci:spells/action/freezingeffect
execute as @a[tag=Firebolt,scores={ClickFB=1..,Mana=10..100,Sneak=0}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.2 if block ~ ~ ~ air run function davinci:spells/action/firebolt
execute as @a[tag=IcyBard,scores={ClickIB=1..,Mana=10..100}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2.2 if block ~ ~ ~ air run function davinci:spells/action/icebolt
# Creation Spells
execute as @a[tag=Firebolt,scores={ClickFB=1..,Mana=100,Sneak=1..}] at @s run function davinci:spells/creation/fire
execute as @a[scores={Sneak=1..}] run scoreboard players set @s Sneak 0
function davinci:spells/creation/fireffect
# Mana Management
function davinci:spells/overflow
function davinci:spells/manausage
function davinci:spells/mana
# Wand Crafting
function davinci:spells/wandcrafting
# Waystone
function davinci:waystone/waystone
function davinci:waystone/killing
function davinci:waystone/crafting
# Machines
function atomic:main
function davinci:machines/blockbreaker/blockbreaker
function davinci:machines/convbelt/convbelt
function davinci:machines/converter/converter
function davinci:machines/laser/laser
function davinci:machines/ncollector/ncollector
function davinci:machines/portablefarm/portablefarm
function davinci:machines/pulverizer/pulverizer
function davinci:machines/quarry/quarry
function davinci:machines/redclock/redclock
function davinci:machines/robarm/robarm
function davinci:machines/smelter/smelter
function davinci:machines/spawner/spawner
function davinci:machines/treefarm/empty
function davinci:machines/treefarm/oak
function davinci:machines/treefarm/spruce
function davinci:machines/treefarm/birch
function davinci:machines/treefarm/jungle
function davinci:machines/treefarm/acacia
function davinci:machines/treefarm/dark_oak
# Crafting
function davinci:machines/crafting/atomic
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/neutronium/ngeneration
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/crafting/neutronium
function davinci:machines/atomic/manareleated
# Machines Crafting
function davinci:machines/atomic/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/ncollector/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/portablefarm/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/pulverizer/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/quarry/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/redclock/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/robarm/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/smelter/crafting
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/spawner/spawner
execute as @e[tag=Atom] at @s if entity @a[distance=..5] run function davinci:machines/treefarm/crafting
execute as @e[tag=Collector] at @s run function davinci:machines/neutronium/ngeneration
# Mana Flowers
function davinci:flower/daybloom
# GUI System
execute as @e[tag=Pulverizer] at @s if entity @p[distance=..5] run function davinci:pulverizergui
execute as @e[tag=Hive] at @s if entity @p[distance=..5] run function davinci:hivegui
execute as @e[tag=Smelter] at @s if entity @p[distance=..5] run function davinci:smeltergui
# Bosses
function davinci:bosses/sun
# Weapon
function davinci:weapons/trollsword
function davinci:weapons/requiredlevel
function davinci:weapons/keeplevels
# Decoration
function davinci:blocks/beer
function davinci:blocks/nblock
function davinci:blocks/factory
# Alchemy
function davinci:alchemy/manacauldron
#Bees!
function davinci:bees/hive
function davinci:bees/genetic
