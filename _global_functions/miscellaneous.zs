import crafttweaker.item.IItemStack;
import mods.jei.JEI;


/* Vanilla */

// Replace in Crafting Table
global replAll as function(IItemStack, IItemStack)void = function (item as IItemStack, replacement as IItemStack) as void {
	recipes.replaceAllOccurences(item, replacement);
};


/* Just Enough Items */

// hide
global hide as function(IItemStack)void = function (item as IItemStack) as void {
	JEI.hide(item);	
};