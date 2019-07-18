// Remove Wooden Gear | using that one from Thermal Foundation instead
recipes.remove(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);

// Nether Quarz Dust with Petrotheum Dust
recipes.remove(<appliedenergistics2:material:3>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:3>);

/* Unusable Panels */

// RFTools Machine Frame
recipes.remove(<appliedenergistics2:facade:0>.withTag({damage: 0, item: "rftools:machine_frame"}), true);
mods.jei.JEI.removeAndHide(<appliedenergistics2:facade:0>.withTag({damage: 0, item: "rftools:machine_frame"}), true);