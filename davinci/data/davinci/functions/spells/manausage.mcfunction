execute as @a[scores={GainMana=1,Mana=0..95},nbt={SelectedItem:{id:"minecraft:player_head", tag: {SkullOwner: {Id: "e310abff-2ada-4f40-a8e9-16fef2045ccf", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ4NGFhNWJlZTg5OGE2ZTg5NjBhM2Y5YTk5NzU5YjFmMzlmOWRjYjMyMTA1MGY3MTRjZDcyYjNkOGE4MDQxIn19fQ=="}]}}, display: {Name: "{\"text\":\"Mana Fragment\"}"}}}}] run scoreboard players add @s Mana 5
execute as @a[scores={GainMana=1,Mana=0..95},nbt={SelectedItem:{id:"minecraft:player_head", tag: {SkullOwner: {Id: "e310abff-2ada-4f40-a8e9-16fef2045ccf", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ4NGFhNWJlZTg5OGE2ZTg5NjBhM2Y5YTk5NzU5YjFmMzlmOWRjYjMyMTA1MGY3MTRjZDcyYjNkOGE4MDQxIn19fQ=="}]}}, display: {Name: "{\"text\":\"Mana Fragment\"}"}}}}] run clear @s minecraft:player_head{SkullOwner: {Id: "e310abff-2ada-4f40-a8e9-16fef2045ccf", Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ4NGFhNWJlZTg5OGE2ZTg5NjBhM2Y5YTk5NzU5YjFmMzlmOWRjYjMyMTA1MGY3MTRjZDcyYjNkOGE4MDQxIn19fQ=="}]}}, display: {Name: "{\"text\":\"Mana Fragment\"}"}} 1
execute as @a run scoreboard players reset @s GainMana
