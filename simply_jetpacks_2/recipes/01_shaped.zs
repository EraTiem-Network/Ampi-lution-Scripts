import crafttweaker.item.IItemStack;


/* Change Armore Platings to More Plates's or Thermal Foundation's Plates */

// Conductive Iron
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:13>, <moreplates:conductive_iron_plate>);

// Electrical Steel
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:14>, <moreplates:electrical_steel_plate>);

// Dark Steel
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:15>, <moreplates:dark_steel_plate>);

// Iron
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:22>, <thermalfoundation:material:32>);

// Bronze
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:23>, <thermalfoundation:material:355>);

// Invar
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:24>, <thermalfoundation:material:354>);

// Enderium
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:25>, <thermalfoundation:material:359>);

/* New Armored Recipes */

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

for i in 0 to 8 {
    recipes.addShaped(recipeNames[i] ~ "_jetpack", outJetpacks[i],
        [
            [plates[i], plates[i], plates[i]],
            [plates[i], inJetpacks[i].marked("mark"), plates[i]],
            [plates[i], plates[i], plates[i]]
        ], 
        function(out, ins, cInfo) {
            return out.withTag(ins.mark.tag);
        },
        null
    );
}