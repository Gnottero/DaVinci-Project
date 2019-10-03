#Giving back the block if the block can't be place
    summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Energy Point","italic":false}'},CustomModelData:1003,EntityTag:{Tags:["EnergyPoint"]}}}}
    kill @s