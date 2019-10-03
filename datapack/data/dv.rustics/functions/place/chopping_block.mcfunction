#Placing the block and summoning the zombie
    summon minecraft:armor_stand ~ ~ ~ {Tags:["Chopping_Block"],NoGravity:1b,ShowArms:1b,Small:1b,Invisible:1b,DisabledSlots:47,Pose:{LeftArm:[0f,0f,0f]},HandItems:[{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:1005}}]}
    summon minecraft:husk ~ ~-.3 ~ {DeathLootTable:"air",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],CanPickUpLoot:0b,ArmorDropChances:[0F,0F,0F,100F],NoGravity:1b,Silent:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Tags:["Chopping_Block"]}
    setblock ~ ~ ~ minecraft:oak_slab
    kill @s