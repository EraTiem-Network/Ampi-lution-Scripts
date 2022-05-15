import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ingot */

// OreDict
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);

// Recipes
remAndHide(<projectred-core:resource_item:102>);
replAll(<projectred-core:resource_item:102>, <thermalfoundation:material:130>);

//remFur
remFur(<projectred-core:resource_item:102>);
addFur(<thermalfoundation:material:130>, <ore:oreSilver>);

//AE2 Grindstone
remAE2Gri(<projectred-core:resource_item:102>);

/* Blocks */

// Recipes
rem(<projectred-exploration:stone:10>);