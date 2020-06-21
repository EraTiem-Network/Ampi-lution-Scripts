import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Setting Arrays to keep code short */

val recipeNames = ["white", "orange", "magenta", "light_blue", "yellow",
    "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black"] as string[];

val oreDictWool = [<ore:blockWoolWhite>, <ore:blockWoolOrange>, <ore:blockWoolMagenta>, <ore:blockWoolLightBlue>,
    <ore:blockWoolYellow>, <ore:blockWoolLime>, <ore:blockWoolPink>, <ore:blockWoolGray>, <ore:blockWoolLightGray>,
    <ore:blockWoolCyan>, <ore:blockWoolPurple>, <ore:blockWoolBlue>, <ore:blockWoolBrown>, <ore:blockWoolGreen>,
    <ore:blockWoolRed>, <ore:blockWoolBlack>] as IOreDictEntry[];


/* Remove old Recipes */

recipes.remove(<enderstorage:ender_storage:0>);
recipes.remove(<enderstorage:ender_storage:1>);
recipes.remove(<enderstorage:ender_pouch>);


/* Add new Recipes */

for i in 0 to 16 {
    // Chest
    recipes.addShaped("ender_chest_" ~ recipeNames[i], <enderstorage:ender_storage:0>.withTag({Frequency: {middle: i, left: i, right: i}}), [
        [<extrautils2:suncrystal:0>, oreDictWool[i], <extrautils2:suncrystal:0>],
        [<ironchest:iron_chest:6>, <minecraft:ender_chest>, <ironchest:iron_chest:6>],
        [<appliedenergistics2:material:22>, <minecraft:ender_eye>, <appliedenergistics2:material:22>]
    ]);

    // Tank
    recipes.addShaped("ender_tank_" ~ recipeNames[i], <enderstorage:ender_storage:1>.withTag({Frequency: {middle: i, left: i, right: i}}), [
        [<extrautils2:suncrystal:0>, oreDictWool[i], <extrautils2:suncrystal:0>],
        [<ironchest:iron_chest:6>, <industrialforegoing:black_hole_tank>, <ironchest:iron_chest:6>],
        [<appliedenergistics2:material:22>, <minecraft:ender_eye>, <appliedenergistics2:material:22>]
    ]);

    // Pouch
    recipes.addShaped("ender_pouch_" ~ recipeNames[i], <enderstorage:ender_pouch>.withTag({Frequency: {middle: i, left: i, right: i}}), [
        [<minecraft:blaze_rod>, <minecraft:ender_eye> * 2, <minecraft:blaze_rod>],
        [<minecraft:leather>, <ironchest:iron_chest:6>, <minecraft:leather>],
        [<minecraft:blaze_rod> , oreDictWool[i], <minecraft:blaze_rod>]
    ]);
}