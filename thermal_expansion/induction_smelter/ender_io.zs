import mods.thermalexpansion.InductionSmelter.addRecipe as add;
import mods.thermalexpansion.InductionSmelter.removeRecipe as rem;
import crafttweaker.oredict.IOreDictEntry;

/* Add/Change all Alloy Smelter Recipes with 2 Ingots */

// Vibrant Alloy Ingot
rem(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>, 10000);

// Redstone Alloy Ingot
add(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <appliedenergistics2:material:5>, 10000);

// Conductive Iron Ingot
rem(<minecraft:iron_ingot>, <minecraft:redstone>);
add(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone>, 10000);

rem(<thermalfoundation:material:0>, <minecraft:redstone>);
add(<enderio:item_alloy_ingot:4>, <thermalfoundation:material:0>, <minecraft:redstone>, 8500);

// Pulsating Iron Ingot
rem(<minecraft:iron_ingot>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, <minecraft:ender_pearl>, 10000);

rem(<thermalfoundation:material:0>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:5>, <thermalfoundation:material:0>, <minecraft:ender_pearl>, 8500);

// Dark Steel Ingot
rem(<thermalfoundation:material:160>, <thermalfoundation:material:770> * 4);
add(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, <thermalfoundation:material:770> * 4, 10000);

rem(<thermalfoundation:material:96>, <thermalfoundation:material:770> * 4);
add(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:96>, <thermalfoundation:material:770> * 4, 8500);

// Cake Base
for wheat_dust in <ore:dustWheat>.items {
	for egg in <ore:egg>.items {
		add(<enderio:item_material:70>, wheat_dust * 3, egg, 2000);
	}
}

// Soularium Ingot
rem(<minecraft:soul_sand>, <thermalfoundation:material:1>);
add(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <thermalfoundation:material:1>, 8500);

rem(<minecraft:soul_sand>, <minecraft:gold_ingot>);
add(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <minecraft:gold_ingot>, 10000);

// Enlightened Fused Quartz
add(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, <minecraft:glowstone_dust> * 4, 5000);
add(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <minecraft:glowstone_dust> * 4, 3000);

for quartz_block in <ore:blockQuartz>.items {
	add(<enderio:block_enlightened_fused_quartz>, quartz_block, <minecraft:glowstone_dust> * 4, 5000);
	
	for glowstone in <ore:blowstone>.items {
		add(<enderio:block_enlightened_fused_quartz>, quartz_block, glowstone, 5000);
	}
}

for glowstone in <ore:glowstone>.items {
	add(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, glowstone, 5000);
	add(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, glowstone, 3000);
}

// Enlightened Clear Glass
add(<enderio:block_enlightened_fused_glass>, <minecraft:glass>, <minecraft:glowstone_dust> * 4, 3000);
add(<enderio:block_enlightened_fused_glass>, <enderio:block_fused_glass>, <minecraft:glowstone_dust> * 4, 1000);

// Dark Fused Quarz
for black_dye in <ore:dyeBlack>.items {
	add(<enderio:block_dark_fused_quartz>, <minecraft:quartz> * 4, black_dye, 5000);

	for quartz_block in <ore:blockQuartz>.items {
		add(<enderio:block_dark_fused_quartz>, quartz_block, black_dye, 5000);
	}
	add(<enderio:block_dark_fused_quartz>, <enderio:block_fused_quartz>, black_dye, 2500);
}

// Dark Clear Glass
for black_dye in <ore:dyeBlack>.items {
	add(<enderio:block_dark_fused_glass>, <minecraft:glass>, black_dye * 2, 3750);
	add(<enderio:block_dark_fused_glass>, <enderio:block_fused_glass>, black_dye * 2, 1250);
}

// Organic Green Dye
for slimeball in <ore:slimeball>.items {
	add(<enderio:item_material:48> * 2, <enderio:item_material:46> * 12, slimeball, 2000);
}

for egg in <ore:egg>.items {
	add(<enderio:item_material:48>, <enderio:item_material:46> * 6, egg, 1500);
}

// Organic Brown Dye
for slimeball in <ore:slimeball>.items {
	add(<enderio:item_material:49> * 2, <enderio:item_material:47> * 12, slimeball, 2000);
}

for egg in <ore:egg>.items {
	add(<enderio:item_material:49>, <enderio:item_material:47> * 6, egg, 1500);
}

// Organic Black Dye
for slimeball in <ore:slimeball>.items {
	add(<enderio:item_material:50> * 2, <thermalfoundation:material:768> * 6, slimeball, 2000);
	add(<enderio:item_material:50> * 2, <thermalfoundation:material:769> * 6, slimeball, 2000);
}

for egg in <ore:egg>.items {
	add(<enderio:item_material:50>, <thermalfoundation:material:768> * 3, egg, 1500);
	add(<enderio:item_material:50>, <thermalfoundation:material:769> * 3, egg, 1500);
}

// Enhanced Machine Chassis
add(<enderio:item_material:54>, <enderio:item_material:66>, <enderio:item_material:67>, 3600);

// Infinity Reagent
add(<enderio:item_material:75>, <enderio:item_material:20>, <thermalfoundation:material:768>, 5000);
add(<enderio:item_material:75>, <enderio:item_material:20>, <thermalfoundation:material:769>, 5000);

// 