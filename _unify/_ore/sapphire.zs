import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ingot */

// OreDict
<ore:gemSapphire>.remove(<projectred-core:resource_item:201>);

// Recipes
remAndHide(<projectred-core:resource_item:201>);
replAll(<projectred-core:resource_item:201>, <biomesoplenty:gem:6>);

// Smelting
remFur(<projectred-core:resource_item:201>);
addFur(<biomesoplenty:gem:6>, <ore:gemSapphire>);

//AE2 Grindstone
remAE2Gri(<projectred-core:resource_item:201>);

// Block Drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	val sOres = [
        "projectred-exploration:ore:1"
    ] as string[];

	if (!event.silkTouch & sOres has (event.block.definition.id ~ ":" ~ event.block.meta)) {
			event.drops = [<biomesoplenty:gem:6> * event.drops.length] as IItemStack[];
			return;
	} 
});

/* Blocks */

// Recipes
rem(<projectred-exploration:stone:6>);