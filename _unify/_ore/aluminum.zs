import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// remove unnecessary OreDict Entries
<ore:oreAluminium>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreAluminium>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreAluminium>.remove(<galacticraftplanets:venus:6>);
<ore:oreAluminium>.remove(<moreplanets:fronos_aluminum_ore>);
<ore:oreAluminium>.remove(<moreplanets:diona_aluminum_ore>);
<ore:oreAluminium>.remove(<moreplanets:koentus_aluminum_ore>);
<ore:oreAluminium>.remove(<moreplanets:chalos_aluminum_ore>);
<ore:oreAluminium>.remove(<moreplanets:infected_aluminum_ore>);

<ore:oreNaturalAluminum>.remove(<galacticraftcore:basic_block_core:7>);
<ore:oreNaturalAluminium>.remove(<galacticraftplanets:asteroids_block:3>);
<ore:oreNaturalAluminum>.remove(<galacticraftplanets:venus:6>);


/* Ingot */

// OreDict
<ore:ingotAluminum>.remove(<galacticraftcore:basic_item:5>);

// Recipes
remAndHide(<galacticraftcore:basic_item:5>);
replAll(<galacticraftcore:basic_item:5>, <thermalfoundation:material:132>);

// Furnace
remFur(<galacticraftcore:basic_item:5>);
remFur(<thermalfoundation:material:132>);
for item in <ore:oreAluminum>.items {
	addFur(<thermalfoundation:material:132>, item);
}
addFur(<thermalfoundation:material:132>, <moreplanets:fronos_aluminum_ore>);
addFur(<thermalfoundation:material:132>, <moreplanets:diona_aluminum_ore>);
addFur(<thermalfoundation:material:132>, <moreplanets:chalos_aluminum_ore>);
addFur(<thermalfoundation:material:132>, <moreplanets:infected_aluminum_ore>);
addFur(<thermalfoundation:material:132>, <moreplanets:koentus_aluminum_ore>);

/* Block */

// OreDict
<ore:blockAluminium>.remove(<galacticraftcore:basic_block_core:11>);

// Recipes
rem(<galacticraftcore:basic_block_core:11>);


/* Ore */

// AE2 Grindstone
remAE2Gri(<galacticraftcore:basic_block_core:7>);
remAE2Gri(<galacticraftplanets:asteroids_block:3>);
remAE2Gri(<galacticraftplanets:venus:6>);
remAE2Gri(<moreplanets:diona_aluminum_ore>);
remAE2Gri(<moreplanets:infected_aluminum_ore>);
remAE2Gri(<moreplanets:chalos_aluminum_ore>);
remAE2Gri(<moreplanets:fronos_aluminum_ore>);
remAE2Gri(<moreplanets:koentus_aluminum_ore>);

var items = [<galacticraftcore:basic_block_core:7>, <galacticraftplanets:asteroids_block:3>, <galacticraftplanets:venus:6>, <galaxyspace:marsores:5>, <galaxyspace:haumeablocks:3>, <galaxyspace:europablocks:5>, <galaxyspace:barnarda_c_ores:9>, <moreplanets:diona_aluminum_ore>, <moreplanets:infected_aluminum_ore>, <moreplanets:chalos_aluminum_ore>, <moreplanets:fronos_aluminum_ore>, <moreplanets:koentus_aluminum_ore>] as IItemStack[];

for i in items {
	addAE2Gri(<thermalfoundation:material:68>, i, 8);
}


/* Dust */

// OreDict
<ore:dustAluminum>.remove(<galacticraftcore:ic2compat>);
<ore:dustAluminium>.remove(<galacticraftcore:ic2compat>);

// Remove and Hide
remAndHide(<galacticraftcore:ic2compat>);


/* Plate */

// OreDict
<ore:compressedAluminum>.add(<thermalfoundation:material:324>);
<ore:compressedAluminum>.remove(<galacticraftcore:basic_item:8>);
<ore:plateAluminum>.remove(<galacticraftcore:basic_item:8>);

// Galacticraft Compressor
remGalaComp(<galacticraftcore:basic_item:8>);
addGalaComp2(<thermalfoundation:material:324>,
	<thermalfoundation:material:132>, <thermalfoundation:material:132>);

// Recipes
replAll(<galacticraftcore:basic_item:8>, <thermalfoundation:material:324>);

// Remove and Hide
remAndHide(<galacticraftcore:basic_item:8>);