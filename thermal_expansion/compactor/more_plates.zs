import mods.thermalexpansion.Compactor.addStorageRecipe as add;
import mods.thermalexpansion.Compactor.removeStorageRecipe as rem;
import crafttweaker.item.IItemStack;


/* Adjust all plate recipes to 2 inputs */

rem(<extrautils2:ingredients:0>);

val inputs = [<appliedenergistics2:material:10>, <appliedenergistics2:material:0>, <appliedenergistics2:material:12>, <appliedenergistics2:material:7>, <avaritia:resource:1>,
  <avaritia:resource:6>, <avaritia:resource:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:0>, <enderio:item_alloy_ingot:8>,
  <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_ingot:2>,
  <extrautils2:ingredients:11>, <extrautils2:ingredients:12>, <extrautils2:ingredients:17>, <minecraft:coal:0>, <minecraft:diamond>, <minecraft:emerald>, <minecraft:glowstone_dust>, 
  <minecraft:dye:4>, <minecraft:quartz>, <minecraft:redstone>, <projecte:item.pe_matter:0>, <projecte:item.pe_matter:1>, <tconstruct:ingots:1>, <tconstruct:ingots:0>, <tconstruct:ingots:3>,
  <tconstruct:ingots:2>, <tconstruct:ingots:4>] as IItemStack[];

val outputs = [<moreplates:certus_quartz_plate>, <moreplates:certus_quartz_plate>, <moreplates:fluix_plate>, <moreplates:fluix_plate>, <moreplates:crystal_matrix_plate>,
  <moreplates:infinity_plate>, <moreplates:neutronium_plate>, <moreplates:conductive_iron_plate>, <moreplates:dark_steel_plate>, <moreplates:electrical_steel_plate>,
  <moreplates:end_steel_plate>, <moreplates:energetic_alloy_plate>, <moreplates:iron_alloy_plate>, <moreplates:pulsating_iron_plate>, <moreplates:redstone_alloy_plate>,
  <moreplates:soularium_plate>, <moreplates:vibrant_alloy_plate>, <moreplates:demon_plate>, <moreplates:enchanted_plate>, <moreplates:evil_infused_iron_plate>, <moreplates:coal_plate>,
  <moreplates:diamond_plate>, <moreplates:emerald_plate>, <moreplates:glowstone_plate>, <moreplates:lapis_lazuli_plate>, <moreplates:nether_quartz_plate>, <moreplates:redstone_plate>,
  <moreplates:dark_matter_plate>, <moreplates:red_matter_plate>, <moreplates:ardite_plate>, <moreplates:cobalt_plate>, <moreplates:knightslime_plate>, <moreplates:manyullyn_plate>,
  <moreplates:pig_iron_plate>] as IItemStack[];

for i in 0 to 33 {
	rem(inputs[i]);
	add(outputs[i], inputs[i] * 2, 6000);
}