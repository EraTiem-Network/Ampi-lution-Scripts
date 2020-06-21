import crafttweaker.item.IItemStack;

// Replace All recipes with RFTools Machine Frame with TE Machine Frame
replAll(<rftools:machine_frame>, <thermalexpansion:frame>);

// TE Machine Frame to RFTool Base
addShapeless("te_machine_frame_to_rf_base", <rftools:machine_base> * 2, 
    [<thermalexpansion:frame>]
);