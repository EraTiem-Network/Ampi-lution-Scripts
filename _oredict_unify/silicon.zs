import crafttweaker.oredict.IOreDictEntry;
import mods.appliedenergistics2.Inscriber;
import mods.GalacticraftTweaker as GC;

// Remove AE2 from OreDict
<ore:itemSilicon>.remove(<appliedenergistics2:material:5>);

// Replace all AE2 with GC
recipes.replaceAllOccurences(<appliedenergistics2:material:5>, <galacticraftcore:basic_item:2>);

Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <galacticraftcore:basic_item:2>, true, <appliedenergistics2:material:19>);

GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:0> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:1> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:3> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:4> * 3);
GC.removeCircuitFabricatorRecipe(<extraplanets:wafer:5> * 3);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:0> * 3, <minecraft:diamond>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:redstone_lamp>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3, <galacticraftplanets:item_basic_asteroids:0>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:redstone_torch>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:1> * 3, <extraplanets:tier4_items:5>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:comparator>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:3> * 3, <extraplanets:tier5_items:8>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:repeater>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:4> * 3, <extraplanets:tier8_items:6>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:repeater>);

GC.addCircuitFabricatorRecipe(<extraplanets:wafer:5> * 3, <extraplanets:tier7_items:7>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, <minecraft:redstone>, <minecraft:repeater>);

furnace.remove(<appliedenergistics2:material:5>);
furnace.addRecipe(<galacticraftcore:basic_item:2>, <appliedenergistics2:material:2>);
furnace.addRecipe(<galacticraftcore:basic_item:2>, <appliedenergistics2:material:3>);

mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);