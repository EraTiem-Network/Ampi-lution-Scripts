// Remove Wooden Gear | using that one from Thermal Foundation instead
rem(<appliedenergistics2:material:40>);
remAndHide(<appliedenergistics2:material:40>);

// Nether Quarz Dust with Petrotheum Dust
rem(<appliedenergistics2:material:3>);
remAndHide(<appliedenergistics2:material:3>);

/* Unusable Panels */

// RFTools Machine Frame
remNBT(<appliedenergistics2:facade:0>.withTag({damage: 0, item: "rftools:machine_frame"}));
remAndHideNBT(<appliedenergistics2:facade:0>.withTag({damage: 0, item: "rftools:machine_frame"}));