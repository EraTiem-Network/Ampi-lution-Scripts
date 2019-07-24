import mods.thermalexpansion.RedstoneFurnace.addRecipe as add;


/* add recipes from Alloy Smelter */

// Dead Bush
for sapling in <ore:treeSapling>.items {
  add(<minecraft:deadbush>, sapling, 2000);
}

// Ender Pearl
add(<minecraft:ender_pearl>, <enderio:item_material:28> * 9, 2000);