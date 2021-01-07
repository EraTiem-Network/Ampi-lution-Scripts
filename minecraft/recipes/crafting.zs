import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Dispenser: Bow Dropper Recipe */

// Complete
addShaped("bow_droper_dispenser_1", <minecraft:dispenser>, [
    [null, <ore:stickWood>, <minecraft:string>],
    [<ore:stickWood>, <minecraft:dropper>, <minecraft:string>],
    [null, <ore:stickWood>, <minecraft:string>]
  ]);

// Dropper with Bow
addShapeless("bow_dropper_dispenser_2", <minecraft:dispenser>,
    [<minecraft:bow>, <minecraft:dropper>]
    );


/* Colored Wool to White Wool */
addShapeless("colored_wool_bucket", <minecraft:wool:0>
    , [<ore:coloredWool>, <minecraft:water_bucket>]);