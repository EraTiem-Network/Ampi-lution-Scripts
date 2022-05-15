import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ingot */

// OreDict
<ore:gemPeridot>.remove(<projectred-core:resource_item:202>);

// Recipes
remAndHide(<projectred-core:resource_item:202>);
replAll(<projectred-core:resource_item:202>, <biomesoplenty:gem:2>);

// Smelting
remFur(<projectred-core:resource_item:202>);
addFur(<biomesoplenty:gem:2>, <ore:gemPeridot>);

//AE2 Grindstone
remAE2Gri(<projectred-core:resource_item:202>);

// Block Drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	val sOres = [
        "projectred-exploration:ore:2"
    ] as string[];

	if (!event.silkTouch & sOres has (event.block.definition.id ~ ":" ~ event.block.meta)) {
			event.drops = [<biomesoplenty:gem:2> * event.drops.length] as IItemStack[];
			return;
	} 
});

/* Blocks */

// Recipes
rem(<projectred-exploration:stone:7>);