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

val woolRecipeNames = ["orange", "magenta", "light_blue", "yellow",
    "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black"] as string[];

val coloredWool = <minecraft:wool>.definition;

for i in 0 to 15 {
    addShapeless(woolRecipeNames[i] ~ "_wool_bucket", <minecraft:wool:0>,
        [coloredWool.makeStack(i + 1), <minecraft:water_bucket>]);
}