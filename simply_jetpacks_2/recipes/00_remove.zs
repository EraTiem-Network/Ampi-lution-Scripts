import mods.jei.JEI.removeAndHide as hide;


/* Remove Armor Platings */

// Silicon
recipes.remove(<simplyjetpacks:metaitemmods:12>);

// Conductive Iron
recipes.remove(<simplyjetpacks:metaitemmods:13>);
hide(<simplyjetpacks:metaitemmods:13>);

// Electrical Steel
recipes.remove(<simplyjetpacks:metaitemmods:14>);
hide(<simplyjetpacks:metaitemmods:14>);

// Dark Steel
recipes.remove(<simplyjetpacks:metaitemmods:15>);
hide(<simplyjetpacks:metaitemmods:15>);

// Iron
recipes.remove(<simplyjetpacks:metaitemmods:22>);
hide(<simplyjetpacks:metaitemmods:22>);

// Bronze
recipes.remove(<simplyjetpacks:metaitemmods:23>);
hide(<simplyjetpacks:metaitemmods:23>);

// Invar
recipes.remove(<simplyjetpacks:metaitemmods:24>);
hide(<simplyjetpacks:metaitemmods:24>);

// Enderium
recipes.remove(<simplyjetpacks:metaitemmods:25>);
hide(<simplyjetpacks:metaitemmods:25>);


/* Remove Armored Recipes */

// Conductive Iron
recipes.removeByRecipeName("simplyjetpacks:upgraderecipe15");

// Electrical Steel
recipes.removeByRecipeName("simplyjetpacks:upgraderecipe17");

// Energetic
recipes.removeByRecipeName("simplyjetpacks:upgraderecipe19");

// Vibrant
recipes.removeByRecipeName("simplyjetpacks:upgraderecipe21");

