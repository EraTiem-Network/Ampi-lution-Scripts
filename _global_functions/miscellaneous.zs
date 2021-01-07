import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


/* Vanilla */

// Replace in Crafting Table
global replAll as function(IIngredient, IIngredient)void = function (item as IIngredient, replacement as IIngredient) as void {
	recipes.replaceAllOccurences(item, replacement);
};


/* Just Enough Items */

// hide
global hide as function(IItemStack)void = function (item as IItemStack) as void {
	JEI.hide(item);	
};