import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.recipes.IRecipeFunction;
import mods.appliedenergistics2.Inscriber;
import mods.appliedenergistics2.Grinder;
import mods.avaritia.ExtremeCrafting;
import mods.chisel.Carving;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.GalacticraftTweaker as GC;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Transposer;


/* Vanilla */

// Crafting Table Shaped
global addShaped as function(string, IItemStack, IIngredient[][])void = function (name as string, out as IItemStack, inp as IIngredient[][]) as void {
	recipes.addShaped(name, out, inp);
};

// Crafting Table Shaped with Function
global addShapedFunc as function(string, IItemStack, IIngredient[][], IRecipeFunction)void = function (name as string, output as IItemStack, input as IIngredient[][], func as IRecipeFunction) as void {
	recipes.addShaped(name, output, input, func, null);
};

// Crafting Table Shapeless
global addShapeless as function(string, IItemStack, IIngredient[])void = function (name as string, out as IItemStack, inp as IIngredient[]) as void {
	recipes.addShapeless(name, out, inp);
};

// Crafting Table Shapeless with Action
// global addShapelessAct as function(string, IItemStack, IIngredient[], IRecipeFunction)void = function (name as string, out as IItemStack, inp as IIngredient[], act as IRecipeFunction) as void {
//	recipes.addShapeless(name, out, inp, function(out, ins, cInfo) { return out; }, act);
// };

// Crafting Table Shapeless with Function
global addShapelessFunc as function(string, IItemStack, IIngredient[], IRecipeFunction)void = function (name as string, out as IItemStack, inp as IIngredient[], func as IRecipeFunction) as void {
	recipes.addShapeless(name, out, inp, func, null);
};

// Furnace
global addFur as function(IItemStack, IIngredient)void = function (output as IItemStack, input as IIngredient) as void {
	furnace.addRecipe(output, input);	
};

// Furnace Fuel
global addFurFuel as function(IIngredient, int)void = function (input as IIngredient, burnTime as int) as void {
	furnace.setFuel(input, burnTime);
};


/* Applied Energistics 2 */

// Inscriber
global addIns as function(IItemStack, IItemStack, bool, IItemStack)void = function (in1 as IItemStack, in2 as IItemStack, consumeAll as bool, out as IItemStack) as void {
	Inscriber.addRecipe(in1, in2, consumeAll, out);	
};

// Grindstone
global addAE2Gri as function(IItemStack, IItemStack, int)void = function (output1 as IItemStack, input as IItemStack, turns as int) as void {
	Grinder.addRecipe(output1, input, turns);
};


/* Avaritia */

// Xtreme Crafting Table Shapeless
global addAvaXtrShapeless as function(string, IItemStack, IIngredient[])void = function (name as string, output as IItemStack, inputs as IIngredient[]) as void {
	ExtremeCrafting.addShapeless(name, output, inputs);
};

// Xtreme Crafting Table Shaped
global addAvaXtrShaped as function(string, IItemStack, IIngredient[][])void = function (name as string, output as IItemStack, inputs as IIngredient[][]) as void {
	ExtremeCrafting.addShaped(name, output, inputs);
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

// SAG Mill
global addEnderSAG as function(WeightedItemStack[], IIngredient, string, int)void = function (out as WeightedItemStack[], input as IIngredient, bonusType as string, energy as int) as void {
	SagMill.addRecipe(out, input, bonusType, energy);
};


/* Galacticraft */

// Circutit Fabricator
global addCiFa as function(IItemStack, IItemStack, IItemStack, IItemStack, IItemStack, IItemStack)void = function (out as IItemStack, in1 as IItemStack, in2 as IItemStack, in3 as IItemStack, in4 as IItemStack, in5 as IItemStack) as void {
	GC.addCircuitFabricatorRecipe(out, in1, in2, in3, in4, in5);
};

// Compressor
global addGalaComp2 as function(IItemStack, IItemStack, IItemStack)void = function (out as IItemStack, in1 as IItemStack, in2 as IItemStack) as void {
	GC.addCompressorShapelessRecipe(out, in1, in2);
};
global addGalaComp6Inp as function(IItemStack, IItemStack, IItemStack, IItemStack, IItemStack, IItemStack, IItemStack)void = function (out as IItemStack, in1 as IItemStack, in2 as IItemStack, in3 as IItemStack, in4 as IItemStack, in5 as IItemStack, in6 as IItemStack) as void {
	GC.addCompressorShapelessRecipe(out, in1, in2, in3, in4, in5, in6);
};


/* Thermal Expansion */

// Compactor
global addTEComp as function(IItemStack, IItemStack, int)void = function (out as IItemStack, inp as IItemStack, energy as int) as void {
	Compactor.addStorageRecipe(out, inp, energy);
};

// Fluid Transposer - Fill
global addTEFlTrFill as function(IItemStack, IItemStack, ILiquidStack, int)void = function (output as IItemStack, input as IItemStack, fluid as ILiquidStack, energy as int) as void {
	Transposer.addFillRecipe(output, input, fluid, energy);
};

// Induction Smelter
global addTEInSm as function(IItemStack, IItemStack, IItemStack, int)void = function (out1 as IItemStack, in1 as IItemStack, in2 as IItemStack, energy as int) as void {
	InductionSmelter.addRecipe(out1, in1, in2, energy);
};

// Pulverizer
global addTEPulv as function(IItemStack, IItemStack, int)void = function (output as IItemStack, input as IItemStack, energy as int) as void {
	Pulverizer.addRecipe(output, input, energy);	
};

// Pulverizer with Secondary Output
global addTEPulvSec as function(IItemStack, IItemStack, int, IItemStack, int)void = function (output as IItemStack, input as IItemStack, energy as int, secondary as IItemStack, chance as int) as void {
	Pulverizer.addRecipe(output, input, energy, secondary, chance);	
};

// Redstone Furnace
global addTERedFur as function(IItemStack, IItemStack, int)void = function (output as IItemStack, input as IItemStack, energy as int) as void {
	RedstoneFurnace.addRecipe(output, input, energy);
};