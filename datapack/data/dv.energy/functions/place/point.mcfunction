#Summoning the armor stand facing the right direction (Energy Point) and killing the item frame
    summon armor_stand ~ ~-0.031 ~ {Tags:["EnergyPoint","Remove"],Small:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{}, {}, {}, {id: "minecraft:item_frame", Count: 1b, tag: {CustomModelData: 1003}}]}
    kill @s