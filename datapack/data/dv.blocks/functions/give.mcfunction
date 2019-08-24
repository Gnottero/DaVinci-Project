#Add items to slots
execute at @s run setblock ~ ~3 ~ air destroy
execute at @s if block ~ ~3 ~ air run setblock ~ ~3 ~ barrel[facing=up,open=false]{Items:[{Slot:0b,id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Copper Ore","italic":false}'},CustomModelData:1001,EntityTag:{Tags:["copper_ore","sound.stone.place"]}}}], CustomName:'{"text":"DaVinci Blocks"}'}