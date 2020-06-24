import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


// Remove
rem(<thermalexpansion:frame:128>);
rem(<thermalexpansion:cell>);

// Add
addShaped("energy_cell_frame", <thermalexpansion:frame:128>, [
	[<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>],
	[<ore:plateElectrum>, <thermalexpansion:frame:0>, <ore:plateElectrum>],
	[<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>]
]);

// Fluid Transposer
addTEFlTrFill(<thermalexpansion:cell:0>, <thermalexpansion:frame:128>, <liquid:redstone> * 1000, 4000);