import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Fix Infinity Catalyst recipe
remAvaXtr(<avaritia:resource:5>);
addAvaXtrShapeless("infinity_catalyst", <avaritia:resource:5>, [
	<avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:endest_pearl>, <avaritia:resource:7>, <eternalsingularity:eternal_singularity>
] as IIngredient[]);

// remove singularity recipes
hide(<avaritia:singularity:12>);