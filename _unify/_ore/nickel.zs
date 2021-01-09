import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ore */

// OreDict
<ore:oreNickel>.add(<galaxyspace:mirandablocks:8>);


/* Ingot */

// OreDict
<ore:ingotNickel>.remove(<extraplanets:tier5_items:7>);
<ore:ingotNickel>.remove(<galaxyspace:ingots:2>);

// Recipes
remAndHide(<extraplanets:tier5_items:7>);
remAndHide(<galaxyspace:ingots:2>);
replAll(<extraplanets:tier5_items:7>, <thermalfoundation:material:133>);
replAll(<galaxyspace:ingots:2>, <thermalfoundation:material:133>);

// Furnace
remFur(<extraplanets:tier5_items:7>);
remFur(<galaxyspace:ingots:2>);
addFur(<thermalfoundation:material:133>, <ore:oreNickel>);

// AE2 Grindstone
remAE2Gri(<extraplanets:tier5_items:7>);
remAE2Gri(<galaxyspace:ingots:2>);


/* Block */

// Ore Dict
<ore:blockNickel>.add(<galaxyspace:decoblocks:5>);

// Recipes
rem(<extraplanets:jupiter:13>);
rem(<galaxyspace:decoblocks:5>);


/* Plate */

// OreDict
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);

// Recipes
replAll(<extraplanets:tier5_items:6>, <thermalfoundation:material:325>);
replAll(<galaxyspace:compressed_plates:3>, <thermalfoundation:material:325>);

// Compactor
remGalaComp(<extraplanets:tier5_items:6>);
remGalaComp(<galaxyspace:compressed_plates:3>);
addGalaComp2(<thermalfoundation:material:325>, <thermalfoundation:material:133>, <thermalfoundation:material:133>);

// Hide
hide(<extraplanets:tier5_items:6>);
hide(<galaxyspace:compressed_plates:3>);