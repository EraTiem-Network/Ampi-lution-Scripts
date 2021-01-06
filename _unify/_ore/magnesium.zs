import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;


/* Ingot */

// OreDict
<ore:ingotMagnesium>.remove(<galaxyspace:ingots:1>);

// Recipes and Hide
remAndHide(<galaxyspace:ingots:1>);
replAll(<galaxyspace:ingots:1>, <extraplanets:tier6_items:5>);

// Furnace
remFur(<galaxyspace:ingots:1>);
remFur(<extraplanets:tier6_items:5>);
for item in <ore:oreMagnesium>.items {
  	addFur(<extraplanets:tier6_items:5>, item);
}


/* Blocks */

// Recipes
rem(<extraplanets:decorative_blocks:14>);
rem(<extraplanets:decorative_blocks:13>);
rem(<galaxyspace:decoblocks:6>);

// OreDict
<ore:blockMagnesium>.add(<extraplanets:decorative_blocks:13>);
<ore:blockMagnesium>.add(<extraplanets:decorative_blocks:14>);
<ore:blockMagnesium>.add(<galaxyspace:decoblocks:6>);

// Chisel
addChiselVar("blockMagnesium", <extraplanets:saturn:7>);
addChiselVar("blockMagnesium", <extraplanets:decorative_blocks:13>);
addChiselVar("blockMagnesium", <extraplanets:decorative_blocks:14>);
addChiselVar("blockMagnesium", <galaxyspace:decoblocks:6>);


/* Plates */

// OreDict
<ore:plateMagnesium>.add(<extraplanets:tier6_items:4>);
<ore:plateMagnesium>.remove(<galaxyspace:compressed_plates:2>);

// Galacticraft Compressor
remGalaComp(<galaxyspace:compressed_plates:2>);

// Recipes
remAndHide(<galaxyspace:compressed_plates:2>);