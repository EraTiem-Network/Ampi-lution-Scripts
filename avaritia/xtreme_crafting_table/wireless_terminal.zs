import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

/* Item */

// Infinity Booster Card
val max_portable_tank_gelid_cryotheum = <thermalexpansion:tank:0>.withTag({RSControl: 0, ench: [{lvl: 4, id: 30}], Creative: 0, Fluid: {FluidName: "cryotheum", Amount: 1500000}, Level: 4, Lock: 0});


addAvaXtrShaped("infinity_booster_card", <ae2wtlib:infinity_booster_card>, [
    [null, <jaopca:item_singularityredstonealloy>, <thermalfoundation:storage:6>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:6>, <jaopca:item_singularityredstonealloy>, null],
    [null, <thermalfoundation:storage:6>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:7>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:6>, null],
    [null, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:7>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, null],
    [null, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, <thermalfoundation:storage:7>, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, null],
    [<thermaldynamics:duct_16:6>, <thermalfoundation:storage:7>, <thermalfoundation:storage:7>, <thermalfoundation:storage:7>, <avaritia:resource:5>, <thermalfoundation:storage:7>, <thermalfoundation:storage:7>, <thermalfoundation:storage:7>, <thermaldynamics:duct_16:6>],
    [null, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, <thermalfoundation:storage:7>, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, max_portable_tank_gelid_cryotheum, null],
    [null, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:7>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, null],
    [null, <thermalfoundation:storage:6>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:7>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:6>, null],
    [null, <jaopca:item_singularityredstonealloy>, <thermalfoundation:storage:6>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:storage:6>, <jaopca:item_singularityredstonealloy>, null]
]);