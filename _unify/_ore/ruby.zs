import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


/* Ingot */

// OreDict
<ore:gemRuby>.remove(<projectred-core:resource_item:200>);

// Recipes
remAndHide(<projectred-core:resource_item:200>);
replAll(<projectred-core:resource_item:200>, <biomesoplenty:gem:1>);

// Smelting
remFur(<projectred-core:resource_item:200>);
addFur(<biomesoplenty:gem:1>, <ore:gemRuby>);

//AE2 Grindstone
remAE2Gri(<projectred-core:resource_item:200>);

// Block Drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	val sOres = [
        "projectred-exploration:ore:0"
    ] as string[];

	if (!event.silkTouch & sOres has (event.block.definition.id ~ ":" ~ event.block.meta)) {
			event.drops = [<biomesoplenty:gem:1> * event.drops.length] as IItemStack[];
			return;
	} 
});

/* Blocks */

// Recipes
rem(<projectred-exploration:stone:5>);