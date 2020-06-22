import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


/* Ingot */

// OreDict
<ore:ingotLead>.remove(<extraplanets:ingot_lead>);
<ore:ingotLead>.remove(<galacticraftplanets:basic_item_venus:1>);


/* Ingot */

// Recipes and Hide
replAll(<galacticraftplanets:basic_item_venus:1>, <thermalfoundation:material:131>);
replAll(<extraplanets:ingot_lead>, <thermalfoundation:material:131>);
remAndHide(<galacticraftplanets:venus:12>);
remAndHide(<galacticraftplanets:basic_item_venus:1>);

// Furnace
remFur(<extraplanets:ingot_lead>);
remFurIn(<galacticraftplanets:basic_item_venus:1>, <moreplanets:fronos_lead_ore>);
remFur(<galacticraftplanets:basic_item_venus:1>);
remFur(<thermalfoundation:material:131>);
addFur(<thermalfoundation:material:131>, <extraplanets:ore_lead>);
addFur(<thermalfoundation:material:131>, <moreplanets:fronos_lead_ore>);
addFur(<thermalfoundation:material:131>, <thermalfoundation:ore:3>);
addFur(<thermalfoundation:material:131>, <galacticraftplanets:venus:8>);

/* Atomic Battery */

// Recipes
rem(<galacticraftplanets:atomic_battery:0>);
addShaped("atomic_battery", <galacticraftplanets:atomic_battery:0>, [
	[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
	[<thermalfoundation:material:131>, <galacticraftplanets:basic_item_venus:2>, <thermalfoundation:material:131>],
	[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]
]);

// AE2 Grindestone
remAE2Gri(<extraplanets:ingot_lead>);
remAE2Gri(<galacticraftplanets:basic_item_venus:1>);