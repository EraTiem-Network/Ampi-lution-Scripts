import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;

// remove from OreDict and ingot recipes
<ore:ingotMagnesium>.remove(<galaxyspace:ingots:1>);
remAndHide(<galaxyspace:ingots:1>);
replAll(<galaxyspace:ingots:1>, <extraplanets:tier6_items:5>);


/* Blocks */

// remove block recipes
rem(<extraplanets:decorative_blocks:14>);
rem(<extraplanets:decorative_blocks:13>);
rem(<galaxyspace:decoblocks:6>);


// add blocks to OreDict
<ore:blockMagnesium>.add(<extraplanets:decorative_blocks:13>);
<ore:blockMagnesium>.add(<extraplanets:decorative_blocks:14>);
<ore:blockMagnesium>.add(<galaxyspace:decoblocks:6>);

// add block to chisel
addChiselVar("blockMagnesium", <extraplanets:saturn:7>);
addChiselVar("blockMagnesium", <extraplanets:decorative_blocks:13>);
addChiselVar("blockMagnesium", <extraplanets:decorative_blocks:14>);
addChiselVar("blockMagnesium", <galaxyspace:decoblocks:6>);


/* Plates */

//switch plates
<ore:plateMagnesium>.add(<extraplanets:tier6_items:4>);
<ore:plateMagnesium>.remove(<galaxyspace:compressed_plates:2>);
remGalaComp(<galaxyspace:compressed_plates:2>);
remAndHide(<galaxyspace:compressed_plates:2>);


/* Furnace */
remFur(<galaxyspace:ingots:1>);
remFur(<extraplanets:tier6_items:5>);
addFur(<extraplanets:tier6_items:5>, <ore:oreMagnesium>);