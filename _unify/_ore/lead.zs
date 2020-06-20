import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Remove from OreDict
<ore:ingotLead>.remove(<extraplanets:ingot_lead>);
<ore:ingotLead>.remove(<galacticraftplanets:basic_item_venus:1>);

// Remove Recipes to Craft wrong Ingots
remAndHide(<galacticraftplanets:venus:12>);
remAndHide(<galacticraftplanets:basic_item_venus:1>);

// Adjust Furnace
remFur(<extraplanets:ingot_lead>);
remFurIn(<galacticraftplanets:basic_item_venus:1>, <moreplanets:fronos_lead_ore>);
remFur(<galacticraftplanets:basic_item_venus:1>);
remFur(<thermalfoundation:material:131>);

addFur(<thermalfoundation:material:131>, <extraplanets:ore_lead>);
addFur(<thermalfoundation:material:131>, <moreplanets:fronos_lead_ore>);
addFur(<thermalfoundation:material:131>, <thermalfoundation:ore:3>);
addFur(<thermalfoundation:material:131>, <galacticraftplanets:venus:8>);


// Replace all Ingots in recipes with Thermals Ingot
replAll(<galacticraftplanets:basic_item_venus:1>, <thermalfoundation:material:131>);
replAll(<extraplanets:ingot_lead>, <thermalfoundation:material:131>);

// Remove Recipes that still exist
rem(<galacticraftplanets:atomic_battery:0>);

addShaped("atomic_battery", <galacticraftplanets:atomic_battery:0>, [
	[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>],
	[<thermalfoundation:material:131>, <galacticraftplanets:basic_item_venus:2>, <thermalfoundation:material:131>],
	[<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]
]);

// Remove Grindstone recipes for other ingots
remAE2Gri(<extraplanets:ingot_lead>);
remAE2Gri(<galacticraftplanets:basic_item_venus:1>);