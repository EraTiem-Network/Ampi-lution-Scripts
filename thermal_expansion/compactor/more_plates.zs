import crafttweaker.item.IItemStack;


/* Adjust all plate recipes to 2 inputs */

remTEComp(<extrautils2:ingredients:0>);

val items = {
	<appliedenergistics2:material:10> : <moreplates:certus_quartz_plate>,
	<appliedenergistics2:material:0> : <moreplates:certus_quartz_plate>,
	<appliedenergistics2:material:12> : <moreplates:fluix_plate>,
	<appliedenergistics2:material:7> : <moreplates:fluix_plate>,
	<avaritia:resource:1> : <moreplates:crystal_matrix_plate>,
	<avaritia:resource:6> : <moreplates:infinity_plate>,
	<avaritia:resource:4> : <moreplates:neutronium_plate>,
	<enderio:item_alloy_ingot:4> : <moreplates:conductive_iron_plate>,
	<enderio:item_alloy_ingot:6> : <moreplates:dark_steel_plate>,
	<enderio:item_alloy_ingot:0> : <moreplates:electrical_steel_plate>,
	<enderio:item_alloy_ingot:8> : <moreplates:end_steel_plate>,
	<enderio:item_alloy_ingot:1> : <moreplates:energetic_alloy_plate>,
	<enderio:item_alloy_ingot:9> : <moreplates:iron_alloy_plate>,
	<enderio:item_alloy_ingot:5> : <moreplates:pulsating_iron_plate>,
	<enderio:item_alloy_ingot:3> : <moreplates:redstone_alloy_plate>,
	<enderio:item_alloy_ingot:7> : <moreplates:soularium_plate>,
	<enderio:item_alloy_ingot:2> : <moreplates:vibrant_alloy_plate>,
	<extrautils2:ingredients:11> : <moreplates:demon_plate>,
	<extrautils2:ingredients:12> : <moreplates:enchanted_plate>,
	<extrautils2:ingredients:17> : <moreplates:evil_infused_iron_plate>,
	<minecraft:coal:0> : <moreplates:coal_plate>,
	<minecraft:diamond> : <moreplates:diamond_plate>,
	<minecraft:emerald> : <moreplates:emerald_plate>,
	<minecraft:glowstone_dust> : <moreplates:glowstone_plate>,
	<minecraft:dye:4> : <moreplates:lapis_lazuli_plate>,
	<minecraft:quartz> : <moreplates:nether_quartz_plate>,
	<minecraft:redstone> : <moreplates:redstone_plate>,
	<tconstruct:ingots:1> : <moreplates:ardite_plate>,
	<tconstruct:ingots:0> : <galaxyspace:compressed_plates:1>,
	<tconstruct:ingots:3> : <moreplates:knightslime_plate>,
	<tconstruct:ingots:2> : <moreplates:manyullyn_plate>,
	<tconstruct:ingots:4> : <moreplates:pig_iron_plate>
} as IItemStack[IItemStack];

for input, output in items {
	remTEComp(input);
	addTEComp(output, input * 2, 6000);
}