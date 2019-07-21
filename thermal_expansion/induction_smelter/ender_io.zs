import mods.thermalexpansion.InductionSmelter.addRecipe as add;
import mods.thermalexpansion.InductionSmelter.removeRecipe as rem;

/* Add/Change all Alloy Smelter Recipes with 2 Ingots */

// Vibrant Alloy Ingot
rem(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>, 10000);

// Redstone Alloy Ingot
add(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <appliedenergistics2:material:5>, 10000);
add(<enderio:item_alloy_ingot:3>, <minecraft:redstone>, <galacticraftcore:basic_item:2>, 10000);

// Conductive Iron Ingot
rem(<minecraft:iron_ingot>, <minecraft:redstone>);
add(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone>, 10000);

rem(<thermalfoundation:material:0>, <minecraft:redstone>);
add(<enderio:item_alloy_ingot:4>, <thermalfoundation:material:0>, <minecraft:redstone>, 8500);

// Pulsating Iron Ingot
rem(<minecraft:iron_ingot>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:5>, <minecraft:iron_ingot>>, <minecraft:ender_pearl>, 10000);

rem(<thermalfoundation:material:0>, <minecraft:ender_pearl>);
add(<enderio:item_alloy_ingot:5>, <thermalfoundation:material:0>, <minecraft:ender_pearl>, 8500);

// Dark Steel Ingot
rem(<thermalfoundation:material:160>, <thermalfoundation:material:770> * 4);
add(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:160>, <thermalfoundation:material:770> * 4, 10000);

rem(<thermalfoundation:material:96>, <thermalfoundation:material:770> * 4);
add(<enderio:item_alloy_ingot:6>, <thermalfoundation:material:96>, <thermalfoundation:material:770> * 4, 8500);

// Cake Base
add(<enderio:item_material:70>, <ore:dustWheat> * 3, <ore:egg>, 2000);

// Soularium Ingot
rem(<minecraft:soul_sand>, <thermalfoundation:material:1>);
add(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <thermalfoundation:material:1>, 8500);

rem(<minecraft:soul_sand>, <minecraft:gold_ingot>);
add(<enderio:item_alloy_ingot:7>, <minecraft:soul_sand>, <minecraft:gold_ingot>, 10000);

// Enlightened Fused Quartz
add(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, <minecraft:glowstone_dust> * 4, 5000);
add(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <minecraft:glowstone_dust> * 4, 3000);
add(<enderio:block_enlightened_fused_quartz>, <ore:blockQuarz>, <minecraft:glowstone_dust> * 4, 5000);
add(<enderio:block_enlightened_fused_quartz>, <ore:blockQuarz>, <ore:glowstone>, 5000);
add(<enderio:block_enlightened_fused_quartz>, <minecraft:quartz> * 4, <ore:glowstone>, 5000);
add(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <ore:glowstone>, 3000);

// Enlightened Clear Glass
add(<enderio:block_enlightened_fused_glass>, <minecraft:glass>, <minecraft:glowstone_dust> * 4, 3500);
add(<enderio:block_enlightened_fused_glass>, <enderio:block_fused_glass>, <minecraft:glowstone_dust> * 4, 3000);