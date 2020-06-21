import crafttweaker.item.IItemStack;


/* add recipes from Alloy Smelter */

// Dead Bush
for sapling in <ore:treeSapling>.items {
  addTEInSm(<minecraft:deadbush>, sapling, 2000);
}

// Ender Pearl
addTEInSm(<minecraft:ender_pearl>, <enderio:item_material:28> * 9, 2000);