import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;


/* Ore */

// Block Drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	if ((event.block.definition.id ~ ":" ~ event.block.meta) == "galaxyspace:gsores:2") {
			event.drops = [<galaxyspace:gsores:2>] as IItemStack[];
			return;
	}
});


/* Uranium */

// Remove and Hide
remAndHide(<galaxyspace:gs_basic:15>);