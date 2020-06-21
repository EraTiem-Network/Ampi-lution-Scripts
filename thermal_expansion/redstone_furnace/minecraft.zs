import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* add recipes from Alloy Smelter */

// Dead Bush
for sapling in <ore:treeSapling>.items {
  addTERedFur(<minecraft:deadbush>, sapling, 2000);
}

// Ender Pearl
addTERedFur(<minecraft:ender_pearl>, <enderio:item_material:28> * 9, 2000);