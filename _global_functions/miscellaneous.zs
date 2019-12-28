import crafttweaker.item.IItemStack;


/* Vanilla */

// Replace in Crafting Table
global replAll as function(IItemStack, IItemStack)void = function (item as IItemStack, replacement as IItemStack) as void {
	recipes.replaceAllOccurences(item, replacement);
};