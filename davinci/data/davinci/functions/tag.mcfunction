# Fire Wand Tags
tag @a[nbt={SelectedItem:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 10101010, display: {Lore: ['{"text":"-------------","color":"gray","bold":true}', '{"text":"Element","color":"white","bold":true}', '[{"text":"Ŧ","color":"white"},{"text":" Fire","color":"dark_red","bold":true}]', '{"text":"-------------","color":"gray","bold":true}', '{"text":"R-Click = Fire Dart","color":"white","bold":true}', '{"text":"Shift + R-Click = Healing Flames","color":"white","bold":true}', '{"text":"-------------","color":"gray","bold":true}', '{"text":"Fire Dart = 20 Mana","color":"white","bold":true}', '{"text":"Healing Flames = 100 Mana","color":"white","bold":true}', '{"text":"-------------","color":"gray","bold":true}'], Name: '{"text":"Fire Grimoire","color":"dark_red","bold":true}'}}}}] add Firebolt
tag @a[nbt=!{SelectedItem:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 10101010, display: {Lore: ['{"text":"-------------","color":"gray","bold":true}', '{"text":"Element","color":"white","bold":true}', '[{"text":"Ŧ","color":"white"},{"text":" Fire","color":"dark_red","bold":true}]', '{"text":"-------------","color":"gray","bold":true}', '{"text":"R-Click = Fire Dart","color":"white","bold":true}', '{"text":"Shift + R-Click = Healing Flames","color":"white","bold":true}', '{"text":"-------------","color":"gray","bold":true}', '{"text":"Fire Dart = 20 Mana","color":"white","bold":true}', '{"text":"Healing Flames = 100 Mana","color":"white","bold":true}', '{"text":"-------------","color":"gray","bold":true}'], Name: '{"text":"Fire Grimoire","color":"dark_red","bold":true}'}}}}] remove Firebolt

tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10131313,display:{Name:'{"text":"Icy Flute","color":"dark_aqua","bold":true}'}}}}] add IcyBard
tag @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10131313,display:{Name:'{"text":"Icy Flute","color":"dark_aqua","bold":true}'}}}}] remove IcyBard

execute as @a[tag=Firebolt] run scoreboard objectives add ClickFB minecraft.used:minecraft.carrot_on_a_stick
execute as @a[tag=!Firebolt] run scoreboard objectives remove ClickFB

execute as @a[tag=IcyBard] run scoreboard objectives add ClickIB minecraft.used:minecraft.carrot_on_a_stick
execute as @a[tag=!IcyBard] run scoreboard objectives remove ClickIB

execute as @a[scores={ClickFB=1..,Mana=0..9}] run scoreboard players reset @s ClickFB

tag @a[nbt={SelectedItem:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, CustomModelData: 2, HideFlags: 6, display: {Lore: ['{"text":"Made up of bones","color":"gray","bold":true}', '{"text":"of the Pure Dragon","color":"gray","bold":true}'], Name: '{"text":"Sword of the Trolls Chief","color":"dark_green","bold":true}'}, AttributeModifiers: [{UUIDMost: 714084, UUIDLeast: 283253, Amount: 15, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 607451, UUIDLeast: 206823, Amount: 5, Slot: "mainhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}, {UUIDMost: 43781, UUIDLeast: 993068, Amount: 15, Slot: "offhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 415983, UUIDLeast: 459341, Amount: 5, Slot: "offhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}]}}}] add Troll
tag @a[nbt=!{SelectedItem:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, CustomModelData: 2, HideFlags: 6, display: {Lore: ['{"text":"Made up of bones","color":"gray","bold":true}', '{"text":"of the Pure Dragon","color":"gray","bold":true}'], Name: '{"text":"Sword of the Trolls Chief","color":"dark_green","bold":true}'}, AttributeModifiers: [{UUIDMost: 714084, UUIDLeast: 283253, Amount: 15, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 607451, UUIDLeast: 206823, Amount: 5, Slot: "mainhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}, {UUIDMost: 43781, UUIDLeast: 993068, Amount: 15, Slot: "offhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 415983, UUIDLeast: 459341, Amount: 5, Slot: "offhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}]}}}] remove Troll
tag @a[nbt=!{SelectedItem:{id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, CustomModelData: 2, HideFlags: 6, display: {Lore: ['{"text":"Made up of bones","color":"gray","bold":true}', '{"text":"of the Pure Dragon","color":"gray","bold":true}'], Name: '{"text":"Sword of the Trolls Chief","color":"dark_green","bold":true}'}, AttributeModifiers: [{UUIDMost: 714084, UUIDLeast: 283253, Amount: 15, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 607451, UUIDLeast: 206823, Amount: 5, Slot: "mainhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}, {UUIDMost: 43781, UUIDLeast: 993068, Amount: 15, Slot: "offhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 415983, UUIDLeast: 459341, Amount: 5, Slot: "offhand", AttributeName: "generic.attackSpeed", Operation: 0, Name: "generic.attackSpeed"}]}}}] remove Rage

execute as @a[tag=Troll] run scoreboard objectives add Troll minecraft.used:minecraft.carrot_on_a_stick
execute as @a[tag=!Troll] run scoreboard objectives remove Troll

kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10505050}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10515151}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10525252}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10535353}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10545454}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10555555}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10565656}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10575757}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10585858}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10595959}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10606060}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10616161}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10626262}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10636363}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10646464}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10656565}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10666666}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{CustomModelData:10676767}}}]

clear @a barrier{CustomModelData:10505050}
clear @a barrier{CustomModelData:10515151}
clear @a barrier{CustomModelData:10525252}
clear @a barrier{CustomModelData:10535353}
clear @a barrier{CustomModelData:10545454}
clear @a barrier{CustomModelData:10555555}
clear @a barrier{CustomModelData:10565656}
clear @a barrier{CustomModelData:10575757}
clear @a barrier{CustomModelData:10585858}
clear @a barrier{CustomModelData:10595959}
clear @a barrier{CustomModelData:10606060}
clear @a barrier{CustomModelData:10616161}
clear @a barrier{CustomModelData:10626262}
clear @a barrier{CustomModelData:10636363}
clear @a barrier{CustomModelData:10646464}
clear @a barrier{CustomModelData:10656565}
clear @a barrier{CustomModelData:10666666}
clear @a barrier{CustomModelData:10676767}