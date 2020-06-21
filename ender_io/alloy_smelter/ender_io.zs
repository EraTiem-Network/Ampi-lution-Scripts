import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


/* Remove/Change useless items/recipes */

// Enderium Base --> Ingot
remEnderAlSm(<enderio:item_material:39>);
remEnderAlSm(<thermalfoundation:material:167>);
addEnderAlSm(<thermalfoundation:material:167> * 4, [<thermalfoundation:material:131> * 3, <thermalfoundation:material:134>, <minecraft:ender_pearl> * 4] as IIngredient[], 50000, 0 as float);

// Photovoltaic Plate
remEnderAlSm(<enderio:item_material:3>);


/* Remove all recipes with only 2 Input-Items --> Moved to Induction Smelter */

// Vibrant Alloy Ingot
remEnderAlSm(<enderio:item_alloy_ingot:2>);

// Redstone Alloy Ingot
remEnderAlSm(<enderio:item_alloy_ingot:3>);

// Conductive Iron Ingot
remEnderAlSm(<enderio:item_alloy_ingot:4>);

// Pulsating Iron Ingot
remEnderAlSm(<enderio:item_alloy_ingot:5>);

// Cake Base
remEnderAlSm(<enderio:item_material:70>);

// Soularium Ingot
remEnderAlSm(<enderio:item_alloy_ingot:7>);

// Enlightened Fused Quartz
remEnderAlSm(<enderio:block_enlightened_fused_quartz>);

// Enlightened Clear Glass
remEnderAlSm(<enderio:block_enlightened_fused_glass>);

// Dark Fused Quartz
remEnderAlSm(<enderio:block_dark_fused_quartz>);

// Dark Clear Glass
remEnderAlSm(<enderio:block_dark_fused_glass>);

// Organic Black Dye
remEnderAlSm(<enderio:item_material:50>);

// Menyullyn Ingot
remEnderAlSm(<tconstruct:ingots:2>);

// Steel Ingot
remEnderAlSm(<thermalfoundation:material:160>);

// Electrum Ingot
remEnderAlSm(<thermalfoundation:material:161>);

// Invar Ingot
remEnderAlSm(<thermalfoundation:material:162>);

// Bronze Ingot
remEnderAlSm(<thermalfoundation:material:163>);

// Constantan Ingot
remEnderAlSm(<thermalfoundation:material:164>);

// Industial Machine Chassis
remEnderAlSm(<enderio:item_material:1>);

// Enhanced Machine Chassis
remEnderAlSm(<enderio:item_material:54>);

// Soul Machine Chassis
remEnderAlSm(<enderio:item_material:53>);

// Infinity Reagent
remEnderAlSm(<enderio:item_material:75>);


/* Remove all recipes with only 1 ingot --> moved to furnace */

// Fused Quartz
remEnderAlSm(<enderio:block_fused_quartz:0>);

// Quite Clear Glass
remEnderAlSm(<enderio:block_fused_glass:0>);


/* Adjusted Recipes */

// Dark Steel Ingot
remEnderAlSm(<enderio:item_alloy_ingot:6>);
addEnderAlSm(<enderio:item_alloy_ingot:6>, [<minecraft:iron_ingot>, <thermalfoundation:material:768>, <thermalfoundation:material:770> * 4] as IIngredient[], 20000, 0 as float);

// Organic Green Dye
remEnderAlSm(<enderio:item_material:48>);
addEnderAlSm(<enderio:item_material:48> * 2, [<ore:dyeGreen> * 2, <ore:slimeball>, <thermalfoundation:material:768> * 2] as IIngredient[], 2000, 0 as float);
addEnderAlSm(<enderio:item_material:48> * 2, [<ore:dyeGreen> * 2, <ore:slimeball>, <thermalfoundation:material:769> * 2] as IIngredient[], 2000, 0 as float);
addEnderAlSm(<enderio:item_material:48>, [<ore:dyeGreen>, <ore:egg>, <thermalfoundation:material:768>] as IIngredient[], 1500, 0 as float);
addEnderAlSm(<enderio:item_material:48>, [<ore:dyeGreen>, <ore:egg>, <thermalfoundation:material:769>] as IIngredient[], 1500, 0 as float);

// Organic Brown Dye
remEnderAlSm(<enderio:item_material:49>);
addEnderAlSm(<enderio:item_material:49> * 2, [<ore:dyeBrown> * 2, <ore:slimeball>, <thermalfoundation:material:768> * 2] as IIngredient[], 2000, 0 as float);
addEnderAlSm(<enderio:item_material:49> * 2, [<ore:dyeBrown> * 2, <ore:slimeball>, <thermalfoundation:material:769> * 2] as IIngredient[], 2000, 0 as float);
addEnderAlSm(<enderio:item_material:49>, [<ore:dyeBrown>, <ore:egg>, <thermalfoundation:material:768>] as IIngredient[], 1500, 0 as float);
addEnderAlSm(<enderio:item_material:49>, [<ore:dyeBrown>, <ore:egg>, <thermalfoundation:material:769>] as IIngredient[], 1500, 0 as float);