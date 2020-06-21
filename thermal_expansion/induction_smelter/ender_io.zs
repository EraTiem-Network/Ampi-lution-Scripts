import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/* add all Alloy Smelter Recipes with 2 Ingots */

// Vibrant Alloy Ingot
remTEInSm(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);
addTEInSm(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>, 10000);

// Redstone Alloy Ingot
addTEInSm(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <appliedenergistics2:material:5>, 10000);

// Conductive Iron Ingot
remTEInSm(<minecraft:iron_ingot>, <minecraft:redstone>);
addTEInSm(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone>, 10000);

remTEInSm(<thermalfoundation:material:0>, <minecraft:redstone>);
addTEInSm(<enderio:item_alloy_ingot:4>, <thermalfoundation:material:0>, <minecraft:redstone>, 8500);

// Pulsating Iron Ingot
remTEInSm(<minecraft:iron_ingot>, <minecraft:ender_pearl>);
addTEInSm(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>, <minecraft:ender_pearl>, 10000);

remTEInSm(<thermalfoundation:material:0>, <minecraft:ender_pearl>);
addTEInSm(<enderio:item_alloy_ingot:5>, <thermalfoundation:material:0>, <minecraft:ender_pearl>, 8500);

// Dark Steel Ingot
remTEInSm(<thermalfoundation:material:160>, <thermalfoundation:material:770> * 4);
addTEInSm(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, <thermalfoundation:material:770> * 4, 10000);

remTEInSm(<thermalfoundation:material:96>, <thermalfoundation:material:770> * 4);
addTEInSm(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:96>, <thermalfoundation:material:770> * 4, 8500);

// Cake Base
for wheat_dust in <ore:dustWheat>.items {
	for egg in <ore:egg>.items {
		addTEInSm(<enderio:item_material:70>, wheat_dust * 3, egg, 2000);
	}
}

// Soularium Ingot
remTEInSm(<minecraft:soul_sand>, <thermalfoundation:material:1>);
addTEInSm(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <thermalfoundation:material:1>, 8500);

remTEInSm(<minecraft:soul_sand>, <minecraft:gold_ingot>);
addTEInSm(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <minecraft:gold_ingot>, 10000);

// Enlightened Fused Quartz
addTEInSm(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, <minecraft:glowstone_dust> * 4, 5000);
addTEInSm(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <minecraft:glowstone_dust> * 4, 3000);

for quartz_block in <ore:blockQuartz>.items {
	addTEInSm(<enderio:block_enlightened_fused_quartz>, quartz_block, <minecraft:glowstone_dust> * 4, 5000);
	
	for glowstone in <ore:blowstone>.items {
		addTEInSm(<enderio:block_enlightened_fused_quartz>, quartz_block, glowstone, 5000);
	}
}

for glowstone in <ore:glowstone>.items {
	addTEInSm(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, glowstone, 5000);
	addTEInSm(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, glowstone, 3000);
}

// Enlightened Clear Glass
addTEInSm(<enderio:block_enlightened_fused_glass>, <minecraft:glass>, <minecraft:glowstone_dust> * 4, 3000);
addTEInSm(<enderio:block_enlightened_fused_glass>, <enderio:block_fused_glass>, <minecraft:glowstone_dust> * 4, 1000);

// Dark Fused Quarz
for black_dye in <ore:dyeBlack>.items {
	addTEInSm(<enderio:block_dark_fused_quartz>, <minecraft:quartz> * 4, black_dye, 5000);

	for quartz_block in <ore:blockQuartz>.items {
		addTEInSm(<enderio:block_dark_fused_quartz>, quartz_block, black_dye, 5000);
	}
	addTEInSm(<enderio:block_dark_fused_quartz>, <enderio:block_fused_quartz>, black_dye, 2500);
}

// Dark Clear Glass
for black_dye in <ore:dyeBlack>.items {
	addTEInSm(<enderio:block_dark_fused_glass>, <minecraft:glass>, black_dye * 2, 3750);
	addTEInSm(<enderio:block_dark_fused_glass>, <enderio:block_fused_glass>, black_dye * 2, 1250);
}

// Organic Green Dye
for slimeball in <ore:slimeball>.items {
	addTEInSm(<enderio:item_material:48> * 2, <enderio:item_material:46> * 12, slimeball, 2000);
}

for egg in <ore:egg>.items {
	addTEInSm(<enderio:item_material:48>, <enderio:item_material:46> * 6, egg, 1500);
}

// Organic Brown Dye
for slimeball in <ore:slimeball>.items {
	addTEInSm(<enderio:item_material:49> * 2, <enderio:item_material:47> * 12, slimeball, 2000);
}

for egg in <ore:egg>.items {
	addTEInSm(<enderio:item_material:49>, <enderio:item_material:47> * 6, egg, 1500);
}

// Organic Black Dye
for slimeball in <ore:slimeball>.items {
	addTEInSm(<enderio:item_material:50> * 2, <thermalfoundation:material:768> * 6, slimeball, 2000);
	addTEInSm(<enderio:item_material:50> * 2, <thermalfoundation:material:769> * 6, slimeball, 2000);
}

for egg in <ore:egg>.items {
	addTEInSm(<enderio:item_material:50>, <thermalfoundation:material:768> * 3, egg, 1500);
	addTEInSm(<enderio:item_material:50>, <thermalfoundation:material:769> * 3, egg, 1500);
}

// Enhanced Machine Chassis
addTEInSm(<enderio:item_material:54>, <enderio:item_material:66>, <enderio:item_material:67>, 3600);

// Infinity Reagent
addTEInSm(<enderio:item_material:75>, <enderio:item_material:20>, <thermalfoundation:material:768>, 5000);
addTEInSm(<enderio:item_material:75>, <enderio:item_material:20>, <thermalfoundation:material:769>, 5000);

// 