#Inizializing Work Stump (Primitive Crafting Table)
    function dv.rustics:stations/slot_detection/work_stump
    execute unless block ~ ~ ~ air unless block ~ ~ ~ chest[type=left] run function dv.rustics:replace/block/work_stump
    function dv.rustics:stations/slot_detection/stump_recipes