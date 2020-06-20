import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;
import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.jei.JEI;
import mods.GalacticraftTweaker as GC;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;


/* Vanilla */

// Crafting Table without NBT
global rem as function(IItemStack)void = function (item as IItemStack) as void {
	recipes.remove(item);
};

// Crafting Table with NBT
global remNBT as function(IItemStack)void = function(item as IItemStack) as void {
	recipes.remove(item, true);
};

// Crafting Table by Name
global remByName as function(string)void = function(name as string) as void {
	recipes.removeByRecipeName(name);
};

// Crafting Table Shaped
global remShaped as function(IIngredient, IIngredient[][])void = function(out as IIngredient, inp as IIngredient[][]) as void {
	recipes.removeShaped(out, inp);
};

// Crafting Table Shapless
global remShapeless as function(IIngredient, IIngredient[])void = function(out as IIngredient, inp as IIngredient[]) as void {
	recipes.removeShapeless(out, inp);
};

// Furnace
global remFur as function(IItemStack)void = function(output as IItemStack) as void {
	furnace.remove(output);
};

// Furnace with Input
global remFurIn as function(IItemStack, IItemStack)void = function(out as IItemStack, inp as IItemStack) as void {
	furnace.remove(out, inp);
};


/* Applied Energistics 2 */

// Grinder
global remAE2Gri as function(IItemStack)void = function (inp as IItemStack) as void {
	Grinder.removeRecipe(inp);
};

// Inscriber
global remIns as function(IItemStack)void = function (out as IItemStack) as void {
	Inscriber.removeRecipe(out);
};


/* Avaritia */

// Neutronium Compressor
global remAvaComp as function(IItemStack)void = function (output as IItemStack) as void {
	Compressor.remove(output);
};

// Xtreme Crafting Table
global remAvaXtr as function(IItemStack)void = function (output as IItemStack) as void {
	ExtremeCrafting.remove(output);
};


/* Ender IO */

// Alloy Smelter
global remEnderAlSm as function(IItemStack)void = function (out as IItemStack) as void {
	AlloySmelter.removeRecipe(out);
};

// SAG Mill
global remEnderSAG as function(IItemStack)void = function (out as IItemStack) as void {
	SagMill.removeRecipe(out);
};

// Slice'N'Splice
global remEnderSNS as function(IItemStack)void = function (out as IItemStack) as void {
	SliceNSplice.removeRecipe(out);	
};


/* Galacticraft */

// Circuit Fabricator
global remCiFa as function(IItemStack)void = function (output as IItemStack) as void {
	GC.removeCircuitFabricatorRecipe(output);
};

// Compressor
global remGalaComp as function(IItemStack)void = function (output as IItemStack) as void {
	GC.removeCompressorRecipe(output);
};


/* Just Enough Items */

// Remove and hide without NBT
global remAndHide as function(IItemStack)void = function (item as IItemStack) as void {
	rem(item);
	JEI.hide(item);
};

// Remove and hide with NBT
global remAndHideNBT as function(IItemStack)void = function(item as IItemStack) as void {
	remNBT(item);
	JEI.removeAndHide(item, true);
};


/* Thermal Expansion */

// Compactor
global remTECom as function(IItemStack)void = function (item as IItemStack) as void {
	Compactor.removeStorageRecipe(item);
};

// Induction Smelter
global remTEInSm as function(IItemStack, IItemStack)void = function (item1 as IItemStack, item2 as IItemStack) as void {
	InductionSmelter.removeRecipe(item1, item2);
};