import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.block.IBlock;


/* Item */

// OreDict
<ore:itemSilicon>.remove(<galacticraftcore:basic_item:2>);
<ore:itemSilicon>.remove(<enderio:item_material:5>);

// Recipes and Hide
replAll(<galacticraftcore:basic_item:2>, <appliedenergistics2:material:5>);
replAll(<enderio:item_material:5>, <appliedenergistics2:material:5>);
remAndHide(<galacticraftcore:basic_item:2>);
remAndHide(<simplyjetpacks:metaitemmods:12>);

// Furnace
remFur(<galacticraftcore:basic_item:2>);
addFur(<appliedenergistics2:material:5>, <appliedenergistics2:material:2>);
addFur(<appliedenergistics2:material:5>, <appliedenergistics2:material:3>);
addFur(<appliedenergistics2:material:5>, <ore:oreSilicon>);

// Block Drops

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	val sOres = [
		"galacticraftcore:basic_block_core:8",
		"galacticraftplanets:venus:10",
		"galaxyspace:europablocks:4",
		"galaxyspace:proxima_b_blocks:9",
		"moreplanets:fronos_silicon_ore:0",
		"moreplanets:infected_silicon_ore:0",
		"galaxyspace:marsores:4",
		"galaxyspace:barnarda_c_ores:6"
	] as string[];

	if (!event.silkTouch & sOres has (event.block.definition.id ~ ":" ~ event.block.meta)) {
			event.drops = [<appliedenergistics2:material:5> * event.drops.length] as IItemStack[];
			return;
	}
});


/* Printed Silicon */

// Inscriber
remIns(<appliedenergistics2:material:20>);
addIns(<appliedenergistics2:material:20>, <appliedenergistics2:material:5>, true, <appliedenergistics2:material:19>);


/* Wafer */

// Galacticraft Circuit Fabricator
remCiFa(<galacticraftcore:basic_item:12> * 9);
remCiFa(<galacticraftcore:basic_item:13> * 3);
remCiFa(<galacticraftcore:basic_item:14>);
remCiFa(<galacticraftplanets:basic_item_venus:6> * 3);
remCiFa(<extraplanets:wafer:0> * 3);
remCiFa(<extraplanets:wafer:2> * 3);
remCiFa(<extraplanets:wafer:1> * 3);
remCiFa(<extraplanets:wafer:3> * 3);
remCiFa(<extraplanets:wafer:4> * 3);
remCiFa(<extraplanets:wafer:5> * 3);
addCiFa(<galacticraftcore:basic_item:12> * 9, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:dye:4>);
addCiFa(<galacticraftcore:basic_item:13> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_torch>);
addCiFa(<galacticraftcore:basic_item:14>, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);
addCiFa(<galacticraftplanets:basic_item_venus:14> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <galacticraftplanets:basic_item_venus:4>);
addCiFa(<extraplanets:wafer:0> * 3, <minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_lamp>);
addCiFa(<extraplanets:wafer:2> * 3, <galacticraftplanets:item_basic_asteroids:0>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:redstone_torch>);
addCiFa(<extraplanets:wafer:1> * 3, <extraplanets:tier4_items:5>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:comparator>);
addCiFa(<extraplanets:wafer:3> * 3, <extraplanets:tier5_items:8>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);
addCiFa(<extraplanets:wafer:4> * 3, <extraplanets:tier8_items:6>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);
addCiFa(<extraplanets:wafer:5> * 3, <extraplanets:tier7_items:7>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <minecraft:redstone>, <minecraft:repeater>);


/* Electrical Steel Ingot */

// Ender Alloy Smelter
remEnderAlSm(<enderio:item_alloy_ingot:0>);
addEnderAlSm(<enderio:item_alloy_ingot:0>, [<minecraft:iron_ingot>, <thermalfoundation:material:768>, <appliedenergistics2:material:5>] as IIngredient[], 10000, 0 as float);


/* Electrode, Controller, Resonator, Contractor, Diode */

// Ender Slice'N'Splice
remEnderSNS(<enderio:item_material:40>);
remEnderSNS(<enderio:item_material:41>);
remEnderSNS(<enderio:item_material:43>);
remEnderSNS(<enderio:item_material:45>);
remEnderSNS(<enderio:item_material:56>);
addEnderSNS(<enderio:item_material:40>, [<enderio:item_alloy_ingot:1>, <minecraft:skull:2>, <enderio:item_alloy_ingot:1>, <appliedenergistics2:material:5>, <enderio:item_basic_capacitor:0>, <appliedenergistics2:material:5>] as IIngredient[], 20000, 0 as float);
addEnderSNS(<enderio:item_material:41>, [<enderio:item_alloy_ingot:7>, <minecraft:skull:2>, <enderio:item_alloy_ingot:7>, <appliedenergistics2:material:5>, <minecraft:redstone>, <appliedenergistics2:material:5>] as IIngredient[], 20000, 0 as float);
addEnderSNS(<enderio:item_material:43>, [<enderio:item_alloy_ingot:7>, <enderio:block_enderman_skull>, <enderio:item_alloy_ingot:7>, <appliedenergistics2:material:5>, <enderio:item_alloy_ingot:2>, <appliedenergistics2:material:5>] as IIngredient[], 20000, 0as float);
addEnderSNS(<enderio:item_material:45>, [<enderio:item_alloy_ingot:7>, <minecraft:skull:0>, <enderio:item_alloy_ingot:7>, <minecraft:rotten_flesh>, <appliedenergistics2:material:5>, <minecraft:rotten_flesh>] as IIngredient[], 20000, 0 as float);
addEnderSNS(<enderio:item_material:56>, [<enderio:item_alloy_ingot:1>, <minecraft:prismarine_shard>, <enderio:item_alloy_ingot:1>, <minecraft:prismarine_crystals>, <appliedenergistics2:material:5>, <minecraft:prismarine_crystals>] as IIngredient[], 20000, 0 as float);
addEnderSNS(<enderio:item_material:56>, [<enderio:item_alloy_ingot:1>, <moreplanets:infected_prismarine_shard>, <enderio:item_alloy_ingot:1>, <moreplanets:infected_prismarine_crystals>, <appliedenergistics2:material:5>, <moreplanets:infected_prismarine_crystals>] as IIngredient[], 20000, 0 as float);