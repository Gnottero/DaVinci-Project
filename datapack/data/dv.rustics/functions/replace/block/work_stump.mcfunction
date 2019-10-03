#Replacing a visible chest with an invisible one keeping internal items
    data modify storage dv.rustics stations/replace/work_stump set from block ~ ~ ~ Items
    setblock ~ ~ ~ minecraft:chest[type=left]
    data modify block ~ ~ ~ Items set from storage minecraft:dv.rustics stations/replace/work_stump