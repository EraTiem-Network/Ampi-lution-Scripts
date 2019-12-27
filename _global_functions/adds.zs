import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;
import mods.GalacticraftTweaker as GC;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;


/* Vanilla */

// Crafting Table

// Furnace
global addFur as function(IItemStack, IItemStack)void = function (out as IItemStack, in_a as IItemStack) as void {
	furnace.addRecipe(out, in_a);	
};

/* Thermal Expansion */

// Compactor


/* Galacticraft */

// Circutit Fabricator
global addCiFa as function(IItemStack, IItemStack, IItemStack, IItemStack, IItemStack, IItemStack)void = function (out as IItemStack, in1 as IItemStack, in2 as IItemStack, in3 as IItemStack, in4 as IItemStack, in5 as IItemStack) as void {
	GC.addCircuitFabricatorRecipe(out, in1, in2, in3, in4, in5);
};


/* Applied Energistics 2 */

// Inscriber
global addIns as function(IItemStack, IItemStack, bool, IItemStack)void = function (in1 as IItemStack, in2 as IItemStack, consumeAll as bool, out as IItemStack) as void {
	Inscriber.addRecipe(in1, in2, consumeAll, out);	
};