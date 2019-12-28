import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;
import mods.enderio.AlloySmelter;
import mods.enderio.SliceNSplice;
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


/* Applied Energistics 2 */

// Inscriber
global remIns as function(IItemStack)void = function (out as IItemStack) as void {
	Inscriber.removeRecipe(out);
};


/* Ender IO */

// Alloy Smelter
global remEnderAlSm as function(IItemStack)void = function (out as IItemStack) as void {
	AlloySmelter.removeRecipe(out);
};

// Slice'N'Splice
global remEnderSNS as function(IItemStack)void = function (out as IItemStack) as void {
	SliceNSplice.removeRecipe(out);	
};


/* Galacticraft */

// Circuit Fabricator
global remCiFa as function(IItemStack)void = function (item as IItemStack) as void {
	GC.removeCircuitFabricatorRecipe(item);	
};


/* Just Enough Items */

// Remove and hide without NBT
global remAndHide as function(IItemStack)void = function (item as IItemStack) as void {
	rem(item);
	mods.jei.JEI.removeAndHide(item);
};

// Remove and hide with NBT
global remAndHideNBT as function(IItemStack)void = function(item as IItemStack) as void {
	remNBT(item);
	mods.jei.JEI.removeAndHide(item, true);
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

// Furnace
global remFur as function(IItemStack)void = function(item as IItemStack) as void {
	furnace.remove(item);
};