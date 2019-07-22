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