#Reference only module:init functions
    advancement grant @a only dv.rustics:stone_age/root
    function dv.energy:init
    forceload add 3 17 3 17
    setblock 3 1 17 minecraft:air
    setblock 3 2 17 bedrock
    setblock 3 1 17 minecraft:jukebox[has_record=false]{RecordItem:{id:"minecraft:blue_terracotta",Count:1b,tag:{energy:{generator:{tier1:{generation:100}}}}}}
    