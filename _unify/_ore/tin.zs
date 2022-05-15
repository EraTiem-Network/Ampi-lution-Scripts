import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidStack;

/* Ingot */

// OreDict
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:ingotTin>.remove(<galacticraftcore:basic_item:4>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);

// Recipes and Hide
remAndHide(<forestry:ingot_tin>);
remAndHide(<galacticraftcore:basic_item:4>);
remAndHide(<projectred-core:resource_item:101>);
replAll(<forestry:ingot_tin>, <thermalfoundation:material:129>);
replAll(<galacticraftcore:basic_item:4>, <thermalfoundation:material:129>);
replAll(<projectred-core:resource_item:101>, <thermalfoundation:material:129>);

// Furnace
remFur(<forestry:ingot_tin>);
remFur(<galacticraftcore:basic_item:4>);
remFur(<projectred-core:resource_item:4>);
remFur(<thermalfoundation:material:129>);
addFur(<thermalfoundation:material:129>, <ore:oreTin>);
addFur(<thermalfoundation:material:129>, <moreplanets:diona_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:infected_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:chalos_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:fronos_tin_ore>);

// AE2 Quartz Grindstone
remAE2Gri(<forestry:ingot_tin>);
remAE2Gri(<galacticraftcore:basic_item:4>);
remAE2Gri(<projectred-core:resource_item:101>);

/* Block */

// Recipes
rem(<projectred-exploration:stone:9>);