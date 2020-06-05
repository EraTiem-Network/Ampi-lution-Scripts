import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;
import mods.chisel.Carving;
import mods.enderio.AlloySmelter;
import mods.enderio.SliceNSplice;
import mods.GalacticraftTweaker as GC;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;


/* Vanilla */

// Crafting Table

global addShaped as function(string, IItemStack, IIngredient[][])void = function (name as string, out as IItemStack, inp as IIngredient[][]) as void {
	recipes.addShaped(name, out, inp);
};

// Furnace
global addFur as function(IItemStack, IItemStack)void = function (output as IItemStack, input as IItemStack) as void {
	furnace.addRecipe(output, input);	
};


/* Applied Energistics 2 */

// Inscriber
global addIns as function(IItemStack, IItemStack, bool, IItemStack)void = function (in1 as IItemStack, in2 as IItemStack, consumeAll as bool, out as IItemStack) as void {
	Inscriber.addRecipe(in1, in2, consumeAll, out);	
};


/* Chisel */

// Variation

global addChiselVar as function(string, IItemStack)void = function (group as string, item as IItemStack) as void {
	Carving.addVariation(group, item);
};
/* Ender IO */

// Alloy Smelter
global addEnderAlSm as function(IItemStack, IIngredient[], int, float)void = function (out as IItemStack, ins as IIngredient[], energy as int, xp as float) as void {
	AlloySmelter.addRecipe(out, ins, energy, xp);
};

// Slice'N'Splice
global addEnderSNS as function(IItemStack, IIngredient[], int, float)void = function (out as IItemStack, ins as IIngredient[], energy as int, xp as float) as void {
	SliceNSplice.addRecipe(out, ins, energy, xp);
};


/* Galacticraft */

// Circutit Fabricator
global addCiFa as function(IItemStack, IItemStack, IItemStack, IItemStack, IItemStack, IItemStack)void = function (out as IItemStack, in1 as IItemStack, in2 as IItemStack, in3 as IItemStack, in4 as IItemStack, in5 as IItemStack) as void {
	GC.addCircuitFabricatorRecipe(out, in1, in2, in3, in4, in5);
};


/* Thermal Expansion */

// Compactor
global addTECom as function(IItemStack, IItemStack, int)void = function (out as IItemStack, inp as IItemStack, energy as int) as void {
	Compactor.addStorageRecipe(out, inp, energy);
};

// Induction Smelter
global addTEInSm as function(IItemStack, IItemStack, IItemStack, int)void = function (out1 as IItemStack, in1 as IItemStack, in2 as IItemStack, energy as int) as void {
	InductionSmelter.addRecipe(out1, in1, in2, energy);
};