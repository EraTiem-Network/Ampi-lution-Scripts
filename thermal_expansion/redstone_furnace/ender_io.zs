import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/* All Alloy Smelter Recipes with only 1 Input */

// Fused Quartz
addTERedFur(<enderio:block_fused_quartz:0>, <minecraft:quartz> * 4, 5000);


for quartz_block in <ore:blockQuartz>.items {
  addTERedFur(<enderio:block_fused_quartz:0>, quartz_block, 5000);
}

// Quite Clear Glass
addTERedFur(<enderio:block_fused_glass:0>, <minecraft:glass>, 2500);

