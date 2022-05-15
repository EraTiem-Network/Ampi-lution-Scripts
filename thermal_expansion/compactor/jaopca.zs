import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


/* Adjust all plate recipes to 2 inputs */

val items = {
	<extraplanets:tier4_items:5> : <jaopca:item_platecarbon>,
	<extraplanets:tier7_items:5> : <jaopca:item_platecrystal>,
	<extraplanets:tier10_items:5> : <jaopca:item_platedarkiron>,
	<extraplanets:ingot_mercury:0> : <jaopca:item_platemercury>,
	<galacticraftcore:item_basic_moon:0> : <jaopca:item_platemeteoriciron>,
	<extraplanets:tier5_items:5> : <jaopca:item_platepalladium>,
	<extraplanets:tier9_items:5> : <jaopca:item_platetungsten>,
	<extraplanets:ingot_uranium> : <jaopca:item_plateuranium>,
	<extraplanets:tier8_items:5> : <jaopca:item_platezinc>,
	<biomesoplenty:gem:7> : <jaopca:item_plateamber>,
	<biomesoplenty:gem:0> : <jaopca:item_plateamethyst>,
	<forestry:apatite> : <jaopca:item_plateapatite>,
	<extraplanets:tier11_items:0> : <jaopca:item_platebluediamond>,
	<extraplanets:tier8_items:6> : <jaopca:item_platebluegem>,
	<appliedenergistics2:material:1> : <jaopca:item_platechargedcertusquartz>,
	<rftools:dimensional_shard> : <jaopca:item_platedimensionalshard>,
	<quark:biotite> : <jaopca:item_plateenderbiotite>,
	<extraplanets:tier11_items:4> : <jaopca:item_plategreendiamond>,
	<biomesoplenty:gem:5> : <jaopca:item_platemalachite>,
	<biomesoplenty:gem:2> : <jaopca:item_plateperidot>,
	<extraplanets:tier11_items:2> : <jaopca:item_platepurplediamond>,
	<extraplanets:tier11_items:1> : <jaopca:item_platereddiamond>,
	<extraplanets:tier5_items:8> : <jaopca:item_plateredgem>,
	<biomesoplenty:gem:1> : <jaopca:item_plateruby>,
	<biomesoplenty:gem:6> : <jaopca:item_platesapphire>,
	<biomesoplenty:gem:4> : <jaopca:item_platetanzanite>,
	<biomesoplenty:gem:3> : <jaopca:item_platetopaz>,
	<extraplanets:tier7_items:7> : <jaopca:item_platewhitegem>,
	<extraplanets:tier11_items:3> : <jaopca:item_plateyellowdiamond>,
	<tconstruct:ingots:5> : <jaopca:item_platealubrass>,
	<projectred-core:resource_item:104> : <jaopca:item_plateelectrotinealloy>,
	<projectred-core:resource_item:103> : <jaopca:item_plateredalloy>,
	<ore:ingotUnstable> : <jaopca:item_plateunstable>,
	<extrautils2:ingredients:5> : <jaopca:item_platemoon>,
	<ore:gemPrismarine> : <jaopca:item_plateprismarine>
} as IItemStack[IIngredient];

for inputs, output in items {
	for input in inputs.items {
		remTEComp(input);
		addTEComp(output, input * 2, 6000);
	}
}