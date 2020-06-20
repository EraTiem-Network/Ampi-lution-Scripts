import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// remove from OreDict and ingot recipes
<ore:ingotPlatinum>.remove(<extraplanets:tier11_items:5>);
remAndHide(<extraplanets:tier11_items:5>);
remAndHide(<thermalfoundation:material:326>);

// remove block and plate recipe
rem(<extraplanets:kepler22b:14>);
remGalaComp(<extraplanets:tier11_items:6>);
addGalaComp2(<extraplanets:tier11_items:6>, <thermalfoundation:material:134>, <thermalfoundation:material:134>);

// replace ingot and plate
replAll(<extraplanets:tier11_items:5>, <thermalfoundation:material:134>);
<ore:platePlatinum>.add(<extraplanets:tier11_items:6>);
<ore:platePlatinum>.remove(<thermalfoundation:material:326>);
replAll(<thermalfoundation:material:326>, <extraplanets:tier11_items:6>);
<extraplanets:tier11_items:6>.displayName = "§ePlatinum Plate";


/* Furnace */
remFur(<extraplanets:tier11_items:5>);
remFur(<thermalfoundation:material:134>);
addFur(<thermalfoundation:material:134>, <ore:orePlatinum>);

/* AE2 Grinder */
remAE2Gri(<extraplanets:tier11_items:5>);