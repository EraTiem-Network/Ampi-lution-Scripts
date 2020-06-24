import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Remove
rem(<enderio:item_material:51> * 6);

// Add
addShaped("industrial_dye_blend", <enderio:item_material:51> * 6, [
	[<ore:dustLapis>, <ore:dustQuartz>, <ore:dyeGreen>],
	[<ore:dustQuartz>, <ore:dyeBlack>, <ore:dustQuartz>],
	[<ore:dyeGreen>, <ore:dustQuartz>, <ore:dustLapis>]
]);