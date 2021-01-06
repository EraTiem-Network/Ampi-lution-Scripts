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

// Recipes and Hide
remAndHide(<forestry:ingot_tin>);
remAndHide(<galacticraftcore:basic_item:4>);
replAll(<forestry:ingot_tin>, <thermalfoundation:material:129>);
replAll(<galacticraftcore:basic_item:4>, <thermalfoundation:material:129>);

// Furnace
remFur(<forestry:ingot_tin>);
remFur(<galacticraftcore:basic_item:4>);
remFur(<thermalfoundation:material:129>);
for item in <ore:oreTin>.items {
	addFur(<thermalfoundation:material:129>, item);
}
addFur(<thermalfoundation:material:129>, <moreplanets:diona_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:infected_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:chalos_tin_ore>);
addFur(<thermalfoundation:material:129>, <moreplanets:fronos_tin_ore>);

// AE2 Quartz Grindstone
remAE2Gri(<forestry:ingot_tin>);
remAE2Gri(<galacticraftcore:basic_item:4>);