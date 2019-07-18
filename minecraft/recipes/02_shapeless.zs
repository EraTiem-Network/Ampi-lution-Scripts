//Dispenser: Bow Dropper Recipe
recipes.addShapeless("bow_dropper_dispenser_2", <minecraft:dispenser>,
    [<minecraft:bow>, <minecraft:dropper>]
    );


/* Colored Wool to White Wool */

val woolRecipeNames = ["orange", "magenta", "light_blue", "yellow",
    "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black"] as string[];

val coloredWool = <minecraft:wool>.definition;

for i in 0 to 15 {
    recipes.addShapeless(woolRecipeNames[i] ~ "_wool_bucket", <minecraft:wool:0>,
        [coloredWool.makeStack(i + 1), <minecraft:water_bucket>]);
}