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
	item.addTooltip(format.red("§cThis Item was removed!\n\nIt's not intendent to be used in this Modpack!"));
	JEI.hide(item);	
};