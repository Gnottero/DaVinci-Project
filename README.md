# DaVinci Dev Documentation
Here will be the documentation for the development side of the DaVinci Project as the master branch will most likely be updated for users once the pack is published. PLEASE document everything that is worked on, to the level of detail where another member of the dev team can contribute to your module without needing to ask you what has to happen. Look to the blocks module for the ideal outcome.

## General Information and Standards
### Datapack
- Modules must be named with the "dv." prefix
- Modules must be completely independant (with the exception of `dv.master:main` and `dv.master:init`)
- Scoreboards must be named with the "dv." prefix
- Scoreboards with global variables must have the "DV." prefix
- Scoreboard constants must be stored in `dv.const`
- Temporary scoreboards must be stored in `dv.temp`
- Jukebox data must be saved at `-30000000 0 3200`, with the first level as the module name (excluding "dv.") `RecordItem.tag.module.`
- Chunk `-1875000 200` in the overworld will be forceloaded

Important: All item frames that aren't tagged `"item_frame"` will be deleted
### Resource Pack
- All custom models and textures must be within their respective modules. The only files in `assets/minecraft` should be sounds (`sounds/davinci`) or models/textures that need to be replaced, such as item frames and spawners. Everything else shall reside in `assets/dv.module`.

## Blocks
### Item
To add a new block, add the `"custom_model_data"` predicate to `assets/minecraft/models/item/item_frame.json`, referencing `dv.blocks:custom_model`. Then, in `assets/dv.blocks/models` copy an existing .json file and redirect the texture to `dv.blocks:custom_texture` which corresponds with `assets/dv.blocks/textures/custom_texture.png`.

|      | Spawner | Copper Ore |     |
|------| ------- |------------| --- |
| name | spawner | copper_ore |     |
| id   | 1000    | 1001       |     |
<!--
### Block
In order to have the block actually function, the following steps must be completed in `data/dv.blocks/functions`:
1. Add
### Sound
To give a new block a placement sound, you'll need to add a tag `sound.custom` to the item frame. In `dv.blocks/sound.mcfunction` add the relevant playsound command for any item frame that has the `sound.custom` tag.

|         | Place Stone       |     |
| ------- | ----------------- | --- |
| Tag     | sound.stone.place |     |
| Sound   | block.stone.place |     |

<!--Add module documentation above this line-->
___
[DaVinci Project Discord](https://discord.gg/bgcEGdZ)
### Credits
Gnottero\
SnaveSutit\
Rumbu
