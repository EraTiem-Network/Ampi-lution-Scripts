import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

/* Ingot */

// OreDict
<ore:ingotPlatinum>.remove(<extraplanets:tier11_items:5>);

// Recipes and Hide
remAndHide(<extraplanets:tier11_items:5>);
remAndHide(<thermalfoundation:material:326>);
replAll(<extraplanets:tier11_items:5>, <thermalfoundation:material:134>);

// Furnace
remFur(<extraplanets:tier11_items:5>);
remFur(<thermalfoundation:material:134>);
addFur(<thermalfoundation:material:134>, <ore:orePlatinum>);

// AE2 Grindestone
remAE2Gri(<extraplanets:tier11_items:5>);

/* Block */

// Recipes
rem(<extraplanets:kepler22b:14>);

// Galacticraft Compressor
remGalaComp(<extraplanets:tier11_items:6>);
addGalaComp2(<extraplanets:tier11_items:6>, <thermalfoundation:material:134>, <thermalfoundation:material:134>);


/* Plate */

// Ore Dict
<ore:platePlatinum>.add(<extraplanets:tier11_items:6>);
<ore:platePlatinum>.remove(<thermalfoundation:material:326>);

// Recipes
replAll(<thermalfoundation:material:326>, <extraplanets:tier11_items:6>);

// Display Name
<extraplanets:tier11_items:6>.displayName = "§ePlatinum Plate";