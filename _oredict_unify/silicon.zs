import crafttweaker.oredict.IOreDictEntry;
import mods.appliedenergistics2.Inscriber;
import mods.GalacticraftTweaker as GC;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

// Remove GC from OreDict
<ore:itemSilicon>.remove(<galacticraftcore:basic_item:2>);

// Replace all GC with AE2
recipes.replaceAllOccurences(<galacticraftcore:basic_item:2>, <appliedenergistics2:material:5>);

// Adjust Inscriper (just to be safe)
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <appliedenergistics2:material:5>, true, <appliedenergistics2:material:19>);

// Adjust Circuit Fabricator Recipes
GC.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 9);
GC.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3);
GC.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>);
GC.removeCircuitFabricatorRecipe(<galacticraftplanets:basic_item_venus:6> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:0> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:1> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:3> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:4> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:5> * 3);

GC.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 9, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:dye:4>);

GC.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_torch>);

GC.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);

GC.addCircuitFabricatorRecipe(<galacticraftplanets:basic_item_venus:14> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <galacticraftplanets:basic_item_venus:4>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:0> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_lamp>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3, <galacticraftplanets:item_basic_asteroids:0>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_torch>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:1> * 3, <extraplanets:tier4_items:5>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:comparator>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:3> * 3, <extraplanets:tier5_items:8>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:4> * 3, <extraplanets:tier8_items:6>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:5> * 3, <extraplanets:tier7_items:7>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);


// Adjust Furnace Recipes
furnace.remove(<galacticraftcore:basic_item:2>);
furnace.addRecipe(<appliedenergistics2:material:5>, <appliedenergistics2:material:2>);
furnace.addRecipe(<appliedenergistics2:material:5>, <appliedenergistics2:material:3>);
furnace.addRecipe(<appliedenergistics2:material:5>, <ore:oreSilicon>);


// Block Drops



events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	val sOres = ["galacticraftcore:basic_block_core:8", "galacticraftplanets:venus:10", "galaxyspace:europablocks:4", "galaxyspace:proxima_b_blocks:9", "moreplanets:fronos_silicon_ore:0", "moreplanets:infected_silicon_ore:0", "galaxyspace:marsores:4", "galaxyspace:barnarda_c_ores:6"] as string[];
	
	val sBlock = event.block.definition.id ~ ":" ~ event.block.meta;

	if (!event.silkTouch & sOres has sBlock) {
		event.drops = [<appliedenergistics2:material:5> * event.drops.length] as IItemStack[];
		return;
	}
});


//mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);