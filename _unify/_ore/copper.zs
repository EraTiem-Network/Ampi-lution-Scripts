import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ingot */

// OreDict
<ore:ingotCopper>.remove(<forestry:ingot_copper>);
<ore:ingotCopper>.remove(<galacticraftcore:basic_item:3>);

// Recipes
remAndHide(<forestry:ingot_copper>);
remAndHide(<galacticraftcore:basic_item:3>);
replAll(<forestry:ingot_copper>, <thermalfoundation:material:128>);
replAll(<galacticraftcore:basic_item:3>, <thermalfoundation:material:128>);

// Furnace
remFur(<forestry:ingot_copper>);
remFur(<galacticraftcore:basic_item:3>);
for ore in <ore:oreCopper>.items {
	addFur(<thermalfoundation:material:128>, ore);	
}

// Furnace More Planets...
remFurIn(<galacticraftcore:basic_item:3>, <moreplanets:fronos_copper_ore>);
addFur(<thermalfoundation:material:128>, <moreplanets:fronos_copper_ore>);
remFurIn(<galacticraftcore:basic_item:3>, <moreplanets:diona_copper_ore>);
addFur(<thermalfoundation:material:128>, <moreplanets:diona_copper_ore>);
remFurIn(<galacticraftcore:basic_item:3>, <moreplanets:infected_copper_ore>);
addFur(<thermalfoundation:material:128>, <moreplanets:infected_copper_ore>);
remFurIn(<galacticraftcore:basic_item:3>, <moreplanets:chalos_copper_ore>);
addFur(<thermalfoundation:material:128>, <moreplanets:chalos_copper_ore>);

// AE2 Grindstone
remAE2Gri(<forestry:ingot_copper>);
remAE2Gri(<galacticraftcore:basic_item:3>);


/* Blocks */

// Recipes
rem(<forestry:resource_storage:1>);
rem(<galacticraftcore:basic_block_core:9>);


/* Dust */

// OreDict
<ore:dustCopper>.remove(<enderio:item_material:26>);

// Recipes
replAll(<enderio:item_material:26>, <thermalfoundation:material:64>);
remAndHide(<enderio:item_material:26>);