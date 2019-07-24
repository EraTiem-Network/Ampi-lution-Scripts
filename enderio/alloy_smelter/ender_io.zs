import mods.enderio.AlloySmelter.removeRecipe as rem;
import mods.enderio.AlloySmelter.addRecipe as add;


/* Remove/Change useless items/recipes */

// Enderium Base --> Ingot
rem(<enderio:item_material:39>);
rem(<thermalfoundation:material:167>);
add(<thermalfoundation:material:167> * 4, [<thermalfoundation:material:131> * 3, <thermalfoundation:material:134>, <minecraft:ender_pearl> * 4], 50000);

// Photovoltaic Plate
rem(<enderio:item_material:3>);


/* Remove all recipes with only 2 Input-Items --> Moved to Induction Smelter */

// Vibrant Alloy Ingot
rem(<enderio:item_alloy_ingot:2>);

// Redstone Alloy Ingot
rem(<enderio:item_alloy_ingot:3>);

// Conductive Iron Ingot
rem(<enderio:item_alloy_ingot:4>);

// Pulsating Iron Ingot
rem(<enderio:item_alloy_ingot:5>);

// Dark Steel Ingot
rem(<enderio:item_alloy_ingot:6>);
add(<enderio:item_alloy_ingot:6>, [<minecraft:iron_ingot>, <thermalfoundation:material:768>, <thermalfoundation:material:770> * 4], 20000);

// Cake Base
rem(<enderio:item_material:70>);

// Soularium Ingot
rem(<enderio:item_alloy_ingot:7>);

// Enlightened Fused Quartz
rem(<enderio:block_enlightened_fused_quartz>);

// Enlightened Clear Glass
rem(<enderio:block_enlightened_fused_glass>);

// Dark Fused Quartz
rem(<enderio:block_dark_fused_quartz>);

// Dark Clear Glass
rem(<enderio:block_dark_fused_glass>);

// Organic Green Dye
rem(<enderio:item_material:48>);
add(<enderio:item_material:48> * 2, [<ore:dyeGreen> * 2, <ore:slimeball>, <thermalfoundation:material:768> * 2], 2000);
add(<enderio:item_material:48> * 2, [<ore:dyeGreen> * 2, <ore:slimeball>, <thermalfoundation:material:769> * 2], 2000);
add(<enderio:item_material:48>, [<ore:dyeGreen>, <ore:egg>, <thermalfoundation:material:768>], 1500);
add(<enderio:item_material:48>, [<ore:dyeGreen>, <ore:egg>, <thermalfoundation:material:769>], 1500);

// Organic Brown Dye
rem(<enderio:item_material:49>);
add(<enderio:item_material:49> * 2, [<ore:dyeBrown> * 2, <ore:slimeball>, <thermalfoundation:material:768> * 2], 2000);
add(<enderio:item_material:49> * 2, [<ore:dyeBrown> * 2, <ore:slimeball>, <thermalfoundation:material:769> * 2], 2000);
add(<enderio:item_material:49>, [<ore:dyeBrown>, <ore:egg>, <thermalfoundation:material:768>], 1500);
add(<enderio:item_material:49>, [<ore:dyeBrown>, <ore:egg>, <thermalfoundation:material:769>], 1500);

// Organic Black Dye
rem(<enderio:item_material:50>);

// Menyullyn Ingot
rem(<tconstruct:ingots:2>);

// Steel Ingot
rem(<thermalfoundation:material:160>);

// Electrum Ingot
rem(<thermalfoundation:material:161>);

// Invar Ingot
rem(<thermalfoundation:material:162>);

// Bronze Ingot
rem(<thermalfoundation:material:163>);

// Constantan Ingot
rem(<thermalfoundation:material:164>);

// Industial Machine Chassis
rem(<enderio:item_material:1>);

// Enhanced Machine Chassis
rem(<enderio:item_material:54>);

// Soul Machine Chassis
rem(<enderio:item_material:53>);

// Infinity Reagent
rem(<enderio:item_material:75>);


/* Remove all recipes with only 1 ingot --> moved to furnace */

// Fused Quartz
rem(<enderio:block_fused_quartz:0>);

// Quite Clear Glass
rem(<enderio:block_fused_glass:0>);

// 