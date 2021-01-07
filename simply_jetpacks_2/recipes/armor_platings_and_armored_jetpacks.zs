import crafttweaker.item.IItemStack;


/* Change Armore Platings to More Plates's or Thermal Foundation's Plates */

// Conductive Iron
replAll(<simplyjetpacks:metaitemmods:4>, <moreplates:conductive_iron_plate>);

// Electrical Steel
replAll(<simplyjetpacks:metaitemmods:5>, <moreplates:electrical_steel_plate>);

// Dark Steel
replAll(<simplyjetpacks:metaitemmods:6>, <moreplates:dark_steel_plate>);

// Iron
replAll(<simplyjetpacks:metaitemmods:16>, <thermalfoundation:material:32>);

// Bronze
replAll(<simplyjetpacks:metaitemmods:17>, <thermalfoundation:material:355>);

// Invar
replAll(<simplyjetpacks:metaitemmods:18>, <thermalfoundation:material:354>);

// Enderium
replAll(<simplyjetpacks:metaitemmods:19>, <thermalfoundation:material:359>);

/* New Armored Recipes */

// Remove Armored Recipes
remByName("simplyjetpacks:upgraderecipe15");
remByName("simplyjetpacks:upgraderecipe17");
remByName("simplyjetpacks:upgraderecipe19");
remByName("simplyjetpacks:upgraderecipe21");

// Create Arrays
val recipeNames = ["conductive_iron", "electrical_steel", "energetic", "vibrant", "leadstone",
    "hardened", "reinforced", "resonant"] as string[];

val plates = [<simplyjetpacks:metaitemmods:12>, <moreplates:conductive_iron_plate>, <moreplates:electrical_steel_plate>,
    <moreplates:dark_steel_plate>, <thermalfoundation:material:32>, <thermalfoundation:material:355>,
    <thermalfoundation:material:354>, <thermalfoundation:material:359>] as IItemStack[];

val inJetpacks = [<simplyjetpacks:itemjetpack:1>, <simplyjetpacks:itemjetpack:2>, <simplyjetpacks:itemjetpack:3>,
    <simplyjetpacks:itemjetpack:4>, <simplyjetpacks:itemjetpack:10>, <simplyjetpacks:itemjetpack:11>,
    <simplyjetpacks:itemjetpack:12>, <simplyjetpacks:itemjetpack:13>] as IItemStack[];

val outJetpacks = [<simplyjetpacks:itemjetpack:5>, <simplyjetpacks:itemjetpack:6>, <simplyjetpacks:itemjetpack:7>,
    <simplyjetpacks:itemjetpack:8>, <simplyjetpacks:itemjetpack:14>, <simplyjetpacks:itemjetpack:15>,
    <simplyjetpacks:itemjetpack:16>, <simplyjetpacks:itemjetpack:17>] as IItemStack[];

// Add Armored Recipe Loop
for i in 0 to 8 {
    addShapedFunc(recipeNames[i] ~ "_jetpack", outJetpacks[i],
        [
            [plates[i], plates[i], plates[i]],
            [plates[i], inJetpacks[i].marked("mark"), plates[i]],
            [plates[i], plates[i], plates[i]]
        ], 
        function(out, ins, cInfo) {
            return out.withTag(ins.mark.tag);
        }
    );
}