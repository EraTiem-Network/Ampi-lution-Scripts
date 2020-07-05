import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ore */

// OreDict
<ore:oreCobalt>.add(<galaxyspace:mirandablocks:7>);
<ore:oreCobalt>.add(<galaxyspace:barnarda_c_ores:11>);
<ore:oreCobaltum>.remove(<galaxyspace:barnarda_c_ores:11>);

// Mining Lvl
<galaxyspace:gsores:0>.asBlock().definition.setHarvestLevel("pickaxe", 4);
<galaxyspace:mirandablocks:7>.asBlock().definition.setHarvestLevel("pickaxe", 4);
<galaxyspace:barnarda_c_ores:11>.asBlock().definition.setHarvestLevel("pickaxe", 4);

// Ender SAG Mill
remEnderSAG(<galaxyspace:gsores:0>);


/* Ingot */

// OreDict
<ore:ingotCobalt>.remove(<galaxyspace:ingots:0>);

// Recipes
replAll(<galaxyspace:ingots:0>, <tconstruct:ingots:0>);

// Furnace
remFur(<galaxyspace:ingots:0>);

// Remove and Hide
remAndHide(<galaxyspace:ingots:0>);


/* Block */

// OreDict
<ore:blockCobalt>.add(<galaxyspace:decoblocks:4>);

// Recipes
rem(<galaxyspace:decoblocks:4>);
remByName("chisel:uncraft_blockcobalt");