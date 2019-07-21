import mods.enderio.AlloySmelter.removeRecipe as rem;
import mods.enderio.AlloySmelter.addRecipe as add;

/* Remove useless items/recipes */

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